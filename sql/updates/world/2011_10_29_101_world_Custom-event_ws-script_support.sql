-- /*#########################################################
-- ###########################################################
-- ##         WS script 2011 -- BOSS ASIRIUS & WoW Rean     ##
-- ##                    ..:::::::::..                      ##
-- ##                ..:::aad8888888baa:::..                ##
-- ##             .::::d:?88888888888?::8b::::.             ##
-- ##           .:::d8888:?88888888??a888888b:::.           ##
-- ##         .:::d8888888a8888888aa8888888888b:::.         ##
-- ##        ::::dP::::::::88--WS--888::::::::Yb::::        ##
-- ##       ::::dP:::::::::Y888888888P:::::::::Yb::::       ##
-- ##      ::::d8:::::::::::Y8888888P:::::::::::8b::::      ##
-- ##     .::::88::::::::::::Y88888P::::::::::::88::::.     ##
-- ##     :::::Y8baaaaaaaaaa88P:T:Y88aaaaaaaaaad8P:::::     ##
-- ##     :::::::Y88888888888P::|::Y88888888888P:::::::     ##
-- ##     ::::::::::::::::888:::|:::888::::::::::::::::     ##
-- ##     .:::::::::::::::8888888888888b::::::::::::::.     ##
-- ##      :::::::::::::::88888888888888::::::::::::::      ##
-- ##       :::::::::::::d88888888888888:::::::::::::'      ##
-- ##        ::::::::::::88::88::88:::88::::::::::::'       ##
-- ##         `::::::::::88::88::88:::88::::::::::'         ##
-- ##           `::::::::88::88::P::::88::::::::'           ##
-- ##             `::::::88::88:::::::88::::::'             ##
-- ##                ``:::::::::::::::::::''                ##
-- ##                     `:::::::::''                      ##
-- ##                                                       ##
-- ###########################################################
-- #########################################################*/

-- --------------------------------------------------------------
-- Evento Asirius By WS para WoW Rean ---------------------------
-- --------------------------------------------------------------
INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000005, 0, 0, 0, 0, 0, 20510, 0, 0, 0, 'Asirius', 'Señor del cielo', 'WS_CORE', 0, 83, 83, 2, 16, 16, 0, 1, 1.42857, 1.2, 3, 468, 702, 0, 175, 74.8, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 374, 562, 140, 2, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15847, 18351, 18435, 18564, 0, 0, 0, 0, 0, 0, 1273511, 1273511, '', 0, 3, 800, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 803160063, 0, 'boss_asirius', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000006, 0, 0, 0, 0, 0, 19135, 0, 0, 0, 'Defiler', 'Guardian Sky', 'WS-CORE', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 0.7, 3, 244, 366, 0, 110, 40, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 195, 293, 73, 2, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31914, 31475, 33834, 0, 0, 0, 0, 0, 0, 0, 3780, 3780, '', 0, 3, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 803160063, 0, 'dragones_negros', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000018, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'Flama', 'WS_CORE', 'WS_CORE', 0, 1, 1, 2, 35, 35, 0, 1, 1.14286, 0.4, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_summon', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000013, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 'Meteor Asirius', 'evento asirius', 'WS_CORE', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 0.4, 0, 420, 630, 0, 157, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_spell_meteor_strike', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000012, 0, 0, 0, 0, 0, 169, 15880, 0, 0, 'Meteor Asirius', 'evento asirius', 'WS_CORE', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 0.4, 0, 420, 630, 0, 157, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_meteor_flame', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000011, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 'Meteor Asirius', 'evento asirius', 'WS_CORE', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 0.4, 0, 420, 630, 0, 157, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_meteor_strike', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000015, 0, 0, 0, 0, 0, 25632, 25633, 0, 0, 'Esbrirro de Brutallus', '', 'WS_CORE', 0, 79, 80, 2, 1885, 1885, 0, 1, 1.14286, 2, 0, 420, 630, 0, 200, 15, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 336, 504, 126, 1, 0, 34838, 34838, 0, 0, 0, 0, 0, 0, 0, 49922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2216, 2216, '', 0, 3, 100, 90, 30, 0, 0, 0, 0, 0, 0, 0, 0, 3, 590, 0, 41, 'mob_brutallus2_clone', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000014, 0, 0, 0, 0, 0, 22711, 0, 0, 0, 'Brutallus', 'Señor del Averno', 'WS_CORE', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0.9, 3, 468, 702, 0, 157, 50, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 185, 277, 70, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26662, 45141, 45150, 45185, 0, 0, 0, 0, 0, 0, 2500000, 2500000, '', 0, 3, 600, 1, 1, 0, 0, 0, 0, 0, 0, 0, 224, 1, 0, 803209215, 41, 'boss_brutallus2', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000016, 0, 0, 0, 0, 0, 19135, 0, 0, 0, 'Defiler', 'Guardian Sky', 'WS_CORE(imagen)', 0, 80, 80, 0, 2010, 2010, 0, 2, 1.14286, 1.2, 0, 420, 630, 0, 158, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 2, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 800, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_Asirius_vuelo', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000017, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'npc_cotrol2 (asirius)', 'WS_CORE', 'WS_CORE', 0, 1, 1, 2, 14, 14, 0, 1, 1.14286, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 222, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_fin_asirius', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3679499, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'npc_cotrol2', 'WS_CORE', 'WS_CORE', 0, 1, 1, 2, 14, 14, 0, 1, 1.14286, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 222, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_cotrol2', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000022, 0, 0, 0, 0, 0, 28227, 0, 0, 0, 'Lisa', 'Evento Asirius', 'WS_CORE', 0, 80, 80, 0, 475, 475, 0, 1, 1.14286, 1, 0, 468, 702, 0, 176, 30.1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 252, 252, 68, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 832, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_lisa_ali', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000020, 0, 0, 0, 0, 0, 24991, 0, 0, 0, 'Angel invocada', '', 'WS_CORE', 0, 80, 80, 2, 475, 475, 0, 1, 1.14286, 1, 1, 420, 630, 0, 157, 2.1, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 336, 504, 126, 2, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7, 50, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617299803, 0, 'mob_angeles_lisa', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000021, 0, 0, 0, 0, 0, 24991, 0, 0, 0, 'Angel invocada', '', 'WS_CORE', 0, 80, 80, 2, 475, 475, 0, 1, 1.14286, 1, 1, 420, 630, 0, 157, 2.1, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 336, 504, 126, 2, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7, 50, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617299803, 0, 'mob_angeles_lisa', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000023, 0, 0, 0, 0, 0, 28227, 0, 0, 0, 'Lisa', 'Evento Asirius', 'WS_CORE', 0, 80, 80, 0, 475, 475, 0, 1, 1.14286, 1, 0, 468, 702, 0, 176, 30.1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 252, 252, 68, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 20, 832, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_lisa_horda', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (5000019, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'npc_cotrol3 (yog)', 'WS_CORE', 'WS_CORE', 0, 1, 1, 2, 14, 14, 0, 1, 1.14286, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 222, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_cotrol3', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470000, 3470001, 3470002, 3470003, 0, 38121, 30343, 0, 0, 0, 'sicarius', 'WS-CORE', 'WS-CORE', 0, 83, 83, 2, 21, 21, 0, 1.5, 1, 1.4, 3, 342, 512, 0, 128, 49, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 1, 3, 300, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 801849343, 1, 'boss_sicarius', 11723);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (80037, 0, 0, 0, 0, 0, 28227, 0, 0, 0, 'Lisa', 'Evento Asirius', 'WS_CORE', 0, 80, 80, 0, 2010, 2010, 2, 1, 1.14286, 1, 0, 468, 702, 0, 176, 30.1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 252, 252, 68, 2, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 356.63, 832, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470001, 0, 0, 0, 0, 38121, 30343, 0, 0, 0, 'sicarius (1)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 72, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 3273.15, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470002, 0, 0, 0, 36855, 0, 30343, 0, 0, 0, 'sicarius (2)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 88, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 1500.2, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470003, 0, 0, 0, 36855, 0, 30343, 0, 0, 0, 'sicarius (3)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 105, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 6546.31, 1500, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470004, 3470005, 0, 0, 0, 0, 30885, 0, 0, 0, 'Crias de araña reina', 'WS-CORE', 'WS-CORE', 0, 82, 82, 0, 14, 14, 0, 0.888888, 1.14286, 1.4, 1, 315, 473, 0, 118, 83.2, 1500, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 252, 378, 94, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74393, 74395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 44.7576, 30, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 'mob_crias', 11723);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470005, 0, 0, 0, 0, 0, 30885, 0, 0, 0, 'Crias de araña reina (1)', 'WS-CORE', 'WS-CORE', 0, 82, 82, 0, 14, 14, 0, 0.888888, 1.14286, 1.4, 1, 315, 473, 0, 118, 125.6, 1500, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 252, 378, 94, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74393, 74395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 164.111, 30, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------------
-- Evento Asirius gameobjectos        ---------------------------
-- --------------------------------------------------------------
INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606123, 203034, 509, 1, 1, -10181.1, 1276.39, -8.40261, 1.18845, 0, 0, 0.559865, 0.828584, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606125, 203034, 509, 1, 1, -10161.3, 1183.25, -5.66663, 3.51715, 0, 0, 0.982421, -0.186677, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606127, 203034, 509, 1, 1, -10104.8, 1283.32, -7.04666, 4.55858, 0, 0, 0.759342, -0.650692, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606129, 203034, 509, 1, 1, -10203, 1302.82, -7.02735, 3.92241, 0, 0, 0.924754, -0.380566, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606172, 182817, 509, 1, 1, -10189.1, 1391.22, -5.98723, 5.91721, 0, 0, 0.181969, -0.983304, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606174, 182817, 509, 1, 1, -10190.8, 1408.55, -4.31324, 6.1057, 0, 0, 0.0886241, -0.996065, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606176, 182817, 509, 1, 1, -10192.3, 1426.81, -4.57568, 6.25886, 0, 0, 0.0121637, -0.999926, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606178, 182817, 509, 1, 1, -10208.3, 1433.83, -4.82321, 1.42866, 0, 0, 0.655111, 0.755533, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606180, 182817, 509, 1, 1, -10223.4, 1429.15, -4.97021, 1.57396, 0, 0, 0.708223, 0.705989, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606182, 182817, 509, 1, 1, -10238.4, 1434.24, -4.57984, 1.14984, 0, 0, 0.543768, 0.839236, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606184, 182817, 509, 1, 1, -10253.6, 1444.29, -4.84257, 1.13021, 0, 0, 0.535503, 0.844534, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606192, 182817, 509, 1, 1, -10305.8, 1398.41, -6.43458, 5.50094, 0, 0, 0.381225, -0.924482, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606194, 182817, 509, 1, 1, -10309.1, 1383.15, -6.74503, 2.70885, 0, 0, 0.976683, 0.214685, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606196, 182817, 509, 1, 1, -10309.8, 1365.19, -6.97318, 3.77307, 0, 0, 0.950567, -0.310519, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606198, 182817, 509, 1, 1, -10295.4, 1353.7, -7.86994, 4.2129, 0, 0, 0.859936, -0.510401, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606200, 182817, 509, 1, 1, -10281.1, 1344.48, -5.81212, 4.04404, 0, 0, 0.899914, -0.436067, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606202, 182817, 509, 1, 1, -10236.9, 1348.28, -6.14524, 5.0415, 0, 0, 0.581719, -0.81339, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606204, 182817, 509, 1, 1, -10300.8, 1446.41, 18.8713, 5.15696, 0, 0, 0.533823, -0.845596, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606206, 182817, 509, 1, 1, -10310.2, 1421.56, 13.6076, 5.34938, 0, 0, 0.450124, -0.892966, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606208, 182817, 509, 1, 1, -10330.7, 1395.54, 12.4368, 6.21488, 0, 0, 0.0341441, -0.999417, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606210, 182817, 509, 1, 1, -10272.8, 1453.38, 6.62047, 2.00279, 0, 0, 0.842225, 0.539126, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606212, 182817, 509, 1, 1, -10252.7, 1465.94, 2.86132, 1.26059, 0, 0, 0.589384, 0.807853, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606214, 182817, 509, 1, 1, -10335.3, 1370.12, 19.5426, 0.532527, 0, 0, 0.263128, 0.964761, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606216, 182817, 509, 1, 1, -10194.3, 1447.18, 2.77774, 1.27394, 0, 0, 0.594763, 0.803901, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606218, 182817, 509, 1, 1, -10216.7, 1451.7, 6.32564, 4.55141, 0, 0, 0.761671, -0.647964, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606220, 182817, 509, 1, 1, -10226.3, 1457.98, 20.9724, 4.58283, 0, 0, 0.751399, -0.659848, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606222, 182817, 509, 1, 1, -10241, 1455.77, 5.45137, 4.74383, 0, 0, 0.695903, -0.718136, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606224, 182817, 509, 1, 1, -10303.5, 1340.76, 8.86576, 4.42968, 0, 0, 0.799676, -0.600432, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606226, 182817, 509, 1, 1, -10322.2, 1348.8, 6.10389, 4.09196, 0, 0, 0.88921, -0.4575, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606348, 179694, 509, 1, 1, -10333.4, 1243.43, 27.2302, 3.03401, 0, 0, 0.998554, 0.0537644, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606352, 179694, 509, 1, 1, -10349.5, 1247.97, 26.038, 2.59183, 0, 0, 0.962458, 0.271431, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606354, 179694, 509, 1, 1, -10355.1, 1252.64, 26.0199, 2.42297, 0, 0, 0.93614, 0.351629, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606356, 179694, 509, 1, 1, -10361, 1260.13, 25.1453, 2.13709, 0, 0, 0.8765, 0.481401, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606358, 179694, 509, 1, 1, -10364.5, 1266.55, 24.6282, 1.90932, 0, 0, 0.816118, 0.577886, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606360, 179694, 509, 1, 1, -10365.2, 1274.71, 25.8576, 1.44594, 0, 0, 0.661613, 0.749845, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606362, 179694, 509, 1, 1, -10363.6, 1283.56, 26.8531, 1.2056, 0, 0, 0.566953, 0.82375, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606364, 179694, 509, 1, 1, -10360.6, 1291.72, 26.2311, 1.22131, 0, 0, 0.573405, 0.819272, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606366, 179694, 509, 1, 1, -10357.7, 1298.66, 26.0638, 1.07523, 0, 0, 0.512088, 0.858933, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606370, 179694, 509, 1, 1, -10347.7, 1314.12, 26.6543, 0.80191, 0, 0, 0.390298, 0.920689, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606372, 179694, 509, 1, 1, -10341.2, 1318.14, 28.3287, 0.358945, 0, 0, 0.17851, 0.983938, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606374, 179694, 509, 1, 1, -10332, 1320.01, 26.13, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606376, 179694, 509, 1, 1, -10323.1, 1321.6, 25.5221, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606378, 179694, 509, 1, 1, -10316, 1321.16, 26.091, 0.0699177, 0, 0, 0.0349517, 0.999389, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606380, 179694, 509, 1, 1, -10275.3, 1249.93, 23.8501, 3.05522, 0, 0, 0.999068, 0.0431733, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606382, 179694, 509, 1, 1, -10282, 1251.05, 23.9708, 3.239, 0, 0, 0.998814, -0.0486857, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606384, 179694, 509, 1, 1, -10288, 1251.36, 24.603, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606386, 179694, 509, 1, 1, -10295.3, 1250.9, 24.1448, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606388, 179694, 509, 1, 1, -10302, 1249.73, 25.1413, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606390, 179694, 509, 1, 1, -10308.1, 1248.02, 25.4487, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606392, 179694, 509, 1, 1, -10313.6, 1246.4, 25.2466, 3.53117, 0, 0, 0.981089, -0.19356, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606394, 179694, 509, 1, 1, -10319.5, 1244.3, 25.5322, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606396, 179694, 509, 1, 1, -10326.2, 1243.63, 26.4719, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606398, 179694, 509, 1, 1, -10335.7, 1320.27, 27.3189, 0.136678, 0, 0, 0.0682858, 0.997666, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606400, 179694, 509, 1, 1, -10310.3, 1319.77, 24.7397, 6.03895, 0, 0, 0.121817, -0.992553, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606402, 179694, 509, 1, 1, -10281.1, 1346.38, -6.74055, 2.57927, 0, 0, 0.960734, 0.277472, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606404, 179694, 509, 1, 1, -10290.3, 1351.22, -7.86942, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606406, 179694, 509, 1, 1, -10300.6, 1353.11, -7.05444, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606408, 179694, 509, 1, 1, -10308.1, 1363.59, -6.9729, 2.24155, 0, 0, 0.900437, 0.434986, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606410, 179694, 509, 1, 1, -10308.1, 1380.95, -6.92396, 2.01771, 0, 0, 0.846222, 0.53283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606412, 179694, 509, 1, 1, -10303.4, 1398.94, -7.14548, 1.841, 0, 0, 0.795903, 0.605424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606414, 179694, 509, 1, 1, -10245.2, 1434.89, -5.588, 5.54415, 0, 0, 0.361168, -0.932501, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606416, 179694, 509, 1, 1, -10231.8, 1426.6, -5.53652, 5.72871, 0, 0, 0.273698, -0.961816, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606418, 179694, 509, 1, 1, -10222.7, 1425.2, -4.98285, 6.19995, 0, 0, 0.0416041, -0.999134, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606420, 179694, 509, 1, 1, -10207.6, 1430.47, -4.96394, 5.92899, 0, 0, 0.176172, -0.984359, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606422, 179694, 509, 1, 1, -10196.1, 1426.78, -4.90458, 5.4067, 0, 0, 0.424348, -0.905499, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606424, 179694, 509, 1, 1, -10194.3, 1407.57, -4.7889, 5.08862, 0, 0, 0.562399, -0.826866, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606426, 179694, 509, 1, 1, -10235, 1349.59, -6.85398, 2.63032, 0, 0, 0.967502, 0.252862, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606428, 4406, 509, 1, 1, -10192.2, 1322.86, -7.793, 4.93624, 0, 0, 0.623702, -0.781662, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606430, 4406, 509, 1, 1, -10177.5, 1332.89, -8.47321, 0.408421, 0, 0, 0.202794, 0.979221, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606432, 4406, 509, 1, 1, -10169.9, 1336.22, -5.95863, 0.824682, 0, 0, 0.400755, 0.916185, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606434, 4406, 509, 1, 1, -10161, 1362.23, -5.89868, 0.903222, 0, 0, 0.436415, 0.899745, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606436, 4406, 509, 1, 1, -10148.1, 1365.2, -5.84118, 6.18895, 0, 0, 0.0470992, -0.99889, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606438, 4406, 509, 1, 1, -10127.6, 1349.43, -5.86526, 2.03812, 0, 0, 0.851616, 0.524165, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606440, 4406, 509, 1, 1, -10128.1, 1348.27, -5.89412, 4.32363, 0, 0, 0.830373, -0.557208, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606442, 4406, 509, 1, 1, -10129.4, 1345.15, -6.23512, 4.3197, 0, 0, 0.831466, -0.555576, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606444, 4406, 509, 1, 1, -10129, 1346.27, -6.18032, 1.24487, 0, 0, 0.583016, 0.812461, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606446, 4406, 509, 1, 1, -10127.7, 1346.49, -5.98982, 0.168876, 0, 0, 0.0843375, 0.996437, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606448, 4406, 509, 1, 1, -10138, 1329.52, -2.85722, 4.82629, 0, 0, 0.665713, -0.746207, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606450, 4406, 509, 1, 1, -10129.7, 1311.27, -7.71463, 4.67706, 0, 0, 0.719485, -0.694508, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606452, 4406, 509, 1, 1, -10135.3, 1290.06, -5.83041, 4.38254, 0, 0, 0.813603, -0.581421, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606454, 4406, 509, 1, 1, -10134.3, 1284.5, -6.05379, 0.0392895, 0, 0, 0.0196435, 0.999807, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606456, 4406, 509, 1, 1, -10133.4, 1281.01, -5.328, 4.87342, 0, 0, 0.647946, -0.761687, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606458, 4406, 509, 1, 1, -10136.1, 1281.87, -6.15563, 2.82745, 0, 0, 0.98769, 0.156424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606460, 4406, 509, 1, 1, -10137.5, 1279.41, -6.52834, 4.19797, 0, 0, 0.86372, -0.503972, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606462, 4406, 509, 1, 1, -10143.6, 1279.48, -8.36849, 3.33011, 0, 0, 0.995561, -0.094119, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606464, 4406, 509, 1, 1, -10159.8, 1270.85, -6.4063, 3.43614, 0, 0, 0.989175, -0.146741, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606466, 4406, 509, 1, 1, -10170.5, 1256.01, -7.23258, 3.76993, 0, 0, 0.951053, -0.309028, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606468, 4406, 509, 1, 1, -10178.3, 1252.02, -5.69267, 3.33796, 0, 0, 0.995184, -0.0980283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606470, 4406, 509, 1, 1, -10190.8, 1254.01, -6.37728, 2.63111, 0, 0, 0.967602, 0.252481, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606472, 4406, 509, 1, 1, -10198.1, 1262.65, -4.19504, 2.11667, 0, 0, 0.87154, 0.490324, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606474, 4406, 509, 1, 1, -10200.8, 1272.41, -5.11533, 1.60616, 0, 0, 0.719499, 0.694494, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606476, 4406, 509, 1, 1, -10199.5, 1281.26, -4.7296, 1.17812, 0, 0, 0.555579, 0.831464, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606478, 4406, 509, 1, 1, -10192.6, 1293.88, -6.8304, 1.08387, 0, 0, 0.515795, 0.856712, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606480, 4406, 509, 1, 1, -10181.1, 1292.37, -7.18782, 0.208152, 0, 0, 0.103888, 0.994589, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606482, 4406, 509, 1, 1, -10168.9, 1292.03, -9.07491, 0.000020504, 0, 0, 0.000010252, 1, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606484, 4406, 509, 1, 1, -10170, 1302.91, -9.18295, 1.62579, 0, 0, 0.726282, 0.687397, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606486, 4406, 509, 1, 1, -10157.4, 1309.13, -9.04332, 0.19637, 0, 0, 0.0980274, 0.995184, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606488, 4406, 509, 1, 1, -10145.6, 1324.16, -5.41769, 2.4269, 0, 0, 0.936829, 0.349789, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606801, 179694, 509, 1, 1, -10238.1, 1332.57, 3.99987, 1.35276, 0, 0, 0.625976, 0.779842, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606803, 179694, 509, 1, 1, -10238, 1324.97, 6.13993, 1.46665, 0, 0, 0.669343, 0.742954, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606805, 179694, 509, 1, 1, -10238.4, 1320.2, 10.2531, 1.50199, 0, 0, 0.682367, 0.73101, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606807, 179694, 509, 1, 1, -10237.6, 1313.01, 12.966, 1.58053, 0, 0, 0.71054, 0.703657, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606809, 179694, 509, 1, 1, -10235.3, 1304.57, 14.2494, 1.67478, 0, 0, 0.742898, 0.669405, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606811, 179694, 509, 1, 1, -10232.2, 1300, 17.974, 1.89862, 0, 0, 0.813013, 0.582246, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606813, 179694, 509, 1, 1, -10227.7, 1294.6, 21.1327, 2.20649, 0, 0, 0.892675, 0.450701, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606815, 179694, 509, 1, 1, -10224.4, 1288.15, 23.1401, 1.49571, 0, 0, 0.680067, 0.73315, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606817, 179694, 509, 1, 1, -10224.6, 1280.06, 25.7384, 1.52712, 0, 0, 0.691499, 0.722378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606819, 179694, 509, 1, 1, -10225.6, 1271.84, 26.319, 1.43288, 0, 0, 0.656702, 0.75415, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606821, 179694, 509, 1, 1, -10226, 1264.79, 25.1425, 1.41717, 0, 0, 0.650759, 0.759284, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606823, 179694, 509, 1, 1, -10228, 1257.61, 24.6053, 1.23653, 0, 0, 0.57962, 0.814887, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606825, 179694, 509, 1, 1, -10230.8, 1250.14, 25.7983, 1.01661, 0, 0, 0.486699, 0.87357, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606827, 179694, 509, 1, 1, -10234.2, 1243.7, 27.2683, 1.0441, 0, 0, 0.498659, 0.866798, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606829, 179694, 509, 1, 1, -10237.3, 1235.94, 30.4322, 0.892521, 0, 0, 0.431595, 0.902067, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606831, 179694, 509, 1, 1, -10241.2, 1233.27, 31.0267, 5.97798, 0, 0, 0.152013, -0.988378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606833, 179694, 509, 1, 1, -10249.4, 1238.24, 26.0951, 5.90415, 0, 0, 0.188385, -0.982095, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606835, 179694, 509, 1, 1, -10257.4, 1239.6, 28.155, 6.18689, 0, 0, 0.0481276, -0.998841, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606837, 179694, 509, 1, 1, -10236.5, 1238.73, 30.1317, 0.911368, 0, 0, 0.440077, 0.89796, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606839, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 5.51222, 0, 0, 0.376004, -0.926618, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606841, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 1.89861, 0, 0, 0.813011, 0.582249, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606843, 179694, 509, 1, 1, -10197.7, 1301.54, -7.04079, 0.308183, 0, 0, 0.153482, 0.988151, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606845, 179694, 509, 1, 1, -10186.9, 1273.73, -5.97028, 3.91395, 0, 0, 0.926355, -0.37665, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606847, 179694, 509, 1, 1, -10175.9, 1273.99, -9.03747, 1.53969, 0, 0, 0.696024, 0.718019, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606849, 179694, 509, 1, 1, -10124.8, 1296.24, -9.01192, 3.09949, 0, 0, 0.999778, 0.0210475, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606851, 179694, 509, 1, 1, -10122.1, 1293.73, -8.73419, 0.722094, 0, 0, 0.353254, 0.935528, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606853, 179694, 509, 1, 1, -10106.5, 1293.22, -9.55716, 2.55993, 0, 0, 0.958006, 0.286748, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606855, 179694, 509, 1, 1, -10110.5, 1298.94, -9.52436, 1.90569, 0, 0, 0.815067, 0.579366, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606857, 179694, 509, 1, 1, -10113.2, 1302.64, -8.65284, 4.32708, 0, 0, 0.829412, -0.558637, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606859, 179694, 509, 1, 1, -10115.2, 1295.63, -9.53151, 4.82345, 0, 0, 0.666773, -0.745261, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606861, 179694, 509, 1, 1, -10126.1, 1295.38, -8.7532, 3.07594, 0, 0, 0.999461, 0.0328211, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606863, 179694, 509, 1, 1, -10103.1, 1300.04, -9.01217, 2.37851, 0, 0, 0.928092, 0.372352, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606865, 179694, 509, 1, 1, -10098.9, 1295.94, -9.54566, 1.4431, 0, 0, 0.660549, 0.750783, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606867, 179694, 509, 1, 1, -10098.6, 1299.41, -9.25327, 3.1592, 0, 0, 0.999961, -0.00880258, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606869, 179694, 509, 1, 1, -10105, 1298.59, -9.30769, 4.80068, 0, 0, 0.675213, -0.737623, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606871, 179694, 509, 1, 1, -10126.3, 1339.09, -5.7753, 6.19633, 0, 0, 0.0434128, -0.999057, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (606209, 203034, 509, 1, 1, -10181.6, 1374.2, -6.25406, 5.07041, 0, 0, 0.569901, -0.821713, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706109, 203034, 509, 1, 1, -10181.6, 1374.2, -6.25406, 5.07041, 0, 0, 0.569901, -0.821713, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706111, 203034, 509, 1, 1, -10220.5, 1343.36, -8.27309, 5.44505, 0, 0, 0.40691, -0.913468, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706113, 203034, 509, 1, 1, -10216.8, 1210.7, -6.70373, 0.302428, 0, 0, 0.150638, 0.988589, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706117, 203034, 509, 1, 1, -10186.7, 1205.87, -7.37962, 1.64712, 0, 0, 0.733571, 0.679613, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706119, 203034, 509, 1, 1, -10123.4, 1343.28, -5.69448, 4.14154, 0, 0, 0.877594, -0.479405, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706121, 203034, 509, 1, 1, -10129.6, 1285.67, -6.49858, 1.61884, 0, 0, 0.723888, 0.689917, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706123, 203034, 509, 1, 1, -10181.1, 1276.39, -8.40261, 1.18845, 0, 0, 0.559865, 0.828584, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706125, 203034, 509, 1, 1, -10161.3, 1183.25, -5.66663, 3.51715, 0, 0, 0.982421, -0.186677, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706127, 203034, 509, 1, 1, -10104.8, 1283.32, -7.04666, 4.55858, 0, 0, 0.759342, -0.650692, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706129, 203034, 509, 1, 1, -10203, 1302.82, -7.02735, 3.92241, 0, 0, 0.924754, -0.380566, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (907357, 203006, 509, 1, 1, -10205.6, 1360.84, -6.25839, 5.22386, 0, 0, 0.505242, -0.862978, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706172, 182817, 509, 1, 1, -10189.1, 1391.22, -5.98723, 5.91721, 0, 0, 0.181969, -0.983304, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706174, 182817, 509, 1, 1, -10190.8, 1408.55, -4.31324, 6.1057, 0, 0, 0.0886241, -0.996065, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706176, 182817, 509, 1, 1, -10192.3, 1426.81, -4.57568, 6.25886, 0, 0, 0.0121637, -0.999926, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706178, 182817, 509, 1, 1, -10208.3, 1433.83, -4.82321, 1.42866, 0, 0, 0.655111, 0.755533, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706180, 182817, 509, 1, 1, -10223.4, 1429.15, -4.97021, 1.57396, 0, 0, 0.708223, 0.705989, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706182, 182817, 509, 1, 1, -10238.4, 1434.24, -4.57984, 1.14984, 0, 0, 0.543768, 0.839236, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706184, 182817, 509, 1, 1, -10253.6, 1444.29, -4.84257, 1.13021, 0, 0, 0.535503, 0.844534, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706192, 182817, 509, 1, 1, -10305.8, 1398.41, -6.43458, 5.50094, 0, 0, 0.381225, -0.924482, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706194, 182817, 509, 1, 1, -10309.1, 1383.15, -6.74503, 2.70885, 0, 0, 0.976683, 0.214685, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706196, 182817, 509, 1, 1, -10309.8, 1365.19, -6.97318, 3.77307, 0, 0, 0.950567, -0.310519, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706198, 182817, 509, 1, 1, -10295.4, 1353.7, -7.86994, 4.2129, 0, 0, 0.859936, -0.510401, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706200, 182817, 509, 1, 1, -10281.1, 1344.48, -5.81212, 4.04404, 0, 0, 0.899914, -0.436067, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706202, 182817, 509, 1, 1, -10236.9, 1348.28, -6.14524, 5.0415, 0, 0, 0.581719, -0.81339, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706204, 182817, 509, 1, 1, -10300.8, 1446.41, 18.8713, 5.15696, 0, 0, 0.533823, -0.845596, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706206, 182817, 509, 1, 1, -10310.2, 1421.56, 13.6076, 5.34938, 0, 0, 0.450124, -0.892966, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706208, 182817, 509, 1, 1, -10330.7, 1395.54, 12.4368, 6.21488, 0, 0, 0.0341441, -0.999417, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706210, 182817, 509, 1, 1, -10272.8, 1453.38, 6.62047, 2.00279, 0, 0, 0.842225, 0.539126, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706212, 182817, 509, 1, 1, -10252.7, 1465.94, 2.86132, 1.26059, 0, 0, 0.589384, 0.807853, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706214, 182817, 509, 1, 1, -10335.3, 1370.12, 19.5426, 0.532527, 0, 0, 0.263128, 0.964761, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706216, 182817, 509, 1, 1, -10194.3, 1447.18, 2.77774, 1.27394, 0, 0, 0.594763, 0.803901, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706218, 182817, 509, 1, 1, -10216.7, 1451.7, 6.32564, 4.55141, 0, 0, 0.761671, -0.647964, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706220, 182817, 509, 1, 1, -10226.3, 1457.98, 20.9724, 4.58283, 0, 0, 0.751399, -0.659848, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706222, 182817, 509, 1, 1, -10241, 1455.77, 5.45137, 4.74383, 0, 0, 0.695903, -0.718136, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706224, 182817, 509, 1, 1, -10303.5, 1340.76, 8.86576, 4.42968, 0, 0, 0.799676, -0.600432, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706226, 182817, 509, 1, 1, -10322.2, 1348.8, 6.10389, 4.09196, 0, 0, 0.88921, -0.4575, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706348, 179694, 509, 1, 1, -10333.4, 1243.43, 27.2302, 3.03401, 0, 0, 0.998554, 0.0537644, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706352, 179694, 509, 1, 1, -10349.5, 1247.97, 26.038, 2.59183, 0, 0, 0.962458, 0.271431, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706354, 179694, 509, 1, 1, -10355.1, 1252.64, 26.0199, 2.42297, 0, 0, 0.93614, 0.351629, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706356, 179694, 509, 1, 1, -10361, 1260.13, 25.1453, 2.13709, 0, 0, 0.8765, 0.481401, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706358, 179694, 509, 1, 1, -10364.5, 1266.55, 24.6282, 1.90932, 0, 0, 0.816118, 0.577886, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706360, 179694, 509, 1, 1, -10365.2, 1274.71, 25.8576, 1.44594, 0, 0, 0.661613, 0.749845, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706362, 179694, 509, 1, 1, -10363.6, 1283.56, 26.8531, 1.2056, 0, 0, 0.566953, 0.82375, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706364, 179694, 509, 1, 1, -10360.6, 1291.72, 26.2311, 1.22131, 0, 0, 0.573405, 0.819272, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706366, 179694, 509, 1, 1, -10357.7, 1298.66, 26.0638, 1.07523, 0, 0, 0.512088, 0.858933, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706370, 179694, 509, 1, 1, -10347.7, 1314.12, 26.6543, 0.80191, 0, 0, 0.390298, 0.920689, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706372, 179694, 509, 1, 1, -10341.2, 1318.14, 28.3287, 0.358945, 0, 0, 0.17851, 0.983938, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706374, 179694, 509, 1, 1, -10332, 1320.01, 26.13, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706376, 179694, 509, 1, 1, -10323.1, 1321.6, 25.5221, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706378, 179694, 509, 1, 1, -10316, 1321.16, 26.091, 0.0699177, 0, 0, 0.0349517, 0.999389, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706380, 179694, 509, 1, 1, -10275.3, 1249.93, 23.8501, 3.05522, 0, 0, 0.999068, 0.0431733, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706382, 179694, 509, 1, 1, -10282, 1251.05, 23.9708, 3.239, 0, 0, 0.998814, -0.0486857, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706384, 179694, 509, 1, 1, -10288, 1251.36, 24.603, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706386, 179694, 509, 1, 1, -10295.3, 1250.9, 24.1448, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706388, 179694, 509, 1, 1, -10302, 1249.73, 25.1413, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706390, 179694, 509, 1, 1, -10308.1, 1248.02, 25.4487, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706392, 179694, 509, 1, 1, -10313.6, 1246.4, 25.2466, 3.53117, 0, 0, 0.981089, -0.19356, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706394, 179694, 509, 1, 1, -10319.5, 1244.3, 25.5322, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706396, 179694, 509, 1, 1, -10326.2, 1243.63, 26.4719, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706398, 179694, 509, 1, 1, -10335.7, 1320.27, 27.3189, 0.136678, 0, 0, 0.0682858, 0.997666, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706400, 179694, 509, 1, 1, -10310.3, 1319.77, 24.7397, 6.03895, 0, 0, 0.121817, -0.992553, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706402, 179694, 509, 1, 1, -10281.1, 1346.38, -6.74055, 2.57927, 0, 0, 0.960734, 0.277472, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706404, 179694, 509, 1, 1, -10290.3, 1351.22, -7.86942, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706406, 179694, 509, 1, 1, -10300.6, 1353.11, -7.05444, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706408, 179694, 509, 1, 1, -10308.1, 1363.59, -6.9729, 2.24155, 0, 0, 0.900437, 0.434986, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706410, 179694, 509, 1, 1, -10308.1, 1380.95, -6.92396, 2.01771, 0, 0, 0.846222, 0.53283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706412, 179694, 509, 1, 1, -10303.4, 1398.94, -7.14548, 1.841, 0, 0, 0.795903, 0.605424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706414, 179694, 509, 1, 1, -10245.2, 1434.89, -5.588, 5.54415, 0, 0, 0.361168, -0.932501, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706416, 179694, 509, 1, 1, -10231.8, 1426.6, -5.53652, 5.72871, 0, 0, 0.273698, -0.961816, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706418, 179694, 509, 1, 1, -10222.7, 1425.2, -4.98285, 6.19995, 0, 0, 0.0416041, -0.999134, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706420, 179694, 509, 1, 1, -10207.6, 1430.47, -4.96394, 5.92899, 0, 0, 0.176172, -0.984359, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706422, 179694, 509, 1, 1, -10196.1, 1426.78, -4.90458, 5.4067, 0, 0, 0.424348, -0.905499, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706424, 179694, 509, 1, 1, -10194.3, 1407.57, -4.7889, 5.08862, 0, 0, 0.562399, -0.826866, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706426, 179694, 509, 1, 1, -10235, 1349.59, -6.85398, 2.63032, 0, 0, 0.967502, 0.252862, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706428, 4406, 509, 1, 1, -10192.2, 1322.86, -7.793, 4.93624, 0, 0, 0.623702, -0.781662, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706430, 4406, 509, 1, 1, -10177.5, 1332.89, -8.47321, 0.408421, 0, 0, 0.202794, 0.979221, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706432, 4406, 509, 1, 1, -10169.9, 1336.22, -5.95863, 0.824682, 0, 0, 0.400755, 0.916185, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706434, 4406, 509, 1, 1, -10161, 1362.23, -5.89868, 0.903222, 0, 0, 0.436415, 0.899745, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706436, 4406, 509, 1, 1, -10148.1, 1365.2, -5.84118, 6.18895, 0, 0, 0.0470992, -0.99889, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706438, 4406, 509, 1, 1, -10127.6, 1349.43, -5.86526, 2.03812, 0, 0, 0.851616, 0.524165, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706440, 4406, 509, 1, 1, -10128.1, 1348.27, -5.89412, 4.32363, 0, 0, 0.830373, -0.557208, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706442, 4406, 509, 1, 1, -10129.4, 1345.15, -6.23512, 4.3197, 0, 0, 0.831466, -0.555576, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706444, 4406, 509, 1, 1, -10129, 1346.27, -6.18032, 1.24487, 0, 0, 0.583016, 0.812461, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706446, 4406, 509, 1, 1, -10127.7, 1346.49, -5.98982, 0.168876, 0, 0, 0.0843375, 0.996437, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706448, 4406, 509, 1, 1, -10138, 1329.52, -2.85722, 4.82629, 0, 0, 0.665713, -0.746207, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706450, 4406, 509, 1, 1, -10129.7, 1311.27, -7.71463, 4.67706, 0, 0, 0.719485, -0.694508, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706452, 4406, 509, 1, 1, -10135.3, 1290.06, -5.83041, 4.38254, 0, 0, 0.813603, -0.581421, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706454, 4406, 509, 1, 1, -10134.3, 1284.5, -6.05379, 0.0392895, 0, 0, 0.0196435, 0.999807, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706456, 4406, 509, 1, 1, -10133.4, 1281.01, -5.328, 4.87342, 0, 0, 0.647946, -0.761687, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706458, 4406, 509, 1, 1, -10136.1, 1281.87, -6.15563, 2.82745, 0, 0, 0.98769, 0.156424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706460, 4406, 509, 1, 1, -10137.5, 1279.41, -6.52834, 4.19797, 0, 0, 0.86372, -0.503972, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706462, 4406, 509, 1, 1, -10143.6, 1279.48, -8.36849, 3.33011, 0, 0, 0.995561, -0.094119, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706464, 4406, 509, 1, 1, -10159.8, 1270.85, -6.4063, 3.43614, 0, 0, 0.989175, -0.146741, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706466, 4406, 509, 1, 1, -10170.5, 1256.01, -7.23258, 3.76993, 0, 0, 0.951053, -0.309028, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706468, 4406, 509, 1, 1, -10178.3, 1252.02, -5.69267, 3.33796, 0, 0, 0.995184, -0.0980283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706470, 4406, 509, 1, 1, -10190.8, 1254.01, -6.37728, 2.63111, 0, 0, 0.967602, 0.252481, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706472, 4406, 509, 1, 1, -10198.1, 1262.65, -4.19504, 2.11667, 0, 0, 0.87154, 0.490324, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706474, 4406, 509, 1, 1, -10200.8, 1272.41, -5.11533, 1.60616, 0, 0, 0.719499, 0.694494, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706476, 4406, 509, 1, 1, -10199.5, 1281.26, -4.7296, 1.17812, 0, 0, 0.555579, 0.831464, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706478, 4406, 509, 1, 1, -10192.6, 1293.88, -6.8304, 1.08387, 0, 0, 0.515795, 0.856712, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706480, 4406, 509, 1, 1, -10181.1, 1292.37, -7.18782, 0.208152, 0, 0, 0.103888, 0.994589, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706482, 4406, 509, 1, 1, -10168.9, 1292.03, -9.07491, 0.000020504, 0, 0, 0.000010252, 1, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706484, 4406, 509, 1, 1, -10170, 1302.91, -9.18295, 1.62579, 0, 0, 0.726282, 0.687397, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706486, 4406, 509, 1, 1, -10157.4, 1309.13, -9.04332, 0.19637, 0, 0, 0.0980274, 0.995184, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706488, 4406, 509, 1, 1, -10145.6, 1324.16, -5.41769, 2.4269, 0, 0, 0.936829, 0.349789, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706801, 179694, 509, 1, 1, -10238.1, 1332.57, 3.99987, 1.35276, 0, 0, 0.625976, 0.779842, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706803, 179694, 509, 1, 1, -10238, 1324.97, 6.13993, 1.46665, 0, 0, 0.669343, 0.742954, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706805, 179694, 509, 1, 1, -10238.4, 1320.2, 10.2531, 1.50199, 0, 0, 0.682367, 0.73101, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706807, 179694, 509, 1, 1, -10237.6, 1313.01, 12.966, 1.58053, 0, 0, 0.71054, 0.703657, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706809, 179694, 509, 1, 1, -10235.3, 1304.57, 14.2494, 1.67478, 0, 0, 0.742898, 0.669405, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706811, 179694, 509, 1, 1, -10232.2, 1300, 17.974, 1.89862, 0, 0, 0.813013, 0.582246, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706813, 179694, 509, 1, 1, -10227.7, 1294.6, 21.1327, 2.20649, 0, 0, 0.892675, 0.450701, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706815, 179694, 509, 1, 1, -10224.4, 1288.15, 23.1401, 1.49571, 0, 0, 0.680067, 0.73315, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706817, 179694, 509, 1, 1, -10224.6, 1280.06, 25.7384, 1.52712, 0, 0, 0.691499, 0.722378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706819, 179694, 509, 1, 1, -10225.6, 1271.84, 26.319, 1.43288, 0, 0, 0.656702, 0.75415, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706821, 179694, 509, 1, 1, -10226, 1264.79, 25.1425, 1.41717, 0, 0, 0.650759, 0.759284, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706823, 179694, 509, 1, 1, -10228, 1257.61, 24.6053, 1.23653, 0, 0, 0.57962, 0.814887, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706825, 179694, 509, 1, 1, -10230.8, 1250.14, 25.7983, 1.01661, 0, 0, 0.486699, 0.87357, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706827, 179694, 509, 1, 1, -10234.2, 1243.7, 27.2683, 1.0441, 0, 0, 0.498659, 0.866798, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706829, 179694, 509, 1, 1, -10237.3, 1235.94, 30.4322, 0.892521, 0, 0, 0.431595, 0.902067, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706831, 179694, 509, 1, 1, -10241.2, 1233.27, 31.0267, 5.97798, 0, 0, 0.152013, -0.988378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706833, 179694, 509, 1, 1, -10249.4, 1238.24, 26.0951, 5.90415, 0, 0, 0.188385, -0.982095, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706835, 179694, 509, 1, 1, -10257.4, 1239.6, 28.155, 6.18689, 0, 0, 0.0481276, -0.998841, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706837, 179694, 509, 1, 1, -10236.5, 1238.73, 30.1317, 0.911368, 0, 0, 0.440077, 0.89796, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706839, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 5.51222, 0, 0, 0.376004, -0.926618, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706841, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 1.89861, 0, 0, 0.813011, 0.582249, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706843, 179694, 509, 1, 1, -10197.7, 1301.54, -7.04079, 0.308183, 0, 0, 0.153482, 0.988151, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706845, 179694, 509, 1, 1, -10186.9, 1273.73, -5.97028, 3.91395, 0, 0, 0.926355, -0.37665, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706847, 179694, 509, 1, 1, -10175.9, 1273.99, -9.03747, 1.53969, 0, 0, 0.696024, 0.718019, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706849, 179694, 509, 1, 1, -10124.8, 1296.24, -9.01192, 3.09949, 0, 0, 0.999778, 0.0210475, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706851, 179694, 509, 1, 1, -10122.1, 1293.73, -8.73419, 0.722094, 0, 0, 0.353254, 0.935528, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706853, 179694, 509, 1, 1, -10106.5, 1293.22, -9.55716, 2.55993, 0, 0, 0.958006, 0.286748, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706855, 179694, 509, 1, 1, -10110.5, 1298.94, -9.52436, 1.90569, 0, 0, 0.815067, 0.579366, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706857, 179694, 509, 1, 1, -10113.2, 1302.64, -8.65284, 4.32708, 0, 0, 0.829412, -0.558637, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706859, 179694, 509, 1, 1, -10115.2, 1295.63, -9.53151, 4.82345, 0, 0, 0.666773, -0.745261, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706861, 179694, 509, 1, 1, -10126.1, 1295.38, -8.7532, 3.07594, 0, 0, 0.999461, 0.0328211, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706863, 179694, 509, 1, 1, -10103.1, 1300.04, -9.01217, 2.37851, 0, 0, 0.928092, 0.372352, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706865, 179694, 509, 1, 1, -10098.9, 1295.94, -9.54566, 1.4431, 0, 0, 0.660549, 0.750783, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706867, 179694, 509, 1, 1, -10098.6, 1299.41, -9.25327, 3.1592, 0, 0, 0.999961, -0.00880258, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706869, 179694, 509, 1, 1, -10105, 1298.59, -9.30769, 4.80068, 0, 0, 0.675213, -0.737623, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (706871, 179694, 509, 1, 1, -10126.3, 1339.09, -5.7753, 6.19633, 0, 0, 0.0434128, -0.999057, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906109, 203034, 509, 1, 1, -10181.6, 1374.2, -6.25406, 5.07041, 0, 0, 0.569901, -0.821713, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906111, 203034, 509, 1, 1, -10220.5, 1343.36, -8.27309, 5.44505, 0, 0, 0.40691, -0.913468, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906113, 203034, 509, 1, 1, -10216.8, 1210.7, -6.70373, 0.302428, 0, 0, 0.150638, 0.988589, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906117, 203034, 509, 1, 1, -10186.7, 1205.87, -7.37962, 1.64712, 0, 0, 0.733571, 0.679613, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906119, 203034, 509, 1, 1, -10123.4, 1343.28, -5.69448, 4.14154, 0, 0, 0.877594, -0.479405, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906121, 203034, 509, 1, 1, -10129.6, 1285.67, -6.49858, 1.61884, 0, 0, 0.723888, 0.689917, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906123, 203034, 509, 1, 1, -10181.1, 1276.39, -8.40261, 1.18845, 0, 0, 0.559865, 0.828584, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906125, 203034, 509, 1, 1, -10161.3, 1183.25, -5.66663, 3.51715, 0, 0, 0.982421, -0.186677, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906127, 203034, 509, 1, 1, -10104.8, 1283.32, -7.04666, 4.55858, 0, 0, 0.759342, -0.650692, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906129, 203034, 509, 1, 1, -10203, 1302.82, -7.02735, 3.92241, 0, 0, 0.924754, -0.380566, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906170, 203006, 509, 1, 1, -10202.2, 1357.17, -6.30372, 5.41848, 0, 0, 0.419009, -0.907982, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906172, 182817, 509, 1, 1, -10189.1, 1391.22, -5.98723, 5.91721, 0, 0, 0.181969, -0.983304, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906174, 182817, 509, 1, 1, -10190.8, 1408.55, -4.31324, 6.1057, 0, 0, 0.0886241, -0.996065, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906176, 182817, 509, 1, 1, -10192.3, 1426.81, -4.57568, 6.25886, 0, 0, 0.0121637, -0.999926, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906178, 182817, 509, 1, 1, -10208.3, 1433.83, -4.82321, 1.42866, 0, 0, 0.655111, 0.755533, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906180, 182817, 509, 1, 1, -10223.4, 1429.15, -4.97021, 1.57396, 0, 0, 0.708223, 0.705989, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906182, 182817, 509, 1, 1, -10238.4, 1434.24, -4.57984, 1.14984, 0, 0, 0.543768, 0.839236, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906184, 182817, 509, 1, 1, -10253.6, 1444.29, -4.84257, 1.13021, 0, 0, 0.535503, 0.844534, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906192, 182817, 509, 1, 1, -10305.8, 1398.41, -6.43458, 5.50094, 0, 0, 0.381225, -0.924482, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906194, 182817, 509, 1, 1, -10309.1, 1383.15, -6.74503, 2.70885, 0, 0, 0.976683, 0.214685, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906196, 182817, 509, 1, 1, -10309.8, 1365.19, -6.97318, 3.77307, 0, 0, 0.950567, -0.310519, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (907359, 202161, 509, 1, 1, -10254.5, 1399.5, -11, 2.47576, 0, 0, 0.945093, 0.326802, 1, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906200, 182817, 509, 1, 1, -10281.1, 1344.48, -5.81212, 4.04404, 0, 0, 0.899914, -0.436067, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906202, 182817, 509, 1, 1, -10236.9, 1348.28, -6.14524, 5.0415, 0, 0, 0.581719, -0.81339, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906204, 182817, 509, 1, 1, -10300.8, 1446.41, 18.8713, 5.15696, 0, 0, 0.533823, -0.845596, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906206, 182817, 509, 1, 1, -10310.2, 1421.56, 13.6076, 5.34938, 0, 0, 0.450124, -0.892966, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906208, 182817, 509, 1, 1, -10330.7, 1395.54, 12.4368, 6.21488, 0, 0, 0.0341441, -0.999417, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906210, 182817, 509, 1, 1, -10272.8, 1453.38, 6.62047, 2.00279, 0, 0, 0.842225, 0.539126, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906212, 182817, 509, 1, 1, -10252.7, 1465.94, 2.86132, 1.26059, 0, 0, 0.589384, 0.807853, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906214, 182817, 509, 1, 1, -10335.3, 1370.12, 19.5426, 0.532527, 0, 0, 0.263128, 0.964761, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906216, 182817, 509, 1, 1, -10194.3, 1447.18, 2.77774, 1.27394, 0, 0, 0.594763, 0.803901, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906218, 182817, 509, 1, 1, -10216.7, 1451.7, 6.32564, 4.55141, 0, 0, 0.761671, -0.647964, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906220, 182817, 509, 1, 1, -10226.3, 1457.98, 20.9724, 4.58283, 0, 0, 0.751399, -0.659848, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906222, 182817, 509, 1, 1, -10241, 1455.77, 5.45137, 4.74383, 0, 0, 0.695903, -0.718136, 0, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906224, 182817, 509, 1, 1, -10303.5, 1340.76, 8.86576, 4.42968, 0, 0, 0.799676, -0.600432, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906226, 182817, 509, 1, 1, -10322.2, 1348.8, 6.10389, 4.09196, 0, 0, 0.88921, -0.4575, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906348, 179694, 509, 1, 1, -10333.4, 1243.43, 27.2302, 3.03401, 0, 0, 0.998554, 0.0537644, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906352, 179694, 509, 1, 1, -10349.5, 1247.97, 26.038, 2.59183, 0, 0, 0.962458, 0.271431, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906354, 179694, 509, 1, 1, -10355.1, 1252.64, 26.0199, 2.42297, 0, 0, 0.93614, 0.351629, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906356, 179694, 509, 1, 1, -10361, 1260.13, 25.1453, 2.13709, 0, 0, 0.8765, 0.481401, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906358, 179694, 509, 1, 1, -10364.5, 1266.55, 24.6282, 1.90932, 0, 0, 0.816118, 0.577886, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906360, 179694, 509, 1, 1, -10365.2, 1274.71, 25.8576, 1.44594, 0, 0, 0.661613, 0.749845, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906362, 179694, 509, 1, 1, -10363.6, 1283.56, 26.8531, 1.2056, 0, 0, 0.566953, 0.82375, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906364, 179694, 509, 1, 1, -10360.6, 1291.72, 26.2311, 1.22131, 0, 0, 0.573405, 0.819272, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906366, 179694, 509, 1, 1, -10357.7, 1298.66, 26.0638, 1.07523, 0, 0, 0.512088, 0.858933, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906370, 179694, 509, 1, 1, -10347.7, 1314.12, 26.6543, 0.80191, 0, 0, 0.390298, 0.920689, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906372, 179694, 509, 1, 1, -10341.2, 1318.14, 28.3287, 0.358945, 0, 0, 0.17851, 0.983938, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906374, 179694, 509, 1, 1, -10332, 1320.01, 26.13, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906376, 179694, 509, 1, 1, -10323.1, 1321.6, 25.5221, 0.176732, 0, 0, 0.0882512, 0.996098, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906378, 179694, 509, 1, 1, -10316, 1321.16, 26.091, 0.0699177, 0, 0, 0.0349517, 0.999389, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906380, 179694, 509, 1, 1, -10275.3, 1249.93, 23.8501, 3.05522, 0, 0, 0.999068, 0.0431733, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906382, 179694, 509, 1, 1, -10282, 1251.05, 23.9708, 3.239, 0, 0, 0.998814, -0.0486857, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906384, 179694, 509, 1, 1, -10288, 1251.36, 24.603, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906386, 179694, 509, 1, 1, -10295.3, 1250.9, 24.1448, 3.12826, 0, 0, 0.999978, 0.00666561, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906388, 179694, 509, 1, 1, -10302, 1249.73, 25.1413, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906390, 179694, 509, 1, 1, -10308.1, 1248.02, 25.4487, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906392, 179694, 509, 1, 1, -10313.6, 1246.4, 25.2466, 3.53117, 0, 0, 0.981089, -0.19356, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906394, 179694, 509, 1, 1, -10319.5, 1244.3, 25.5322, 3.38509, 0, 0, 0.992598, -0.121446, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906396, 179694, 509, 1, 1, -10326.2, 1243.63, 26.4719, 3.27435, 0, 0, 0.997798, -0.0663276, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906398, 179694, 509, 1, 1, -10335.7, 1320.27, 27.3189, 0.136678, 0, 0, 0.0682858, 0.997666, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906400, 179694, 509, 1, 1, -10310.3, 1319.77, 24.7397, 6.03895, 0, 0, 0.121817, -0.992553, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906402, 179694, 509, 1, 1, -10281.1, 1346.38, -6.74055, 2.57927, 0, 0, 0.960734, 0.277472, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906404, 179694, 509, 1, 1, -10290.3, 1351.22, -7.86942, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906406, 179694, 509, 1, 1, -10300.6, 1353.11, -7.05444, 2.96019, 0, 0, 0.995889, 0.0905785, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906408, 179694, 509, 1, 1, -10308.1, 1363.59, -6.9729, 2.24155, 0, 0, 0.900437, 0.434986, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906410, 179694, 509, 1, 1, -10308.1, 1380.95, -6.92396, 2.01771, 0, 0, 0.846222, 0.53283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906412, 179694, 509, 1, 1, -10303.4, 1398.94, -7.14548, 1.841, 0, 0, 0.795903, 0.605424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906414, 179694, 509, 1, 1, -10245.2, 1434.89, -5.588, 5.54415, 0, 0, 0.361168, -0.932501, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906416, 179694, 509, 1, 1, -10231.8, 1426.6, -5.53652, 5.72871, 0, 0, 0.273698, -0.961816, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906418, 179694, 509, 1, 1, -10222.7, 1425.2, -4.98285, 6.19995, 0, 0, 0.0416041, -0.999134, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906420, 179694, 509, 1, 1, -10207.6, 1430.47, -4.96394, 5.92899, 0, 0, 0.176172, -0.984359, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906422, 179694, 509, 1, 1, -10196.1, 1426.78, -4.90458, 5.4067, 0, 0, 0.424348, -0.905499, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906424, 179694, 509, 1, 1, -10194.3, 1407.57, -4.7889, 5.08862, 0, 0, 0.562399, -0.826866, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906426, 179694, 509, 1, 1, -10235, 1349.59, -6.85398, 2.63032, 0, 0, 0.967502, 0.252862, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906428, 4406, 509, 1, 1, -10192.2, 1322.86, -7.793, 4.93624, 0, 0, 0.623702, -0.781662, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906430, 4406, 509, 1, 1, -10177.5, 1332.89, -8.47321, 0.408421, 0, 0, 0.202794, 0.979221, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906432, 4406, 509, 1, 1, -10169.9, 1336.22, -5.95863, 0.824682, 0, 0, 0.400755, 0.916185, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906434, 4406, 509, 1, 1, -10161, 1362.23, -5.89868, 0.903222, 0, 0, 0.436415, 0.899745, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906436, 4406, 509, 1, 1, -10148.1, 1365.2, -5.84118, 6.18895, 0, 0, 0.0470992, -0.99889, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906438, 4406, 509, 1, 1, -10127.6, 1349.43, -5.86526, 2.03812, 0, 0, 0.851616, 0.524165, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906440, 4406, 509, 1, 1, -10128.1, 1348.27, -5.89412, 4.32363, 0, 0, 0.830373, -0.557208, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906442, 4406, 509, 1, 1, -10129.4, 1345.15, -6.23512, 4.3197, 0, 0, 0.831466, -0.555576, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906444, 4406, 509, 1, 1, -10129, 1346.27, -6.18032, 1.24487, 0, 0, 0.583016, 0.812461, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906446, 4406, 509, 1, 1, -10127.7, 1346.49, -5.98982, 0.168876, 0, 0, 0.0843375, 0.996437, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906448, 4406, 509, 1, 1, -10138, 1329.52, -2.85722, 4.82629, 0, 0, 0.665713, -0.746207, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906450, 4406, 509, 1, 1, -10129.7, 1311.27, -7.71463, 4.67706, 0, 0, 0.719485, -0.694508, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906452, 4406, 509, 1, 1, -10135.3, 1290.06, -5.83041, 4.38254, 0, 0, 0.813603, -0.581421, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906454, 4406, 509, 1, 1, -10134.3, 1284.5, -6.05379, 0.0392895, 0, 0, 0.0196435, 0.999807, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906456, 4406, 509, 1, 1, -10133.4, 1281.01, -5.328, 4.87342, 0, 0, 0.647946, -0.761687, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906458, 4406, 509, 1, 1, -10136.1, 1281.87, -6.15563, 2.82745, 0, 0, 0.98769, 0.156424, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906460, 4406, 509, 1, 1, -10137.5, 1279.41, -6.52834, 4.19797, 0, 0, 0.86372, -0.503972, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906462, 4406, 509, 1, 1, -10143.6, 1279.48, -8.36849, 3.33011, 0, 0, 0.995561, -0.094119, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906464, 4406, 509, 1, 1, -10159.8, 1270.85, -6.4063, 3.43614, 0, 0, 0.989175, -0.146741, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906466, 4406, 509, 1, 1, -10170.5, 1256.01, -7.23258, 3.76993, 0, 0, 0.951053, -0.309028, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906468, 4406, 509, 1, 1, -10178.3, 1252.02, -5.69267, 3.33796, 0, 0, 0.995184, -0.0980283, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906470, 4406, 509, 1, 1, -10190.8, 1254.01, -6.37728, 2.63111, 0, 0, 0.967602, 0.252481, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906472, 4406, 509, 1, 1, -10198.1, 1262.65, -4.19504, 2.11667, 0, 0, 0.87154, 0.490324, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906474, 4406, 509, 1, 1, -10200.8, 1272.41, -5.11533, 1.60616, 0, 0, 0.719499, 0.694494, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906476, 4406, 509, 1, 1, -10199.5, 1281.26, -4.7296, 1.17812, 0, 0, 0.555579, 0.831464, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906478, 4406, 509, 1, 1, -10192.6, 1293.88, -6.8304, 1.08387, 0, 0, 0.515795, 0.856712, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906480, 4406, 509, 1, 1, -10181.1, 1292.37, -7.18782, 0.208152, 0, 0, 0.103888, 0.994589, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906482, 4406, 509, 1, 1, -10168.9, 1292.03, -9.07491, 0.000020504, 0, 0, 0.000010252, 1, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906484, 4406, 509, 1, 1, -10170, 1302.91, -9.18295, 1.62579, 0, 0, 0.726282, 0.687397, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906486, 4406, 509, 1, 1, -10157.4, 1309.13, -9.04332, 0.19637, 0, 0, 0.0980274, 0.995184, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906488, 4406, 509, 1, 1, -10145.6, 1324.16, -5.41769, 2.4269, 0, 0, 0.936829, 0.349789, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906801, 179694, 509, 1, 1, -10238.1, 1332.57, 3.99987, 1.35276, 0, 0, 0.625976, 0.779842, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906803, 179694, 509, 1, 1, -10238, 1324.97, 6.13993, 1.46665, 0, 0, 0.669343, 0.742954, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906805, 179694, 509, 1, 1, -10238.4, 1320.2, 10.2531, 1.50199, 0, 0, 0.682367, 0.73101, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906807, 179694, 509, 1, 1, -10237.6, 1313.01, 12.966, 1.58053, 0, 0, 0.71054, 0.703657, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906809, 179694, 509, 1, 1, -10235.3, 1304.57, 14.2494, 1.67478, 0, 0, 0.742898, 0.669405, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906811, 179694, 509, 1, 1, -10232.2, 1300, 17.974, 1.89862, 0, 0, 0.813013, 0.582246, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906813, 179694, 509, 1, 1, -10227.7, 1294.6, 21.1327, 2.20649, 0, 0, 0.892675, 0.450701, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906815, 179694, 509, 1, 1, -10224.4, 1288.15, 23.1401, 1.49571, 0, 0, 0.680067, 0.73315, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906817, 179694, 509, 1, 1, -10224.6, 1280.06, 25.7384, 1.52712, 0, 0, 0.691499, 0.722378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906819, 179694, 509, 1, 1, -10225.6, 1271.84, 26.319, 1.43288, 0, 0, 0.656702, 0.75415, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906821, 179694, 509, 1, 1, -10226, 1264.79, 25.1425, 1.41717, 0, 0, 0.650759, 0.759284, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906823, 179694, 509, 1, 1, -10228, 1257.61, 24.6053, 1.23653, 0, 0, 0.57962, 0.814887, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906825, 179694, 509, 1, 1, -10230.8, 1250.14, 25.7983, 1.01661, 0, 0, 0.486699, 0.87357, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906827, 179694, 509, 1, 1, -10234.2, 1243.7, 27.2683, 1.0441, 0, 0, 0.498659, 0.866798, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906829, 179694, 509, 1, 1, -10237.3, 1235.94, 30.4322, 0.892521, 0, 0, 0.431595, 0.902067, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906831, 179694, 509, 1, 1, -10241.2, 1233.27, 31.0267, 5.97798, 0, 0, 0.152013, -0.988378, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906833, 179694, 509, 1, 1, -10249.4, 1238.24, 26.0951, 5.90415, 0, 0, 0.188385, -0.982095, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906835, 179694, 509, 1, 1, -10257.4, 1239.6, 28.155, 6.18689, 0, 0, 0.0481276, -0.998841, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906837, 179694, 509, 1, 1, -10236.5, 1238.73, 30.1317, 0.911368, 0, 0, 0.440077, 0.89796, 1, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906839, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 5.51222, 0, 0, 0.376004, -0.926618, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906841, 179694, 509, 1, 1, -10196.8, 1312.74, -7.79996, 1.89861, 0, 0, 0.813011, 0.582249, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906843, 179694, 509, 1, 1, -10197.7, 1301.54, -7.04079, 0.308183, 0, 0, 0.153482, 0.988151, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906845, 179694, 509, 1, 1, -10186.9, 1273.73, -5.97028, 3.91395, 0, 0, 0.926355, -0.37665, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906847, 179694, 509, 1, 1, -10175.9, 1273.99, -9.03747, 1.53969, 0, 0, 0.696024, 0.718019, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906849, 179694, 509, 1, 1, -10124.8, 1296.24, -9.01192, 3.09949, 0, 0, 0.999778, 0.0210475, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906851, 179694, 509, 1, 1, -10122.1, 1293.73, -8.73419, 0.722094, 0, 0, 0.353254, 0.935528, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906853, 179694, 509, 1, 1, -10106.5, 1293.22, -9.55716, 2.55993, 0, 0, 0.958006, 0.286748, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906855, 179694, 509, 1, 1, -10110.5, 1298.94, -9.52436, 1.90569, 0, 0, 0.815067, 0.579366, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906857, 179694, 509, 1, 1, -10113.2, 1302.64, -8.65284, 4.32708, 0, 0, 0.829412, -0.558637, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906859, 179694, 509, 1, 1, -10115.2, 1295.63, -9.53151, 4.82345, 0, 0, 0.666773, -0.745261, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906861, 179694, 509, 1, 1, -10126.1, 1295.38, -8.7532, 3.07594, 0, 0, 0.999461, 0.0328211, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906863, 179694, 509, 1, 1, -10103.1, 1300.04, -9.01217, 2.37851, 0, 0, 0.928092, 0.372352, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906865, 179694, 509, 1, 1, -10098.9, 1295.94, -9.54566, 1.4431, 0, 0, 0.660549, 0.750783, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906867, 179694, 509, 1, 1, -10098.6, 1299.41, -9.25327, 3.1592, 0, 0, 0.999961, -0.00880258, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (906869, 179694, 509, 1, 1, -10105, 1298.59, -9.30769, 4.80068, 0, 0, 0.675213, -0.737623, 300, 0, 1);

-- --------------------------------------------------------------
-- Evento Asirius creature            ---------------------------
-- --------------------------------------------------------------
INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183707, 3470000, 509, 1, 3, 0, 0, -10159.5, 1342.03, -5.47413, 4.51922, 300, 0, 0, 3346800, 3263750, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183003, 5000014, 509, 1, 3, 0, 0, -10263.4, 1405.94, -6.97413, 5.74387, 300, 0, 0, 7351255, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183622, 80037, 509, 1, 3, 0, 0, -10067.6, 1299.04, -9.74292, 2.59018, 300, 0, 0, 5342, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4182645, 5000005, 509, 1, 3, 0, 0, -10322, 1284.9, 24.4488, 5.90614, 300, 0, 0, 11156000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184301, 37012, 509, 1, 3, 0, 2029, -10235.1, 1294.02, 20.6357, 0.666335, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183079, 17055, 509, 1, 3, 0, 0, -10131, 1331.18, -3.97683, 5.41063, 300, 0, 0, 6300, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183081, 17055, 509, 1, 3, 0, 0, -10118.6, 1293.72, -8.99427, 1.63286, 300, 0, 0, 6300, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183083, 17055, 509, 1, 3, 0, 0, -10153.5, 1282.25, -9.50083, 2.8895, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183085, 17055, 509, 1, 3, 0, 0, -10183, 1289.32, -6.84163, 1.14984, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183087, 17055, 509, 1, 3, 0, 0, -10189, 1320.13, -7.64717, 1.00062, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183089, 17055, 509, 1, 3, 0, 0, -10181, 1343.9, -7.20628, 0.391935, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183091, 17055, 509, 1, 3, 0, 0, -10156.1, 1365.68, -5.68026, 0.0149437, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183093, 17055, 509, 1, 3, 0, 0, -10142, 1356.75, -5.68219, 5.43812, 300, 0, 0, 6300, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183095, 17055, 509, 1, 3, 0, 0, -10146.1, 1345.31, -6.39205, 3.81235, 300, 0, 0, 6300, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183103, 17055, 509, 1, 3, 0, 0, -10168.4, 1315.61, -7.59322, 4.93154, 300, 0, 0, 6300, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183105, 15977, 509, 1, 3, 0, 0, -10163.6, 1305.81, -8.66132, 5.53629, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183107, 15977, 509, 1, 3, 0, 0, -10150.6, 1300.93, -8.98119, 0.117046, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183109, 15977, 509, 1, 3, 0, 0, -10137.1, 1310.52, -9.47603, 0.796415, 300, 0, 0, 26066, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183111, 15977, 509, 1, 3, 0, 0, -10114.3, 1327.17, -5.4267, 6.17247, 300, 0, 0, 26066, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183113, 15977, 509, 1, 3, 0, 0, -10115, 1312.77, -3.74681, 3.69846, 300, 0, 0, 26066, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183115, 15977, 509, 1, 3, 0, 0, -10130.8, 1299.12, -9.18682, 4.11865, 300, 0, 0, 26066, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183117, 15977, 509, 1, 3, 0, 0, -10139.7, 1283.6, -7.00151, 4.88049, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183119, 15977, 509, 1, 3, 0, 0, -10151.8, 1274.83, -9.42101, 3.71024, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183121, 15977, 509, 1, 3, 0, 0, -10161.9, 1266.19, -5.61175, 3.89481, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183123, 15977, 509, 1, 3, 0, 0, -10175.3, 1255.16, -7.06412, 3.72988, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183125, 15977, 509, 1, 3, 0, 0, -10187.8, 1254.2, -6.6484, 2.78347, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183127, 15977, 509, 1, 3, 0, 0, -10195.7, 1262.72, -4.3765, 1.93917, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183129, 15977, 509, 1, 3, 0, 0, -10197.2, 1274.31, -4.90415, 1.47186, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183131, 15977, 509, 1, 3, 0, 0, -10195.4, 1286.12, -6.10789, 1.33049, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183133, 15977, 509, 1, 3, 0, 0, -10188.6, 1294.98, -7.103, 0.819978, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183135, 15977, 509, 1, 3, 0, 0, -10182.1, 1302.78, -9.2037, 0.957423, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183137, 15977, 509, 1, 3, 0, 0, -10183.5, 1315.58, -8.5511, 1.53469, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183139, 15977, 509, 1, 3, 0, 0, -10183.1, 1327.86, -9.56199, 1.5072, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183141, 15977, 509, 1, 3, 0, 0, -10173.2, 1335.55, -6.7086, 0.0620687, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183143, 15977, 509, 1, 3, 0, 0, -10151.3, 1332.79, -3.7035, 6.05466, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183145, 15977, 509, 1, 3, 0, 0, -10142.3, 1334.98, -4.11588, 0.399791, 300, 0, 0, 26066, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183147, 15977, 509, 1, 3, 0, 0, -10125.4, 1321.42, -4.69839, 4.28359, 300, 0, 0, 26066, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183149, 38232, 509, 1, 3, 0, 0, -10145.3, 1313.63, -9.6844, 3.30184, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183151, 38232, 509, 1, 3, 0, 0, -10145, 1305.73, -8.53464, 5.3478, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183153, 38232, 509, 1, 3, 0, 0, -10134, 1302.43, -9.46861, 0.234855, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183155, 38232, 509, 1, 3, 0, 0, -10129.6, 1310.21, -8.13203, 1.04382, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183157, 38232, 509, 1, 3, 0, 0, -10123.2, 1322.06, -4.90027, 1.35012, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183159, 38232, 509, 1, 3, 0, 0, -10129.9, 1331.92, -4.33368, 2.43004, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183161, 38232, 509, 1, 3, 0, 0, -10143.8, 1344.32, -6.21878, 2.40648, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183163, 38232, 509, 1, 3, 0, 0, -10153.4, 1340.6, -5.19703, 3.49033, 300, 0, 0, 0, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183165, 38232, 509, 1, 3, 0, 0, -10156.8, 1339.37, -5.22979, 3.49033, 300, 0, 0, 0, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183167, 38232, 509, 1, 3, 0, 0, -10161.1, 1337.87, -4.99776, 3.45499, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183169, 38232, 509, 1, 3, 0, 0, -10166.5, 1339.92, -5.19754, 2.77169, 300, 0, 0, 0, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183171, 38232, 509, 1, 3, 0, 0, -10166.5, 1341.56, -5.2305, 1.56611, 300, 0, 0, 0, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183173, 38232, 509, 1, 3, 0, 0, -10162.7, 1346.56, -5.31452, 0.407643, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183175, 38232, 509, 1, 3, 0, 0, -10157.4, 1348.1, -5.97812, 6.19603, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183177, 38232, 509, 1, 3, 0, 0, -10153.9, 1342.96, -5.67023, 4.83729, 300, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183179, 38232, 509, 1, 3, 0, 0, -10153.4, 1338.23, -4.69931, 4.82944, 300, 0, 0, 0, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183426, 36725, 509, 1, 3, 0, 0, -10159.2, 1296.48, -8.24199, 0.275693, 300, 0, 0, 315000, 3994, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183428, 36725, 509, 1, 3, 0, 0, -10192, 1287.49, -6.15158, 0.420992, 300, 0, 0, 315000, 3994, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183430, 36725, 509, 1, 3, 0, 0, -10191.3, 1335.79, -8.73315, 1.46165, 300, 0, 0, 315000, 3994, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4183432, 36725, 509, 1, 3, 0, 0, -10133.7, 1362.65, -5.96852, 3.46834, 300, 0, 0, 315000, 3994, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184705, 5000016, 509, 1, 1, 0, 0, -10198.8, 1150.61, 102.402, 2.43574, 300, 0, 0, 4273600, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184299, 37012, 509, 1, 3, 0, 2029, -10240, 1306.77, 15.5653, 0.273635, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184297, 37012, 509, 1, 3, 0, 2029, -10240.5, 1318.75, 11.1676, 0.29327, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184303, 37012, 509, 1, 3, 0, 2029, -10231.3, 1281.59, 24.5073, 0.0890669, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184305, 37012, 509, 1, 3, 0, 2029, -10232.4, 1267.49, 24.5791, 6.22538, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184307, 37012, 509, 1, 3, 0, 2029, -10236.5, 1254.17, 26.0206, 5.85468, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184309, 37012, 509, 1, 3, 0, 2029, -10251, 1242.77, 26.3036, 4.77632, 300, 0, 0, 315000, 0, 0, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4184617, 5000016, 509, 1, 3, 0, 0, -9949.89, 1134.16, 100.679, 2.35485, 300, 0, 0, 2022150, 0, 2, 0, 0, 0);

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4186215, 5000022, 509, 1, 1, 0, 0, -10233.6, 1382.99, -6.74877, 2.3407, 300, 0, 0, 106840, 0, 0, 0, 0, 0);

-- --------------------------------------------------------------
-- Evento Asirius script_texts        ---------------------------
-- --------------------------------------------------------------
INSERT INTO script_texts
   (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (5000005, -1999955, '¡No hay manera honorable de matar, no hay manera gentil de destruir. No hay nada bueno aqui solo encontrareis la muerte!', '', '', '', '', '', '¡No hay manera honorable de matar, no hay manera gentil de destruir. No hay nada bueno aqui solo encontrareis la muerte!', '', '', 0, 0, 0, 0, 'SAY_DIALOG_1');

INSERT INTO script_texts
   (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (5000005, -1999956, '¡Entráis en mi Reino...y encima os atrevéis a desafiarme??!!! Idiotas Os arrancare el corazón del pecho y lo devoraré!', '', '', '', '', '', '¡Entráis en mi Reino...y encima os atrevéis a desafiarme??!!! Idiotas Os arrancare el corazón del pecho y lo devoraré!', '', '', 0, 0, 0, 0, 'SAY_DIALOG_2');

INSERT INTO script_texts
   (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (5000005, -1999957, '¡Ya es demasiado tarde ... la corrupción y la avaricia se ha afianzado en vuestros corazones. Hoy  los mortales que me miran airosos tarde o temprano morirán, de las cenizas he de volver con más fuerza e ira, huye mientras puedas pero Huir no te servirá de nada por que pronto volveré a por vosotros!', '', '', '', '', '', '¡Ya es demasiado tarde ... la corrupción y la avaricia se ha afianzado en vuestros corazones. Hoy  los mortales que me miran airosos tarde o temprano morirán, de las cenizas he de volver con más fuerza e ira, huye mientras puedas pero Huir no te servirá de nada por que pronto volveré a por vosotros!', '', '', 0, 0, 0, 0, 'SAY_DIALOG_3');

INSERT INTO script_texts
   (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (5000005, -1999958, '¡todo arderá bajo la sombra de mis alas!', '', '', '', '', '', '¡todo arderá bajo la sombra de mis alas!', '', '', 0, 0, 0, 0, 'SAY_DIALOG_4');

INSERT INTO script_texts
   (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (5000005, -1999959, '¡Defilers venid a mí vuestro amo os reclama, acudid al festín y devorad sus almas, sentir la fuerza de la tierra y ver como ésta se estremece!', '', '', '', '', '', '¡Defilers venid a mí vuestro amo os reclama, acudid al festín y devorad sus almas, sentir la fuerza de la tierra y ver como ésta se estremece!', '', '', 0, 0, 0, 0, 'SAY_DIALOG_5');

-- --------------------------------------------------------------
-- Evento Asirius LOOT                ---------------------------
-- --------------------------------------------------------------
-- (falta)

-- --------------------------------------------------------------
-- Evento Asirius Update                -------------------------
-- --------------------------------------------------------------
REPLACE INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3679401, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'Flama', 'WS_CORE', 'WS_CORE', 0, 1, 1, 2, 35, 35, 0, 1, 1.14286, 0.4, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_fuego_hanku', 12340);
-- --------------------------------------------------------------
-- --------------------------------------------------------------
-- --------------------------------------------------------------