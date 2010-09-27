-- Race Faction Change - Achievements

DROP TABLE IF EXISTS `player_factionchange_achievements`;
CREATE TABLE `player_factionchange_achievements` (
  `alliance_id` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  `CommentA` varchar(255) NOT NULL,
  `CommentH` varchar(255) NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `player_factionchange_achievements` VALUES
('33', '1358', 'Complete 130 quests in Borean Tundra', 'Complete 150 quests in Borean Tundra'),
('34', '1356', 'Complete 130 quests in Howling Fjord', 'Complete 105 quests in Howling Fjord'),
('35', '1359', 'Complete 115 quests in Dragonblight', 'Complete 130 quests in Dragonblight'),
('37', '1357', 'Complete 85 quests in Grizzly Hills', 'Complete 75 quests in Grizzly Hills'),
('203', '1251', 'In a single Warsong Gulch battle, kill 2 flag carriers before they leave the Silverwing Flag Room', 'In a single Warsong Gulch battle, kill 2 flag carriers before they leave the Warsong Flag Room'),
('220', '873', 'Win Alterac Valley without losing a tower or captain. You must also control all of the Horde\'s towers', 'Win Alterac Valley without losing a tower or captain. You must also control all of the Alliance\'s towers'),
('433', '443', 'Earned the title, Grand Marshal', 'Earned the title, High Warlord'),
('434', '445', 'Earned the title, Field Marshal', 'Earned the title, Warlord'),
('435', '444', 'Earned the title, Commander', 'Earned the title, Lieutenant General'),
('436', '447', 'Earned the title, Lieutenant Commander', 'Earned the title, Champion'),
('437', '448', 'Earned the title, Knight-Champion', 'Earned the title, Centurion'),
('438', '469', 'Earned the title, Knight-Captain', 'Earned the title, Legionnaire'),
('439', '451', 'Earned the title, Knight', 'Earned the title, Stone Guard'),
('440', '452', 'Earned the title, Sergeant Major', 'Earned the title, First Sergeant'),
('441', '450', 'Earned the title, Master Sergeant', 'Earned the title, Senior Sergeant'),
('442', '454', 'Earned the title, Private', 'Earned the title, Scout'),
('470', '468', 'Earned the title, Corporal', 'Earned the title, Grunt'),
('472', '449', 'Earned the title, Knight-Lieutenant', 'Earned the title, Blood Guard'),
('473', '446', 'Earned the title, Marshal', 'Earned the title, General'),
('604', '603', 'Kill 5 Horde players in each of the cities listed below', 'Kill 5 Alliance players in each of the cities listed below'),
('610', '615', 'Kill Thrall', 'Kill King Varian Wrynn'),
('611', '616', 'Kill Cairne Bloodhoof', 'Kill King Magni Bronzebeard'),
('612', '617', 'Kill Lady Sylvanas Windrunner', 'Kill High Priestess Tyrande Whisperwind'),
('613', '618', 'Kill Lor\'themar Theron', 'Kill Prophet Velen'),
('614', '619', 'Slay the leaders of the Horde', 'Slay the leaders of the Alliance'),
('701', '700', 'Obtain an Insignia or Medallion of the Alliance', 'Obtain an Insignia or Medallion of the Horde'),
('707', '706', 'Obtain a Stormpike Battle Charger', 'Obtain a Frostwolf Howler'),
('709', '708', 'Gain exalted reputation with the Stormpike Guard', 'Gain exalted reputation with the Frostwolf Clan'),
('711', '710', 'Gain exalted reputation with The League of Arathor', 'Gain exalted reputation with The Forsaken Defilers'),
('713', '712', 'Gain exalted reputation with the Silverwing Sentinels', 'Gain exalted reputation with the Warsong Outriders'),
('899', '901', 'Earn exalted status with the Kurenai', 'Earn exalted status with The Mag\'har'),
('942', '943', 'Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and the Kurenai', 'Raise your reputation level from unfriendly to exalted with Timbermaw Hold, Sporeggar and The Mag\'har'),
('1012', '1011', 'Gain exalted reputation with the Alliance Vanguard', 'Gain exalted reputation with the Horde Expedition'),
('1028', '1031', 'Desecrate the Horde\'s bonfires in Eastern Kingdoms', 'Desecrate the Alliance\'s bonfires in Eastern Kingdoms'),
('1029', '1032', 'Desecrate the Horde\'s bonfires in Kalimdor', 'Desecrate the Alliance\'s bonfires in Kalimdor'),
('1030', '1033', 'Desecrate the Horde\'s bonfires in Outland', 'Desecrate the Alliance\'s bonfires in Outland'),
('1034', '1036', 'Complete the Flame Warden of Eastern Kingdoms, Kalimdor and Outland achievements', 'Complete the Flame Keeper of Eastern Kingdoms, Kalimdor and Outland achievements'),
('1040', '1041', 'Ruin Hallow\'s End for the Horde by completing Sergeant Hartman\'s quests which involve crashing the wickerman festival and cleaning up the stinkbombs from Southshore', 'Ruin Hallow\'s End for the Alliance by completing Darkcaller Yanka\'s quests which involve going to Southshore, ruining the kegs with rotten eggs and tossing stinkbombs into the town'),
('1151', '224', 'In Alterac Valley, kill 50 enemy players in the Hall of the Stormpike', 'In Alterac Valley, kill 50 enemy players in the Hall of the Frostwolf'),
('1189', '1271', 'Complete 80 quests in Hellfire Peninsula', 'Complete 90 quests in Hellfire Peninsula'),
('1191', '1272', 'Complete 63 quests in Terokkar Forest', 'Complete 68 quests in Terokkar Forest'),
('1192', '1273', 'Complete 75 quests in Nagrand', 'Complete 87 quests in Nagrand'),
('1255', '259', 'Throw a snowball at King Magni Bronzebeard during the Feast of Winter Veil', 'Throw a snowball at Cairne Bloodhoof during the Feast of Winter Veil'),
('1279', '1280', 'Get completely smashed, put on your best perfume, throw a handful of rose petals on Sraaz and then kiss him. You\'ll regret it in the morning', 'Get completely smashed, put on your best perfume, throw a handful of rose petals on Jeremiah Payson and then kiss him. You\'ll regret it in the morning'),
('1676', '1677', 'Complete 700 quests in Eastern Kingdoms', 'Complete 550 quests in Eastern Kingdoms'),
('1678', '1680', 'Complete 700 quests in Kalimdor', 'Complete 685 quests in Kalimdor'),
('1686', '1685', 'Use Mistletoe on the Alliance Brothers during the Feast of Winter Veil', 'Use Mistletoe on the Horde Brothers during the Feast of Winter Veil'),
('1782', '1783', 'Complete each of the cooking daily quests offered by Katherine Lee in Dalaran', 'Complete each of the cooking daily quests offered by Awilo Lon\'gomba in Dalaran'),
('2421', '2420', 'Hide a Brightly Colored Egg in Stormwind City', 'Hide a Brightly Colored Egg in Silvermoon City'),
('3556', '3557', 'Acquire the Spirit of Sharing from a complete Bountiful Table feast at every Alliance capital', 'Acquire the Spirit of Sharing from a complete Bountiful Table feast at every Horde capital');
