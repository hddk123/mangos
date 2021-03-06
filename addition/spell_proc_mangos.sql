/*Althor's Abacus */
DELETE FROM spell_proc_event WHERE entry = 71611;
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45);

/*Judgement of Light & Judgement of Wisdom spell proc fix*/
DELETE FROM `spell_proc_event` WHERE `entry` IN(20185, 20186);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20185, 1, 0, 0, 0, 0, 0, 0, 15, 50, 0),
(20186, 1, 0, 0, 0, 0, 0, 0, 15, 50, 0);

/*http://ru.wowhead.com/item=50343*/
DELETE FROM `spell_proc_event` WHERE `entry` IN(71541, 71540);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71540, 0, 0, 0, 0, 0, 0, 0, 0, 30, 45);

-- (65005) Решимость стихий
DELETE FROM `spell_proc_event` WHERE `entry` IN (65005);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (65005, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 10, 45);

-- (67389) Item - Shaman T9 Restoration Relic (Chain Heal)
DELETE FROM `spell_proc_event` WHERE `entry` IN (67389);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67389, 0x00, 0x0B, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0, 70, 45);

-- (71402) Item - Icecrown 10 Normal Melee Trinket
DELETE FROM `spell_proc_event` WHERE `entry` IN (71402);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71402, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45);

-- (71540) Item - Icecrown 10 Heroic Melee Trinket
DELETE FROM `spell_proc_event` WHERE `entry` IN (71540);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71540, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000, 0, 35, 45);

-- (71602) Item - Icecrown 25 Normal Caster Trinket 1 Base
DELETE FROM `spell_proc_event` WHERE `entry` IN (71602);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71602, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 10, 45);

-- (71606) Item - Icecrown 25 Normal Caster Trinket 2
DELETE FROM `spell_proc_event` WHERE `entry` IN (71606);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71606, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45);

-- (71637) Item - Icecrown 25 Heroic Caster Trinket 2
DELETE FROM `spell_proc_event` WHERE `entry` IN (71637);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71637, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45);

-- (71645) Item - Icecrown 25 Heroic Caster Trinket 1 Base
DELETE FROM `spell_proc_event` WHERE `entry` IN (71645);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (71645, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 10, 45);

/*Item - Death Knight T10 Tank 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70652;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70652','0','15',0x00000008,'0','0',0x00004000,'0','0','0','0');

/*Item - Paladin T10 Protection 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70761;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70761','0','10','0',0x80004000,'0',0x00000000,'0','0','0','0');

/*Item - Paladin T10 Holy 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70756;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('70756','2','10','2097152','0','0','16384','0','0','0','0');

/*Item - Hunter T10 2P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70727;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70727','0','9',0x00000001,'0','0','0','0','0','0','0');

/*Item - Hunter T10 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70730;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70730','0','9',0x00004000,0x00001000,'0','0','0','0','0','0');

/*Item - Shaman T10 Restoration 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70808;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70808','0','11',0x00000100,'0','0','0','2','0','0','0');

/*Item - Druid T10 Balance 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70723;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70723','0','7',0x00000005,'0','0','0','2','0','0','0');

/*Item - Rogue T10 2P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70805;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70805','0','8','0',0x00020000,'0',0x00004000,'0','0','0','0');

/*Item - Rogue T10 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70803;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70803','0','8','4063232','0','0','0','0','0','0','0');

/*Item - Shaman T10 Elemental 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70817;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70817','0','11','0',0x00001000,'0',0x00010000,'0','0','0','0');

/*Item - Shaman T10 Enhancement 2P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70830;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70830','0','11','0',0x00020000,'0',0x00004000,'0','0','0','0');

/*Item - Warlock T10 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70841;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70841','0','5',0x00000004,0x00000100,'0','0','0','0','0','0');

/*Item - Warrior T10 Melee 2P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70854;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('70854','0','5','0',0x00000010,'0','0','0','0','0','0');

/*Item - Shaman T9 Elemental Relic (Lightning Bolt)*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (67386);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67386, 0x00, 0x0B, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 6);

-- (67653) Coliseum 5 Tank Trinket ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (67653);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67653, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0.000000, 0.000000, 45);

-- (67670) Coliseum 5 CasterTrinket ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (67670);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67670, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000, 45);

-- (67672) Coliseum 5 Melee Trinket ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (67672);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67672, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000044, 0x00000000, 0.000000, 0.000000, 45);

-- (67667) Coliseum 5 Healer Trinket ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (67667);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (67667, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- http://getmangos.com/community/showthread.php?14325-FIX-Some-trinkets-proc_events
DELETE FROM `spell_proc_event` WHERE `entry` IN (65005, 67389, 71402, 71540, 71602, 71606, 71637, 71645, 62114, 67670);

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(65005, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(67389, 0x00, 0x0B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71402, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71540, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71602, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71606, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71637, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45),
(71645, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 45);
-- (62114, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 10, 45),
-- (67670, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 10, 45);

/* Impact */
DELETE FROM spell_proc_event WHERE entry IN (11103, 12357, 12358, 64343);
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(11103, 0x00000000, 3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0, 0),
(64343, 0x00000000, 3, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0, 0);

/* Waylay */
DELETE FROM spell_proc_event WHERE entry IN (51692, 51696);
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(51692, 0x00,  8, 0x00000204, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(62114, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 0, 45),
(67670, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 10, 45);

/* Val'anyr, Hammer of Ancient Kings */
DELETE FROM spell_proc_event WHERE entry = 64415;
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(64415, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

DELETE FROM `spell_proc_event` WHERE `entry` IN ('71519', '71562');
INSERT INTO `spell_proc_event` VALUES ('71562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO `spell_proc_event` VALUES ('71519', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60');

DELETE FROM `spell_proc_event` WHERE `entry` IN ('70723', '70808');
INSERT INTO `spell_proc_event` VALUES ('70723',	'72', '7', '5',	'5', '5', '0', '0',	'0', '0', '0', '0', '0', '2', '0', '0', '0');
INSERT INTO `spell_proc_event` VALUES ('70808',	'8', '11', '400', '400', '400', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0');

/* Item - Paladin T10 Holy 4P Bonus */
DELETE FROM `spell_proc_event` WHERE `entry` = 70756;
INSERT INTO `spell_proc_event` VALUES ('70756', '2', '10', '0x00200000', '0x00200000', '0x00200000', '0', '0', '0', '0', '0', '0', '16384', '0', '0', '0', '0');

/* Item - Priest T10 Healer 2P Bonus */
DELETE FROM `spell_proc_event` WHERE `entry` = 70770;
INSERT INTO `spell_proc_event` VALUES ('70770', '2', '6', '0x00000800', '0x00000800', '0x00000800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

/* Item - Shaman T10 Enhancement 2P Bonus */
DELETE FROM `spell_proc_event` WHERE `entry` = 70830;
INSERT INTO `spell_proc_event` VALUES ('70830', '1', '11', '0', '0', '0', '0x00020000', '0x00020000', '0x00020000', '0', '0', '0', '16384', '0', '0', '0', '0');

/* Item - Icecrown 25 Normal & Heroic Dagger Proc */
DELETE FROM `spell_proc_event` WHERE `entry` IN ('71880', '71892');
INSERT INTO `spell_proc_event` VALUES ('71880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0');
INSERT INTO `spell_proc_event` VALUES ('71892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0');

/* Item - Paladin T10 Holy 2P Bonus */
DELETE FROM `spell_proc_event` WHERE `entry` = 70755;
INSERT INTO `spell_proc_event` VALUES ('70755', '2', '10', '0', '0', '0', '0x80004000', '0x80004000', '0x80004000', '0', '0', '0', '16384', '0', '0', '0', '0');

/* Fel synergy from virusav */
DELETE FROM `spell_proc_event` WHERE `entry` = 47230;
INSERT INTO `spell_proc_event` VALUES (47230, 0x7F,  5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

DELETE FROM `spell_proc_event` WHERE `entry`=58872;

--  Chill of the Grave (49149) 
DELETE FROM `spell_proc_event` WHERE `entry` IN (49149);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (49149, 0x00, 0x0F, 0x00000006, 0x00020002, 0x00000000, 0, 0x00000000, 0, 0, 0);

-- (49004) Scent of Blood 
DELETE FROM `spell_proc_event` WHERE entry = 49004;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (49004, 0x00, 0x0F, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000031, 0, 0, 0);

-- (51123) Killing Machine
DELETE FROM `spell_proc_event` WHERE entry = 51123;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (51123, 0x00, 0x0F, 0x00000000, 0x00000000, 0x00000000, 0, 0x00000000, 5, 0, 0);

-- (48988) Bloody Vengeance
DELETE FROM `spell_proc_event` WHERE entry = 48988;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (48988, 0x00, 0x0F, 0x00000000, 0x00000000, 0x00000000, 0, 0x00000002, 0, 0, 0);

-- (49223) Dirge
DELETE FROM `spell_proc_event` WHERE entry = 49223;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (49223, 0x00, 0x0F, 0x00000011, 0x08000000, 0x00000000, 0, 0x00000000, 0, 0, 0);

-- (55666) Desecration
DELETE FROM `spell_proc_event` WHERE entry = 55666;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (55666, 0x00, 0x0F, 0x00000001, 0x08000000, 0x00000000, 0, 0x00000000, 0, 0, 0);

-- (50880) Icy Talons
DELETE FROM `spell_proc_event` WHERE entry = 50880;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES (50880, 0x00, 0x0F, 0x00000000, 0x04000000, 0x00000000, 0x00070000, 0x00000000, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (48492,48494,48495);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(48492, 0, 7, 524288, 0, 2048, 0, 0, 0, 0, 0, 0, 16384, 0, 0, 0, 0),
(48494, 0, 7, 524288, 0, 2048, 0, 0, 0, 0, 0, 0, 16384, 0, 0, 0, 0),
(48495, 0, 7, 524288, 0, 2048, 0, 0, 0, 0, 0, 0, 16384, 0, 0, 0, 0);
