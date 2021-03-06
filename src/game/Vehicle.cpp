/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Common.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Vehicle.h"
#include "Unit.h"
#include "Util.h"
#include "WorldPacket.h"

VehicleKit::VehicleKit(Unit* base, VehicleEntry const* vehicleInfo) : m_vehicleInfo(vehicleInfo), m_pBase(base), m_uiNumFreeSeats(0)
{
    for (uint32 i = 0; i < MAX_VEHICLE_SEAT; ++i)
    {
        uint32 seatId = m_vehicleInfo->m_seatID[i];

        if (!seatId)
            continue;

        if (VehicleSeatEntry const *seatInfo = sVehicleSeatStore.LookupEntry(seatId))
        {
            m_Seats.insert(std::make_pair(i, VehicleSeat(seatInfo)));

            if (seatInfo->IsUsable())
                ++m_uiNumFreeSeats;
        }
    }
}

VehicleKit::~VehicleKit()
{
}

void VehicleKit::RemoveAllPassengers()
{
    for (SeatMap::iterator itr = m_Seats.begin(); itr != m_Seats.end(); ++itr)
    {
        if (Unit *passenger = itr->second.passenger)
            passenger->ExitVehicle();
    }
}

bool VehicleKit::HasEmptySeat(int8 seatId) const
{
    SeatMap::const_iterator seat = m_Seats.find(seatId);

    if (seat == m_Seats.end())
        return false;

    return !seat->second.passenger;
}

Unit *VehicleKit::GetPassenger(int8 seatId) const
{
    SeatMap::const_iterator seat = m_Seats.find(seatId);

    if (seat == m_Seats.end())
        return NULL;

    return seat->second.passenger;
}

int8 VehicleKit::GetNextEmptySeat(int8 seatId, bool next) const
{
    SeatMap::const_iterator seat = m_Seats.find(seatId);

    if (seat == m_Seats.end())
        return -1;

    while (seat->second.passenger || !seat->second.seatInfo->IsUsable())
    {
        if (next)
        {
            ++seat;
            if (seat == m_Seats.end())
                seat = m_Seats.begin();
        }
        else
        {
            if (seat == m_Seats.begin())
                seat = m_Seats.end();
            --seat;
        }

        if (seat->first == seatId)
            return -1; // no available seat
    }

    return seat->first;
}

bool VehicleKit::AddPassenger(Unit *passenger, int8 seatId)
{
    SeatMap::iterator seat;

    if (seatId < 0) // no specific seat requirement
    {
        for (seat = m_Seats.begin(); seat != m_Seats.end(); ++seat)
            if (!seat->second.passenger && (seat->second.seatInfo->IsUsable() || (seat->second.seatInfo->m_flags & SEAT_FLAG_UNCONTROLLED)))
                break;

        if (seat == m_Seats.end()) // no available seat
            return false;
    }
    else
    {
        seat = m_Seats.find(seatId);

        if (seat == m_Seats.end())
            return false;

        if (seat->second.passenger)
            return false;
    }

    seat->second.passenger = passenger;
    passenger->addUnitState(UNIT_STAT_ON_VEHICLE);

    VehicleSeatEntry const *seatInfo = seat->second.seatInfo;

    passenger->m_movementInfo.AddMovementFlag(MOVEFLAG_ONTRANSPORT);
    passenger->m_movementInfo.SetTransportData(m_pBase->GetGUID(),
        seatInfo->m_attachmentOffsetX, seatInfo->m_attachmentOffsetY, seatInfo->m_attachmentOffsetZ,
        seatInfo->m_passengerYaw, getMSTime(), seat->first, seatInfo);

    if (passenger->GetTypeId() == TYPEID_PLAYER)
    {
        ((Player*)passenger)->GetCamera().SetView(m_pBase);

        WorldPacket data(SMSG_FORCE_MOVE_ROOT, 8+4);
        data << passenger->GetPackGUID();
        data << uint32((passenger->m_movementInfo.GetVehicleSeatFlags() & SEAT_FLAG_CAN_CAST) ? 2 : 0);
        passenger->SendMessageToSet(&data, true);
    }

    if (seatInfo->m_flags & SEAT_FLAG_CAN_CONTROL)
    {
        m_pBase->StopMoving();
        m_pBase->GetMotionMaster()->Clear();
        m_pBase->CombatStop(true);
        m_pBase->DeleteThreatList();
        m_pBase->getHostileRefManager().deleteReferences();
        m_pBase->SetCharmerGUID(passenger->GetGUID());
        m_pBase->addUnitState(UNIT_STAT_CONTROLLED);

        passenger->SetCharm(m_pBase);

        if (passenger->GetTypeId() == TYPEID_PLAYER)
        {
            m_pBase->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);

            if (CharmInfo* charmInfo = m_pBase->InitCharmInfo(m_pBase))
            {
                charmInfo->InitVehicleCreateSpells();
                charmInfo->SetReactState(REACT_PASSIVE);
            }

            Player* player = (Player*)passenger;
            player->SetMover(m_pBase);
            player->SetClientControl(m_pBase, 1);
            player->VehicleSpellInitialize();
        }

        ((Creature*)m_pBase)->AIM_Initialize();
    }

    passenger->SendMonsterMoveTransport(m_pBase, SPLINETYPE_FACINGANGLE, SPLINEFLAG_UNKNOWN5, 0, 0.0f);

    if (m_pBase->GetTypeId() == TYPEID_UNIT)
        RelocatePassengers(m_pBase->GetPositionX(), m_pBase->GetPositionY(), m_pBase->GetPositionZ(), m_pBase->GetOrientation());

    UpdateFreeSeatCount();
    return true;
}

void VehicleKit::RemovePassenger(Unit *passenger)
{
    SeatMap::iterator seat;

    for (seat = m_Seats.begin(); seat != m_Seats.end(); ++seat)
        if (seat->second.passenger == passenger)
            break;

    if (seat == m_Seats.end())
        return;

    seat->second.passenger = NULL;
    passenger->clearUnitState(UNIT_STAT_ON_VEHICLE);

    passenger->m_movementInfo.ClearTransportData();
    passenger->m_movementInfo.RemoveMovementFlag(MOVEFLAG_ONTRANSPORT);

    if (seat->second.seatInfo->m_flags & SEAT_FLAG_CAN_CONTROL)
    {
        passenger->SetCharm(NULL);
        passenger->RemoveSpellsCausingAura(SPELL_AURA_CONTROL_VEHICLE);

        m_pBase->SetCharmerGUID(0);
        m_pBase->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PLAYER_CONTROLLED);
        m_pBase->clearUnitState(UNIT_STAT_CONTROLLED);

        if (passenger->GetTypeId() == TYPEID_PLAYER)
        {
            Player* player = (Player*)passenger;
            player->SetMover(NULL);
            player->SetClientControl(m_pBase, 0);
            player->RemovePetActionBar();
        }

        ((Creature*)m_pBase)->AIM_Initialize();
    }

    if (passenger->GetTypeId() == TYPEID_PLAYER)
    {
        ((Player*)passenger)->GetCamera().ResetView();

        WorldPacket data(SMSG_FORCE_MOVE_UNROOT, 8+4);
        data << passenger->GetPackGUID();
        data << uint32(0);
        passenger->SendMessageToSet(&data, true);
    }

    UpdateFreeSeatCount();
}

void VehicleKit::Reset()
{
    UpdateFreeSeatCount();
}

void VehicleKit::UpdateFreeSeatCount()
{
    m_uiNumFreeSeats = 0;

    for (SeatMap::const_iterator itr = m_Seats.begin(); itr != m_Seats.end(); ++itr)
    {
        if (!itr->second.passenger && itr->second.seatInfo->IsUsable())
            ++m_uiNumFreeSeats;
    }

    uint32 flag = m_pBase->GetTypeId() == TYPEID_PLAYER ? UNIT_NPC_FLAG_PLAYER_VEHICLE : UNIT_NPC_FLAG_SPELLCLICK;

    if (m_uiNumFreeSeats)
        m_pBase->SetFlag(UNIT_NPC_FLAGS, flag);
    else
        m_pBase->RemoveFlag(UNIT_NPC_FLAGS, flag);
}

void VehicleKit::RelocatePassengers(float x, float y, float z, float ang)
{
    for (SeatMap::const_iterator itr = m_Seats.begin(); itr != m_Seats.end(); ++itr)
    {
        if (Unit *passenger = itr->second.passenger)
        {
            float px = x + passenger->m_movementInfo.GetTransportPos()->x;
            float py = y + passenger->m_movementInfo.GetTransportPos()->y;
            float pz = z + passenger->m_movementInfo.GetTransportPos()->z;
            float po = ang + passenger->m_movementInfo.GetTransportPos()->o;

            passenger->SetPosition(px, py, pz, po);
        }
    }
}

VehicleSeatEntry const* VehicleKit::GetSeatInfo(Unit* passenger)
{
    for (SeatMap::iterator itr = m_Seats.begin(); itr != m_Seats.end(); ++itr)
    {
        if (Unit *_passenger = itr->second.passenger)
            if (_passenger = passenger)
                return itr->second.seatInfo;
    }
    return NULL;
}
