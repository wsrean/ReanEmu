-- For Achievement Champion/Conqueror of Ulduar
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10042,10342,10340,10341,10598,10348,10351,10439,
10403,10582,10347,10349,10350,
10352,10355,10353,10354,10599,10357,10363,10719,
10404,10583,10361,10362,10364);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10042,18,0,0,''),
(10342,18,0,0,''),
(10340,18,0,0,''),
(10341,18,0,0,''),
(10598,18,0,0,''),
(10348,18,0,0,''),
(10351,18,0,0,''),
(10439,18,0,0,''),
(10403,18,0,0,''),
(10582,18,0,0,''),
(10347,18,0,0,''),
(10349,18,0,0,''),
(10350,18,0,0,''),
(10352,18,0,0,''),
(10355,18,0,0,''),
(10353,18,0,0,''),
(10354,18,0,0,''),
(10599,18,0,0,''),
(10357,18,0,0,''),
(10363,18,0,0,''),
(10719,18,0,0,''),
(10404,18,0,0,''),
(10583,18,0,0,''),
(10361,18,0,0,''),
(10362,18,0,0,''),
(10364,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10042,10342,10340,10341,10598,10348,10351,10439,
10403,10582,10347,10349,10350,
10352,10355,10353,10354,10599,10357,10363,10719,
10404,10583,10361,10362,10364);

-- ##########################################################
-- Ignis
-- ##########################################################
DELETE FROM conditions WHERE SourceEntry IN (62488);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,62488,0,18,1,33121,0,0,'','Effekt on Constructs');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=62343;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,62343,18,1,33121);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=33121);
DELETE FROM `creature` WHERE `id`=33121;

DELETE FROM `spell_linked_spell` WHERE `spell_effect`=-65667;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(62373,-65667,2, 'Iron Construct - immune to Heat when Molten'),
(62382,-65667,2, 'Iron Construct - immune to Heat when Brittle'),
(67114,-65667,2, 'Iron Construct - immune to Heat when Brittle');

DELETE FROM `conditions` WHERE `SourceEntry`=62711 AND `SourceTypeOrReferenceId`=13 AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,62711,18,1,33118,'Ingis - Grab');

-- ##########################################################
-- Razorscale
-- ##########################################################
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (63317,64021);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,63317,18,1,0,'Flame Breath - Players'),
(13,63317,18,1,33453,'Flame Breath - Dark Rune Watcher'),
(13,63317,18,1,33846,'Flame Breath - Dark Rune Sentinel'),
(13,63317,18,1,33388,'Flame Breath - Dark Rune Guardian'),
(13,63317,18,1,33816,'Flame Breath - Expedition Defender'),
(13,64021,18,1,0,'Flame Breath - Players'),
(13,64021,18,1,33453,'Flame Breath - Dark Rune Watcher'),
(13,64021,18,1,33846,'Flame Breath - Dark Rune Sentinel'),
(13,64021,18,1,33388,'Flame Breath - Dark Rune Guardian'),
(13,64021,18,1,33816,'Flame Breath - Expedition Defender');

-- ##########################################################
-- Assembly of Iron
-- ##########################################################
-- Loot
DELETE FROM `reference_loot_template` WHERE `entry`=34122 AND `lootmode`=4;
DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `lootmode`=4;

UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `entry` IN (32867,32927) AND `lootmode`=2;

DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `groupid`=1;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(32867,45447,0,1,1,1,1),
(32867,45448,0,1,1,1,1),
(32867,45449,0,1,1,1,1),
(32867,45455,0,1,1,1,1),
(32867,45456,0,1,1,1,1);

UPDATE `creature_loot_template` SET `item`=45857, `lootmode`=1 WHERE `entry` IN (33692,33693) AND `lootmode`=2;
UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `entry`=33693 AND `lootmode`=4;

-- Limit Supercharge targets
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=61920;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,61920,18,1,32857),
(13,61920,18,1,32867),
(13,61920,18,1,32927);

-- Lightning Tendrils Visual
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (61887,63486);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(61887,61883,2, 'Lightning Tendrils - Visual'),
(63486,61883,2, 'Lightning Tendrils - Visual');

-- trigger Electrical Charge on Meltdown
DELETE FROM `spell_script_names` WHERE `spell_id`=61889;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(61889, 'spell_meltdown');

UPDATE `creature_template` SET `ScriptName`='mob_rune_of_power' WHERE `entry`=33705;

-- Electrical Charge
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=61901;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,61901,18,1,32867);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (61911,63495);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(61911, 'spell_steelbreaker_static_disruption'),
(63495, 'spell_steelbreaker_static_disruption');

-- ##########################################################
-- Kologarn
-- ##########################################################
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32930);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(32930,46598,0,0,0,1,0,0,0); -- Kologarn - Arm - Ride Vehicle Hardcoded

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (64224,64225,63766,63983);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,64224,18,1,32934, 'Stone Grip Absorb'),
(13,64225,18,1,32934, 'Stone Grip Absorb'),
(13,63766,18,1,32933, 'Arm Sweep (10N) Target'),
(13,63983,18,1,32933, 'Arm Sweep (25N) Target');

UPDATE `creature_template` SET `ScriptName`='npc_kologarn_arm' WHERE `entry` IN (32933,32934);
UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83 WHERE `entry`=33909;

-- Swap trigger model ids
UPDATE `creature_template` SET `modelid1`=1126, `modelid2`=11686 WHERE `entry` IN (33906,33907);

-- Rubble AI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=33768;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33768;
INSERT INTO `smart_scripts` VALUES 
(33768,0,0,0,0,0,100,0x02,5000,15000,5000,15000,11,63818,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rubble - Cast Rumble (10N)'),
(33768,0,1,0,0,0,100,0x04,5000,15000,5000,15000,11,63978,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rubble - Cast Stone Nova (25N)');

-- ##########################################################
-- Auriaya
-- ##########################################################
UPDATE creature_template SET ScriptName = "boss_auriaya" WHERE Entry = 33515;
UPDATE creature_template SET ScriptName = "mob_feral_defender" WHERE Entry = 34035;
UPDATE creature_template SET ScriptName = "mob_sanctum_sentry" WHERE Entry = 34014;
UPDATE creature_template SET ScriptName = "mob_seeping_essence_stalker" WHERE Entry = 34098;

-- Strength of the Pack
DELETE FROM `spell_script_names` WHERE `spell_id`=64381;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64381, 'spell_strength_of_the_pack');

-- ##########################################################
-- Hodir
-- ##########################################################
-- Hodir
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_hodir' WHERE `entry` = 32845;
UPDATE `creature_template` SET `equipment_id` = 1843, `mechanic_immune_mask` = 650854239, `flags_extra` = 1 WHERE `entry` = 32846;

-- Hodir npcs
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_priest' WHERE `entry` IN (32897, 33326, 32948, 33330);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_shaman' WHERE `entry` IN (33328, 32901, 33332, 32950);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_druid' WHERE `entry` IN (33325, 32900, 32941, 33333);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_mage' WHERE `entry` IN (32893, 33327, 33331, 32946);
UPDATE `creature_template` SET `ScriptName` = 'npc_toasty_fire' WHERE `entry` = 33342;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle' WHERE `entry` = 33169;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle_snowdrift' WHERE `entry` = 33173;
UPDATE `creature_template` SET `ScriptName` = 'npc_snowpacked_icicle' WHERE `entry` = 33174;
UPDATE `creature_template` SET `difficulty_entry_1` = 33352, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32926;
UPDATE `creature_template` SET `difficulty_entry_1` = 33353, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32938;
UPDATE `creature_template` SET `mechanic_immune_mask` = 612597599 WHERE `entry` IN (33352, 33353);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 194173;

DELETE FROM spell_script_names WHERE spell_id IN (62038,62039);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62038,'spell_biting_cold'),
(62039,'spell_biting_cold');

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32950, 32941, 32948, 32946, 32938);

-- Rare Cache of Winter
DELETE FROM `gameobject` WHERE `id` IN (194200,194201);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('400007','194200','603','1','1','1966.07','-220.64','432.687','0.465871','0','0','0.230835','0.972993','604800','0','1'),
('400008','194201','603','2','1','1966.07','-220.64','432.687','0.465871','0','0','0.230835','0.972993','604800','0','1');

-- ##########################################################
-- Freya
-- ##########################################################
UPDATE creature_template SET ScriptName = "boss_freya" WHERE Entry = 32906;
UPDATE creature_template SET ScriptName = "mob_detonating_lasher" WHERE Entry = 32918;
UPDATE creature_template SET ScriptName = "mob_ancient_water_spirit" WHERE Entry = 33202;
UPDATE creature_template SET ScriptName = "mob_storm_lasher" WHERE Entry = 32919;
UPDATE creature_template SET ScriptName = "mob_snaplasher" WHERE Entry = 32916;
UPDATE creature_template SET ScriptName = "mob_ancient_conservator" WHERE Entry = 33203;
UPDATE creature_template SET ScriptName = "mob_healthy_spore" WHERE Entry = 33215;
UPDATE creature_template SET ScriptName = "mob_elder_brightleaf" WHERE Entry = 32915;
UPDATE creature_template SET ScriptName = "mob_elder_ironbranch" WHERE Entry = 32913;
UPDATE creature_template SET ScriptName = "mob_elder_stonebark" WHERE Entry = 32914;
UPDATE creature_template SET ScriptName = "mob_unstable_sunbeam" WHERE Entry = 33050;
UPDATE creature_template SET ScriptName = "mob_eonars_gift" WHERE Entry = 33228;
UPDATE creature_template SET ScriptName = "mob_natural_bomb" WHERE entry = 34129;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33168;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33088;
UPDATE creature_template SET ScriptName = "mob_freya_sunbeam" WHERE Entry = 33170;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33168;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33088;
UPDATE creature_template SET faction_A = 16 WHERE Entry = 33168;
UPDATE creature_template SET faction_H = 16 WHERE Entry = 33168;
UPDATE `creature_template` SET `dmg_multiplier`=3.2 WHERE `entry`=32918;
UPDATE `creature_template` SET `dmg_multiplier`=6.4 WHERE `entry`=33399;

DELETE FROM spell_script_names WHERE spell_id IN (62623,62872);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62623, "spell_freya_sunbeam"),
(62872, "spell_freya_sunbeam");
DELETE FROM spell_script_names WHERE spell_id = 64648;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (64648,"spell_freya_natural_bomb_spell");
DELETE FROM spell_script_names WHERE spell_id IN (62524,62525,62521);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62524,"spell_attuned_to_nature_remove"),
(62525,"spell_attuned_to_nature_remove"),
(62521,"spell_attuned_to_nature_remove");
DELETE FROM spell_script_names WHERE spell_id = 62688;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (62688,"spell_summon_wave_effect_10mob");

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62968,65761,62713);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62968, 'spell_elder_essence_targeting'),
(65761, 'spell_elder_essence_targeting'),
(62713, 'spell_elder_essence_targeting');

-- ##########################################################
-- Mimiron
-- ##########################################################
-- Mimiron Tram
UPDATE `gameobject_template` SET `flags` = 32, `data2` = 3000, `ScriptName` = 'go_call_tram' WHERE `entry` IN (194914, 194912, 194437);
DELETE FROM gameobject WHERE id = '194437';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('194437','603','1','1','2306.87','274.237','424.288','1.52255','0','0','0.689847','0.723956','300','0','1');
DELETE FROM gameobject_template WHERE entry = '194438';
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194438','1','8504','Activate Tram','','','','0','32','1','0','0','0','0','0','0','0','0','3000','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','go_call_tram','11159');
DELETE FROM gameobject WHERE id = '194438';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(194438, 603, 1,1,2306.99, 2589.35, 424.382, 4.71676, 0, 0, 0.705559, -0.708651, 300, 0, 1);

-- Mimiron
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_mimiron' WHERE `entry` = 33350;
-- Leviathan MKII
UPDATE `creature_template` SET `vehicleid` = 370, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk' WHERE `entry` = 33432;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34106;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk_turret' WHERE `entry` = 34071;
DELETE FROM vehicle_template_accessory WHERE entry = 33432;
INSERT INTO vehicle_template_accessory VALUE (33432, 34071, 3, 1, 'Leviathan Mk II turret', 8, 0);
UPDATE creature_template SET ScriptName = 'npc_proximity_mine' WHERE entry = 34362;
DELETE FROM `creature_model_info` WHERE `modelid`=28831;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(28831, 0.5, 7, 2, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33432,33651);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33432,46598,0,0,0,1,0,0,0), -- Leviatan MKII - Ride Vehicle Hardcoded
(33651,46598,0,0,0,1,0,0,0); -- VX 001 - Ride Vehicle Hardcoded

-- VX-001
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `vehicleid` = 371, `ScriptName` = 'boss_vx_001' WHERE `entry` = 33651;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34108;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 34050;
UPDATE `creature_template` SET `unit_flags` = 33686020, `flags_extra` = 2 WHERE `entry` = 34211;
UPDATE `creature_template` SET `ScriptName` = 'npc_rocket_strike' WHERE `entry` = 34047;

-- Aerial Command Unit
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'boss_aerial_unit', `vehicleid` = 372 WHERE `entry` = 33670;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34109;
UPDATE `creature_template` SET `ScriptName` = 'npc_magnetic_core' WHERE `entry` = 34068;
UPDATE `creature_template` SET `ScriptName` = 'npc_assault_bot' WHERE `entry` = 34057;
UPDATE `creature_template` SET `difficulty_entry_1` = 34148, `ScriptName` = 'npc_emergency_bot' WHERE `entry` = 34147;

-- HardMode
UPDATE `gameobject_template` SET `flags` = 32, `ScriptName` = 'go_not_push_button' WHERE `entry` = 194739;
UPDATE `creature_template` SET `difficulty_entry_1` = 34361, `ScriptName` = 'npc_frost_bomb' WHERE `entry` = 34149;
UPDATE `creature_template` SET `speed_walk` = 0.15, `speed_run` = 0.15, `ScriptName` = 'npc_mimiron_flame_trigger' WHERE `entry` = 34363;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_flame_spread' WHERE `entry` = 34121;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_bomb_bot' WHERE `entry` = 33836;

-- CleanUp
DELETE FROM creature WHERE id IN (34071, 33856);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 34143;

-- Leviathan Hitpoints
UPDATE `creature_template` SET `exp`=0 WHERE `entry` IN (33432,34071,34106);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63414;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,63414,18,1,33651);

DELETE FROM `spell_script_names` WHERE `spell_id`=63382;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63382, 'spell_rapid_burst');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (64570,65192,64626,65333,64619);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,64570,18,1,34121),
(13,64570,18,1,34363),
(13,65192,18,1,34121),
(13,65192,18,1,34363),
(13,64626,18,1,34121),
(13,64626,18,1,34363),
(13,65333,18,1,34121),
(13,65333,18,1,34363),
(13,64619,18,1,34121),
(13,64619,18,1,34363);

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry` IN (34149,34361);

-- Junk Bot
UPDATE `creature_template` SET `difficulty_entry_1`=34114 WHERE `entry`=33855;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `dmg_multiplier`=15 WHERE `entry`=34114;

-- ##########################################################
-- Thorim
-- ##########################################################
-- Thorim
UPDATE `creature_template` SET `speed_walk` = 1.66667, `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_thorim' WHERE `entry` = 32865;
UPDATE `creature_template` SET `speed_walk` = 1.66667, `baseattacktime` = 1500, `equipment_id` = 1844, `mechanic_immune_mask` = 650854239 WHERE `entry` = 33147;
DELETE FROM `creature` WHERE `id`=32865;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(32865, 603, 3, 1, 28977, 0, 2134.967, -298.962, 438.331, 1.57, 604800, 0, 4183500, 425800, 0, 1);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('62042','62470','1','Thorim: Deafening Thunder');

-- Charge Orb
DELETE FROM conditions WHERE SourceEntry = 62016;
INSERT INTO `conditions` VALUES
('13','0','62016','0','18','1','33378','0','0','',NULL);
UPDATE `creature_template` SET `unit_flags` = 33685508 WHERE `entry` = 33378;

-- Gate
DELETE FROM `gameobject_scripts` WHERE `id`=55194;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(55194, 0, 11, 34155, 15, '0', 0, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry`=194265;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194265','1','295','Lever','','','','35','48','3','0','0','0','0','0','0','0','0','6000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0');
UPDATE `gameobject` SET `id` = 194265, `rotation2` = 1, `rotation3` = 0, `spawntimesecs` = 7200, `animprogress` = 100 WHERE `guid` = 55194;

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32885, 32883, 32908, 32907, 32882, 33110, 32886, 32879, 32892, 33140, 33141, 33378, 32874, 32875)
OR guid IN (136694, 136695, 136666, 136706, 136754, 136653, 136756, 136757, 136725, 136718);

-- Pre adds
UPDATE `creature_template` SET `equipment_id` = 1849, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 33153;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32883;
UPDATE `creature_template` SET `equipment_id` = 1847 WHERE `entry` = 33152;
UPDATE `creature_template` SET `equipment_id` = 1850, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32908;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 33151;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32907;
UPDATE `creature_template` SET `equipment_id` = 1852 WHERE `entry` = 33150;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32882;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32886;
UPDATE `creature_template` SET `modelid1` = 16925, `modelid2` = 0 WHERE `entry`IN (33378, 32892);

-- Thorim Mini bosses
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_runic_colossus' WHERE `entry` = 32872;
UPDATE `creature_template` SET `ScriptName`='npc_runic_smash' WHERE `entry`=33140;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_ancient_rune_giant' WHERE `entry` = 32873;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_sif' WHERE `entry` = 33196;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_arena_phase' WHERE `entry` IN (32876, 32904, 32878, 32877, 32874, 32875, 33110);
DELETE FROM `creature_addon` WHERE `guid`IN (136059, 136816);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('136059','0','0','0','1','0','40775 0'),
('136816','0','0','0','1','0','40775 0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62942,62466,62976,64098);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13, 62942, 18, 1, 33110),
(13, 62942, 18, 1, 32874),
(13, 62942, 18, 1, 32872),
(13, 62942, 18, 1, 32875),
(13, 62466, 18, 1, 32780),
(13, 64098, 18, 1, 32865),
(13, 62976, 18, 1, 34055);

UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=34055;

-- thorim - lightning orb (temporary)
UPDATE `creature_template` SET `speed_run`=9.6, `dmg_multiplier`=200, `baseattacktime`=1000, `Health_mod`=100 WHERE `entry`=33138;

DELETE FROM `spell_script_names` WHERE `spell_id`=62042;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62042, 'spell_stormhammer_targeting');

UPDATE `creature_template` SET `dmg_multiplier`=20 WHERE `entry`=32865;
UPDATE `creature_template` SET `dmg_multiplier`=40 WHERE `entry`=33147;
UPDATE `creature` SET `position_z`=440.331 WHERE `id`=32865;

-- ##########################################################
-- General Vezax
-- ##########################################################
UPDATE creature_template SET scriptname = 'boss_general_vezax' WHERE entry = 33271;
UPDATE creature_template SET scriptname = 'mob_saronit_varpor' WHERE entry = 33488;
UPDATE creature_template SET scriptname = 'mob_saronit_animus' WHERE entry = 33524;
DELETE FROM spell_script_names WHERE spell_id = 62692;
INSERT INTO spell_script_names VALUE (62692,'spell_general_vezax_aura_of_despair_aura');
DELETE FROM spell_script_names WHERE spell_id = 63276;
INSERT INTO spell_script_names VALUE (63276,'spell_general_vezax_mark_of_the_faceless_aura');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63322;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,63322,18,1,0);

DELETE FROM `spell_script_names` WHERE `spell_id`=63278;
INSERT INTO `spell_script_names` VALUE (63278, 'spell_general_vezax_mark_of_the_faceless_drain');

-- run speed
UPDATE `creature_template` SET `speed_run`=1.42857, `baseattacktime`=1500 WHERE `entry` IN (33271,33449);

-- ##########################################################
-- Yogg-Saron
-- ##########################################################

-- Spawns of Keeper to activate Non-Hardmode
/*
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('603001','33241','603','3','1','0','0','1939.44','42.0398','411.357','5.17473','300','0','0','14433076','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('603002','33244','603','3','1','0','0','2036.3','25.0515','411.359','3.88826','300','0','0','14433076','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('603003','33242','603','3','1','0','0','2036.67','-73.2069','411.355','2.36615','300','0','0','14433076','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('603004','33213','603','3','1','0','0','1939.91','-90.005','411.357','0.976747','300','0','0','14433076','0','0','0','0','0');
*/


UPDATE creature_template SET scriptname = 'boss_sara' WHERE entry = 33134;
UPDATE script_texts SET npc_entry = 33134 WHERE npc_entry = 33288 AND entry IN (-1603330,-1603331,-1603332,-1603333);
UPDATE script_texts SET content_default = "Help me! Please get them off me!" WHERE npc_entry = 33134 AND entry = -1603310;
UPDATE script_texts SET content_default = "What do you want from me? Leave me alone!" WHERE npc_entry = 33134 AND entry = -1603311;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 33134;
UPDATE creature_template SET scriptname = 'npc_ominous_cloud' WHERE entry = 33292;
UPDATE creature_template SET scriptname = 'npc_guardian_of_yogg_saron' WHERE entry = 33136;
UPDATE creature_template SET scriptname = 'npc_yogg_saron_tentacle' WHERE entry in (33966,33985,33983);
UPDATE creature_template SET scriptname = 'npc_descend_into_madness' WHERE entry = 34072;
UPDATE creature_template SET scriptname = 'npc_brain_of_yogg_saron' WHERE entry = 33890;
UPDATE creature_template SET scriptname = 'boss_yogg_saron' WHERE entry = 33288;
UPDATE creature_template SET scriptname = 'npc_influence_tentacle' WHERE entry in (33716,33720,33719,33717,33433,33567);
UPDATE creature_template SET scriptname = 'npc_immortal_guardian' WHERE entry = 33988;
UPDATE creature_template SET scriptname = 'npc_support_keeper' WHERE entry in (33410,33411,33412,33413);
UPDATE creature_template SET scriptname = 'npc_sanity_well' WHERE entry = 33991;
UPDATE creature_template SET modelid1 = 11686, modelid2 = 11686 WHERE entry = 33991;
UPDATE creature_template SET scriptname = 'npc_death_orb' WHERE entry = 33882;
UPDATE creature_template SET modelid1 = 16946, modelid2 = 16946 WHERE entry = 33882;
UPDATE creature_template SET scriptname = 'npc_death_ray' WHERE entry = 33881;
UPDATE creature_template SET modelid1 = 17612, modelid2 = 17612 WHERE entry = 33881;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, scriptname = 'npc_laughting_skull' WHERE entry = 33990;
UPDATE creature_template SET modelid1 = 15880, modelid2 = 15880 WHERE entry = 33990;
UPDATE creature_template SET scriptname = 'npc_keeper_help' WHERE entry IN(33241,33244,33242,33213);
UPDATE `creature_template` SET `minlevel`=80  , `maxlevel`=80 WHERE `entry` = 33943;
UPDATE gameobject_template SET scriptname = 'go_flee_to_surface' WHERE entry = 194625;
UPDATE item_template SET scriptname = 'item_unbound_fragments_of_valanyr' WHERE entry = 45896;

UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (33134,34332,33890,33954);

-- Secound Damage Effekt of ShadowNova only on other Guardians or Sara
DELETE FROM conditions WHERE SourceEntry = 65209;
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,65209,0,18,1,33136,0,0,'','Effekt only for Guardian of YoggSaron'),
(13,0,65209,0,18,1,33134,0,0,'','Effekt only for Sara');

DELETE FROM gameobject WHERE id = 194625;
INSERT INTO gameobject 
(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES 
(603001, 194625, 603, 3, 1, 2001.40, -59.66, 245.07, 0, 0, 0, 0, 0, 60, 100, 1),
(603002, 194625, 603, 3, 1, 1941.61, -25.88, 244.98, 0, 0, 0, 0, 0, 60, 100, 1),
(603003, 194625, 603, 3, 1, 2001.18,  9.409, 245.24, 0, 0, 0, 0, 0, 60, 100, 1);

-- Auren shouldnt hit other friendly NPCs
DELETE FROM spell_script_names WHERE spell_id IN (62670,62671,62702,62650);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62670,'spell_keeper_support_aura_targeting'),
(62671,'spell_keeper_support_aura_targeting'),
(62702,'spell_keeper_support_aura_targeting'),
(62650,'spell_keeper_support_aura_targeting');

-- Script for Target Faces Caster
DELETE FROM spell_script_names WHERE spell_id IN (64164,64168);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64164,'spell_lunatic_gaze_targeting'),
(64168,'spell_lunatic_gaze_targeting');

-- Trigger Effekt on Near Player with Brain Link 
DELETE FROM spell_script_names WHERE spell_id IN (63802);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63802,'spell_brain_link_periodic_dummy');

-- Needed for Titanic Storm
-- Script for Target have Weakened Aura
DELETE FROM spell_script_names WHERE spell_id IN (64172);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64172,'spell_titanic_storm_targeting');

-- Condition because NPCs need this else no hit
DELETE FROM conditions WHERE SourceEntry in (64172,64465);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64172,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians'),
(13,0,64465,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians');

-- Spell Target - Induce Madness
DELETE FROM conditions WHERE SourceEntry = 64059;
INSERT INTO conditions VALUES
(13,0,64059,0,18,1,0,0,0,'','Induce Madness - on Players');

-- Hodir Secound Aura Script
DELETE FROM spell_script_names WHERE spell_id IN (64174);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64174,'spell_hodir_protective_gaze');

-- Insane Death trigger on Remove
DELETE FROM spell_script_names WHERE spell_id IN (63120);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63120,'spell_insane_death_effekt');

-- Deathray Effekt on Death Orb
DELETE FROM conditions WHERE SourceEntry IN (63882,63886);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,63882,0,18,1,33882,0,0,'','Effekt on Death Orb'),
(13,0,63886,0,18,1,33882,0,0,'','Effekt on Death Orb');

-- Correct Summon Position of Tentacle
DELETE FROM spell_script_names WHERE spell_id IN (64139,64143,64133);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64139,'spell_summon_tentacle_position'),
(64143,'spell_summon_tentacle_position'),
(64133,'spell_summon_tentacle_position');

-- Heal Trigger for Empowering Shadows
DELETE FROM spell_script_names WHERE spell_id IN (64466);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64466,'spell_empowering_shadows');

-- Create Val'anyr on Yogg-Saron
DELETE FROM conditions WHERE SourceEntry IN (64184);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64184,0,18,1,33288,0,0,'','Effekt on YoggSaron');
-- Missing Says Vision
DELETE FROM script_texts WHERE entry BETWEEN -1603360 AND -1603342;
INSERT INTO script_texts (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33436,-1603342,'Bad news sire.',15538,0,0,0,'Garona KingLlaneVision_Say1'),
(33436,-1603343,'The clans are united under Blackhand in this assault. They will stand together until Stormwind has fallen.',15539,0,0,0,'Garona KingLlaneVision_Say2'),
(33436,-1603344,'Gul\'dan is bringing up his warlocks by nightfall. Until then, the Blackrock clan will be trying to take the Eastern Wall.',15540,0,0,0,'Garona KingLlaneVision_Say3'),
(33288,-1603345,'A thousand deaths... or one murder.',15762,0,0,0,'YoggSaron KingLlaneVision_Say1'),
(33288,-1603346,'',15763,0,0,0,'YoggSaron KingLlianeVision_Say2'),
(33437,-1603347,'We will hold until the reinforcements come. As long as men with stout hearts are manning the walls and throne Stormwind will hold.',15585,0,0,0,'KingLlane KingLlaneVision_Say'),
(33436,-1603348,'The orc leaders agree with your assessment.',15541,0,0,0,'Garona KingLlaneVision_Say4'),
(33288,-1603349,'Your petty quarrels only make me stronger!',15764,0,0,0,'YoggSaron KingLlaneVision_Say3'),

(33441,-1603350,'Your resilience is admirable.',15598,0,0,0,'TheLichKing LichKingVision_Say1'),
(33442,-1603351,'Arrrrrrgh!',15470,1,0,0,'ImmolatedChampion LichKingVision_Say1'),
(33442,-1603352,'I\'m not afraid of you!',15471,0,0,0,'ImmolatedChampion LichKingVision_Say2'),
(33441,-1603353,'I will break you as I broke him.',15599,0,0,0,'TheLichKing LichKingVision_Say2'),
(33288,-1603354,'Yrr n\'lyeth... shuul anagg!',15766,0,0,0,'YoggSaron LichKingVision_Say1'),
(33288,-1603355,'He will learn... no king rules forever, only death is eternal!',15767,0,0,0,'YoggSaron LichKingVision_Say2'),

(33523,-1603356,'It is done... All have been given that which must be given. I now seal the Dragon Soul forever...',15631,0,0,0,'Neltharion DragonSoulVision_Say1'),
(33495,-1603357,'That terrible glow... should that be?',15702,0,0,0,'Ysera DragonSoulVision_Say'),
(33523,-1603358,'For it to be as it must, yes.',15632,0,0,0,'Neltharion DragonSoulVision_Say2'),
(33535,-1603359,'It is a weapon like no other. It must be like no other.',15610,0,0,0,'Malygos DragonSoulVision_Say'),
(33288,-1603360,'His brood learned their lesson before too long, you shall soon learn yours!',15765,0,0,0,'YoggSaron DragonSoulVision_Say1');

-- For Achievement In his House he waits dreaming
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10321,10322,10323,10324,10325,10326);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10321,18,0,0,''),(10322,18,0,0,''),
(10323,18,0,0,''),(10324,18,0,0,''),
(10325,18,0,0,''),(10326,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10321,10322,10323,10324,10325,10326);

-- Brain of Yogg-Saron
UPDATE `creature_template` SET `difficulty_entry_1`=33954 WHERE `entry`=33890;

-- Guardian of Yogg-Saron
UPDATE `creature_template` SET `difficulty_entry_1`=33968 WHERE `entry`=33136;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33136;
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82, `faction_A`=16, `faction_H`=16, `speed_walk`=1.6, `speed_run`=1.71429, `unit_flags`=32768, `AIName`='' WHERE `entry`=33968;
UPDATE `creature_template` SET `dmg_multiplier`=35 WHERE `entry`=33136;
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=33968;

-- Immortal Guardian
UPDATE `creature_template` SET `difficulty_entry_1`=33989 WHERE `entry`=33988;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33988;
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82 WHERE `entry`=33989;
UPDATE `creature_template` SET `dmg_multiplier`=4 WHERE `entry`=33988;
UPDATE `creature_template` SET `dmg_multiplier`=6 WHERE `entry`=33989;

-- Constrictor Tentacle
UPDATE `creature_template` SET `difficulty_entry_1`=33984 WHERE `entry`=33983;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33983;
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82 WHERE `entry`=33984;

-- Corruptor Tentacle
UPDATE `creature_template` SET `difficulty_entry_1`=33986 WHERE `entry`=33985;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33985;
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82 WHERE `entry`=33986;

-- Crusher Tentacle
UPDATE `creature_template` SET `difficulty_entry_1`=33967 WHERE `entry`=33966;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33966;
UPDATE `creature_template` SET `minlevel`=81, `maxlevel`=81 WHERE `entry`=33967;
UPDATE `creature_template` SET `dmg_multiplier`=15 WHERE `entry`=33966;
UPDATE `creature_template` SET `dmg_multiplier`=30 WHERE `entry`=33967;

-- ##########################################################
-- Algalon
-- ##########################################################

-- For Achievement He Feeds on your Tears
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10568,10570);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10568,18,0,0,''),
(10570,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10568,10570);

-- spawn algalon
DELETE FROM `creature` WHERE `id`=32871;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('302616','32871','603','3','1','0','0','1632.36','-310.093','417.321','1.8445','604800','0','0','34862500','0','0','0','0','0');

-- set to friendly by default
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `flags_extra`=1 WHERE `entry` IN (32871,33070);

UPDATE `creature_template` SET `ScriptName`='npc_black_hole' WHERE `entry`=32953;
UPDATE `creature_template` SET `ScriptName`='npc_living_constellation' WHERE `entry`=33052;

-- spawn 'Celestial Planetarium Access'
DELETE FROM `gameobject` WHERE `id`= 194628;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES (400002, 194628, 603, 3, 1, 1649.49, -174.711, 427.257, 1.5708, 0, 0, 0, 0, 180, 0, 1);

UPDATE `gameobject_template` SET `data0`=0, `ScriptName`='go_planetarium_access' WHERE `entry`=194628;

DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (62169,-64412);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(64417,62169,2, 'Phase Punch - Trigger Black Hole Dot'),
(62168,62169,2, 'Black Hole - Trigger Black Hole Dot'),
(64417,-64412,1, 'Phase Punch - Remove Phase Punch');

UPDATE `gameobject` SET `phaseMask`=17 WHERE `id` IN (194910,194715,194148);

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `unit_flags`=6, `InhabitType`=7, `AIName`='SmartAI', `flags_extra`=130 WHERE `entry`=33104;
UPDATE `creature_template` SET `unit_flags`=512, `flags_extra`=130 WHERE `entry`=33105;
UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83 WHERE `entry` IN (33104,33070);

DELETE FROM `smart_scripts` WHERE `entryorguid`=33104;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33104,0,0,0,1,0,100,3,4000,4000,0,0,11,62304,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Algalon Asteroid - Cast Cosmic Smash 10N'),
(33104,0,1,0,1,0,100,5,4000,4000,0,0,11,64597,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Algalon Asteroid - Cast Cosmic Smash 25N');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62304,64597,64996);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,62304,18,1,33105),
(13,64597,18,1,33105),
(13,64996,18,1,34246);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62301,64598,62293,62295,62311,64596,64597,64445,62168,64417);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62301, 'spell_cosmic_smash'),
(64598, 'spell_cosmic_smash'),
(62293, 'spell_cosmic_smash_summon_trigger'),
(62295, 'spell_cosmic_smash_summon_target'),
(62311, 'spell_cosmic_smash_dmg'),
(64596, 'spell_cosmic_smash_dmg'),
(64597, 'spell_cosmic_smash_missile_target'),
(64445, 'spell_remove_player_from_phase'),
(62168, 'spell_algalon_phased'),
(64417, 'spell_algalon_phased');

-- Dark Matter
SET @GUID := 302685;

DELETE FROM `creature` WHERE `id`=33089;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID,'33089','603','3','16','0','0','1607.99','-289.992','417.321','5.89086','10','10','0','37800','0','1','0','0','0'),
(@GUID+1,'33089','603','3','16','0','0','1620.23','-280.533','417.321','5.6097','10','10','0','37800','0','1','0','0','0'),
(@GUID+2,'33089','603','3','16','0','0','1638.33','-278.895','417.321','4.49364','10','10','0','37800','0','1','0','0','0'),
(@GUID+3,'33089','603','3','16','0','0','1654.22','-288.583','417.321','4.0656','10','10','0','37800','0','1','0','0','0'),
(@GUID+4,'33089','603','3','16','0','0','1661.51','-309.099','417.321','4.28944','10','10','0','37800','0','1','0','0','0'),
(@GUID+5,'33089','603','3','16','0','0','1653.98','-327.001','417.321','3.5598','10','10','0','37800','0','1','0','0','0'),
(@GUID+6,'33089','603','3','16','0','0','1640.12','-336.194','417.321','1.68663','10','10','0','37800','0','1','0','0','0'),
(@GUID+7,'33089','603','3','16','0','0','1621.68','-333.91','417.321','2.40134','10','10','0','37800','0','1','0','0','0'),
(@GUID+8,'33089','603','3','16','0','0','1605.45','-320.182','417.321','0.444129','10','10','0','37800','0','1','0','0','0'),
(@GUID+9,'33089','603','3','16','0','0','1602.23','-303.377','417.321','6.13041','10','10','0','37800','0','1','0','0','0'),
(@GUID+10,'33089','603','3','16','0','0','1617.7','-309.616','417.321','0.204581','10','10','0','37800','0','1','0','0','0'),
(@GUID+11,'33089','603','3','16','0','0','1623.68','-295.429','417.321','5.30967','10','10','0','37800','0','1','0','0','0'),
(@GUID+12,'33089','603','3','16','0','0','1641.17','-296.46','417.321','4.12137','10','10','0','37800','0','1','0','0','0'),
(@GUID+13,'33089','603','3','16','0','0','1644.9','-313.288','417.321','2.7587','10','10','0','37800','0','1','0','0','0'),
(@GUID+14,'33089','603','3','16','0','0','1630.54','-319.732','417.321','1.53034','10','10','0','37800','0','1','0','0','0'),
(@GUID+15,'33089','603','3','16','0','0','1633.07','-306.294','417.321','1.53505','10','10','0','37800','0','1','0','0','0');

UPDATE `creature_template` SET `dmg_multiplier`=4 WHERE `entry`=33089;
UPDATE `creature_template` SET `dmg_multiplier`=7 WHERE `entry`=34221;
UPDATE `creature_template` SET `dmg_multiplier`=12 WHERE `entry`=34097;
UPDATE `creature_template` SET `dmg_multiplier`=20 WHERE `entry`=34222;

-- Prequest
SET @GUID := 302683;

DELETE FROM `creature` WHERE `id` IN (33956,33957);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID,'33956','603','1','1','0','0','1444.86','112.472','423.641','2.71061','300','0','0','75600','0','0','0','0','0'),
(@GUID+1,'33957','603','2','1','0','0','1443.35','123.526','423.641','3.67446','300','0','0','75600','0','0','0','0','0');

UPDATE `quest_template` SET `PrevQuestId`=13604 WHERE `entry`=13607;
UPDATE `quest_template` SET `PrevQuestId`=13607, `NextQuestId`=13614, `ExclusiveGroup`=-13606 WHERE `entry`=13606;
UPDATE `quest_template` SET `PrevQuestId`=13607, `NextQuestId`=13614, `ExclusiveGroup`=-13606 WHERE `entry`=13609;
UPDATE `quest_template` SET `PrevQuestId`=13607, `NextQuestId`=13614, `ExclusiveGroup`=-13606 WHERE `entry`=13610;
UPDATE `quest_template` SET `PrevQuestId`=13607, `NextQuestId`=13614, `ExclusiveGroup`=-13606 WHERE `entry`=13611;

UPDATE `quest_template` SET `PrevQuestId`=13817 WHERE `entry`=13816;
UPDATE `quest_template` SET `PrevQuestId`=13816, `NextQuestId`=13818, `ExclusiveGroup`=-13821 WHERE `entry`=13821;
UPDATE `quest_template` SET `PrevQuestId`=13816, `NextQuestId`=13818, `ExclusiveGroup`=-13821 WHERE `entry`=13822;
UPDATE `quest_template` SET `PrevQuestId`=13816, `NextQuestId`=13818, `ExclusiveGroup`=-13821 WHERE `entry`=13823;
UPDATE `quest_template` SET `PrevQuestId`=13816, `NextQuestId`=13818, `ExclusiveGroup`=-13821 WHERE `entry`=13824;

-- ##########################################################
-- Various
-- ##########################################################

-- Add passive Flag to various Ulduar triggers
UPDATE creature_template SET unit_flags = unit_flags|512 WHERE entry IN (
33054, -- Thorim Trap Bunny
33500, -- Vezax Bunny
33575, -- Channel Stalker Freya
33661, -- Armsweep Stalker Kologarn
34188, -- Razorscale Devouring Flame Stalker
34189, -- Razorscale Devouring Flame Stalker (heroic)
34098, -- Auriaya Seeping Essence Stalker
34174, -- Auriaya Seeping Essence Stalker (heroic)
33809, -- Rubble Stalker Kologarn
33942, -- Rubble Stalker Kologarn (heroic)
33571, -- Ulduar Gauntlet Generator
34159  -- Ulduar Gauntlet Generator (small radius)
);

-- Remove NON_SELECTABLE from Clockwork Mechanic
UPDATE creature_template SET unit_flags = unit_flags &~ 33554432 WHERE entry = 34184;

-- Ignis
UPDATE `creature_template` SET `mingold`=1190671, `maxgold`=1190671 WHERE `entry`=33118;
UPDATE `creature_template` SET `mingold`=1190671*2.5, `maxgold`=1190671*2.5 WHERE `entry`=33190;
-- Razorscale
UPDATE `creature_template` SET `mingold`=325206, `maxgold`=325206 WHERE `entry`=33186;
UPDATE `creature_template` SET `mingold`=325206*2.5, `maxgold`=325206*2.5 WHERE `entry`=33724;
-- XT-002
UPDATE `creature_template` SET `mingold`=713762, `maxgold`=713762 WHERE `entry`=33293;
UPDATE `creature_template` SET `mingold`=713762*2.5, `maxgold`=713762*2.5 WHERE `entry`=33885;
-- Steelbreaker
UPDATE `creature_template` SET `mingold`=1717186, `maxgold`=1717186 WHERE `entry`=32867;
UPDATE `creature_template` SET `mingold`=1717186*2.5, `maxgold`=1717186*2.5 WHERE `entry`=33693;
-- Molgeim
UPDATE `creature_template` SET `mingold`=1763054, `maxgold`=1763054 WHERE `entry`=32927;
UPDATE `creature_template` SET `mingold`=1763054*2.5, `maxgold`=1763054*2.5 WHERE `entry`=33692;
-- Brundir
UPDATE `creature_template` SET `mingold`=1791922, `maxgold`=1791922 WHERE `entry`=32857;
UPDATE `creature_template` SET `mingold`=1791922*2.5, `maxgold`=1791922*2.5 WHERE `entry`=33694;
-- Auriaya
UPDATE `creature_template` SET `mingold`=1366181, `maxgold`=1366181 WHERE `entry`=33515;
UPDATE `creature_template` SET `mingold`=1366181*2.5, `maxgold`=1366181*2.5 WHERE `entry`=34175;
-- Vezax
UPDATE `creature_template` SET `mingold`=1810711, `maxgold`=1810711 WHERE `entry`=33271;
UPDATE `creature_template` SET `mingold`=1810711*2.5, `maxgold`=1810711*2.5 WHERE `entry`=33449;
-- Yogg-Saron
UPDATE `creature_template` SET `mingold`=2128378, `maxgold`=2128378 WHERE `entry`=33288;
UPDATE `creature_template` SET `mingold`=2128378*2.5, `maxgold`=2128378*2.5 WHERE `entry`=33955;

-- herb and mineral respawn
UPDATE `gameobject` SET `spawntimesecs`=604800 WHERE `map`=603 AND `spawntimesecs`=3600;

-- Yogg-Saron brain Interrupt Immune ( 501ac1b297e903800de2df63a34e2b5675c9fc26 )
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`| 650805115 WHERE `entry` IN (33890,33954);

-- Add Stun-Immune to XT-002 Heart; 2048 = MECHANIC_STUN
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 2048 WHERE `entry` IN (
33995, -- Heart of the Deconstructor (Heroic)
33329  -- Heart of the Deconstructor
);
UPDATE `creature_template` SET `flags_extra` = 1  WHERE `entry`=33661;

-- Size adjustment on a hand-made template
UPDATE `gameobject_template` SET `size`=2, `WDBVerified`=-1 WHERE `entry`=194328;
-- Add some missing templates, need WDB data (data1/lootId is guessed based on logic sequence, rest is copied based on other templates of the chest)
DELETE FROM `gameobject_template` WHERE `entry` IN(194326,194329,194330);
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`size`,`data0`,`data1`,`data3`,`data11`,`data13`,`data15`,`WDBVerified`) VALUES
(194326,3,8628,'Freya\'s Gift',2,1634,27080,1,1,1,1,-1),
(194329,3,8628,'Freya\'s Gift',2,1634,27082,1,1,1,1,-1),
(194330,3,8628,'Freya\'s Gift',2,1634,27083,1,1,1,1,-1);
UPDATE `gameobject_template` SET `ScriptName`= 'go_massive_seaforium_charge' WHERE `entry` IN (195235,195331);
-- 25 man chest loot IDs
UPDATE `gameobject_template` SET `data1`=26961 WHERE `entry`=194330;
UPDATE `gameobject_template` SET `data1`=26960 WHERE `entry`=194329;
UPDATE `gameobject_template` SET `data1`=26959 WHERE `entry`=194328;
DELETE FROM `linked_respawn` WHERE `linkedGuid`=126982 AND `guid` IN (126978,126971,126977,126969,126968);
INSERT INTO `linked_respawn` (`guid`, `linkedGuid`) VALUES
(126978, 126982),
(126971, 126982),
(126977, 126982),
(126969, 126982),
(126968, 126982);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62324,63847,64677);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62324, 'spell_throw_passenger'),
(63847, 'spell_flame_leviathan_flame_vents'),
(64677, 'spell_shield_generator');
UPDATE `creature_template` SET `ScriptName`='npc_flame_leviathan_seat' WHERE `entry`=33114;
UPDATE `creature_template` SET `ScriptName`='npc_flame_leviathan_defense_cannon' WHERE `entry`=33139;
UPDATE `creature_template` SET `ScriptName`='npc_flame_leviathan_defense_turret' WHERE `entry`=33142;
UPDATE `creature_template` SET `ScriptName`='npc_flame_leviathan_overload_device' WHERE `entry`=33143;

-- UPDATE `creature_template` SET `VehicleId`=387 WHERE `entry`=33113; -- 10N
-- UPDATE `creature_template` SET `VehicleId`=340 WHERE `entry`=34003; -- 25N
UPDATE `creature_template` SET `VehicleId`=340 WHERE `entry`=33113;

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (33113,33114);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(33113,33114,0,1,'Flame Leviathan',6,30000),
(33113,33114,1,1,'Flame Leviathan',6,30000),
(33113,33114,2,1,'Flame Leviathan',6,30000),
(33113,33114,3,1,'Flame Leviathan',6,30000),
(33113,33139,7,1,'Flame Leviathan',6,30000),
(33114,33142,1,1,'Flame Leviathan Seat',6,30000),
(33114,33143,2,1,'Flame Leviathan Seat',6,30000);
-- Template updates for creature 30560 (The RP-GG)
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=30560; -- The RP-GG
-- Addon data for creature 30560 (The RP-GG)
DELETE FROM `creature_template_addon` WHERE `entry`=30560;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30560,0,0,1,0, NULL); -- The RP-GG
 
-- Fixing spawntime for creature 30560 (The RP-GG)
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`=30560;

-- Spellclick data for creature 30560 (The RP-GG)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30560;
INSERT INTO `npc_spellclick_spells` VALUES
(30560,57347,0,0,0,1,0,57348,1);

DELETE FROM `spell_script_names` WHERE `spell_id` IN(63018,65121,64234,63024,62791);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63018,'spell_xt002_searing_light_spawn_life_spark'),
(65121,'spell_xt002_searing_light_spawn_life_spark'),
(64234,'spell_xt002_gravity_bomb_spawn_void_zone'),
(63024,'spell_xt002_gravity_bomb_spawn_void_zone'),
(62791,'spell_xt002_heart_overload_periodic');

DELETE FROM `spell_dbc` WHERE `Id`=62791;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`Comment`) VALUES (62791,3,'XT-002 Heart Overload Trigger Spell');

DELETE FROM `vehicle_template_accessory` WHERE `entry`=33293;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(33293,33329,0,1,'XT-002 Deconstructor - Heart',6,30000);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=33293;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33293,63852,0,0,0,1,0,0,0);

-- Template updates for creature 33293 (XT-002 Deconstructor)
UPDATE `creature_template` SET `speed_run`=1.7142857142857 WHERE `entry`=33293; -- XT-002 Deconstructor
-- Model data 28611 (creature 33293 (XT-002 Deconstructor))
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1,`gender`=2 WHERE `modelid`=28611; -- XT-002 Deconstructor
-- Addon data for creature 33293 (XT-002 Deconstructor)
DELETE FROM `creature_template_addon` WHERE `entry`=33293;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33293,0,0,1,0, NULL); -- XT-002 Deconstructor
DELETE FROM `spell_scripts` WHERE `id` IN(37751,37752);	-- Remove redundant data from spell_scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN(37751,37752);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(37751,'spell_xt002_submerged'),
(37752,'spell_xt002_stand');
UPDATE creature_template SET scriptname = 'boss_sara' WHERE entry = 33134;
UPDATE script_texts SET npc_entry = 33134 WHERE npc_entry = 33288 AND entry IN (-1603330,-1603331,-1603332,-1603333);
UPDATE script_texts SET content_default = "Help me! Please get them off me!" WHERE npc_entry = 33134 AND entry = -1603310;
UPDATE script_texts SET content_default = "What do you want from me? Leave me alone!" WHERE npc_entry = 33134 AND entry = -1603311;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 33134;
UPDATE creature_template SET scriptname = 'npc_ominous_cloud' WHERE entry = 33292;
UPDATE creature_template SET scriptname = 'npc_guardian_of_yogg_saron' WHERE entry = 33136;
UPDATE creature_template SET scriptname = 'npc_yogg_saron_tentacle' WHERE entry in (33966,33985,33983);
UPDATE creature_template SET scriptname = 'npc_descend_into_madness' WHERE entry = 34072;
UPDATE creature_template SET scriptname = 'npc_brain_of_yogg_saron' WHERE entry = 33890;
UPDATE creature_template SET scriptname = 'boss_yogg_saron' WHERE entry = 33288;
UPDATE creature_template SET scriptname = 'npc_influence_tentacle' WHERE entry in (33716,33720,33719,33717,33433,33567);
UPDATE creature_template SET scriptname = 'npc_immortal_guardian' WHERE entry = 33988;
UPDATE creature_template SET scriptname = 'npc_support_keeper' WHERE entry in (33410,33411,33412,33413);
UPDATE creature_template SET scriptname = 'npc_sanity_well' WHERE entry = 33991;
UPDATE creature_template SET modelid1 = 11686, modelid2 = 11686 WHERE entry = 33991;
UPDATE creature_template SET scriptname = 'npc_death_orb' WHERE entry = 33882;
UPDATE creature_template SET modelid1 = 16946, modelid2 = 16946 WHERE entry = 33882;
UPDATE creature_template SET scriptname = 'npc_death_ray' WHERE entry = 33881;
UPDATE creature_template SET modelid1 = 17612, modelid2 = 17612 WHERE entry = 33881;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, scriptname = 'npc_laughting_skull' WHERE entry = 33990;
UPDATE creature_template SET modelid1 = 15880, modelid2 = 15880 WHERE entry = 33990;
UPDATE creature_template SET scriptname = 'npc_keeper_help' WHERE entry IN(33241,33244,33242,33213);
UPDATE `creature_template` SET `minlevel`=80  , `maxlevel`=80 WHERE `entry` = 33943;

UPDATE gameobject_template SET scriptname = 'go_flee_to_surface' WHERE entry = 194625;
UPDATE item_template SET scriptname = 'item_unbound_fragments_of_valanyr' WHERE entry = 45896;

UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (33134,34332,33890,33954);

-- Secound Damage Effekt of ShadowNova only on other Guardians or Sara
DELETE FROM conditions WHERE SourceEntry = 65209;
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,65209,0,18,1,33136,0,0,'','Effekt only for Guardian of YoggSaron'),
(13,0,65209,0,18,1,33134,0,0,'','Effekt only for Sara');

DELETE FROM gameobject WHERE id = 194625;
INSERT INTO gameobject
(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES
(603001, 194625, 603, 3, 1, 2001.40, -59.66, 245.07, 0, 0, 0, 0, 0, 60, 100, 1),
(603002, 194625, 603, 3, 1, 1941.61, -25.88, 244.98, 0, 0, 0, 0, 0, 60, 100, 1),
(603003, 194625, 603, 3, 1, 2001.18,  9.409, 245.24, 0, 0, 0, 0, 0, 60, 100, 1);

-- Auren shouldnt hit other friendly NPCs
DELETE FROM spell_script_names WHERE spell_id IN (62670,62671,62702,62650);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62670,'spell_keeper_support_aura_targeting'),
(62671,'spell_keeper_support_aura_targeting'),
(62702,'spell_keeper_support_aura_targeting'),
(62650,'spell_keeper_support_aura_targeting');

-- Script for Target Faces Caster
DELETE FROM spell_script_names WHERE spell_id IN (64164,64168);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64164,'spell_lunatic_gaze_targeting'),
(64168,'spell_lunatic_gaze_targeting');

-- Trigger Effekt on Near Player with Brain Link
DELETE FROM spell_script_names WHERE spell_id IN (63802);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63802,'spell_brain_link_periodic_dummy');

-- Needed for Titanic Storm
-- Script for Target have Weakened Aura
DELETE FROM spell_script_names WHERE spell_id IN (64172);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64172,'spell_titanic_storm_targeting');

-- Condition because NPCs need this else no hit
DELETE FROM conditions WHERE SourceEntry in (64172,64465);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64172,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians'),
(13,0,64465,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians');

-- Hodir Secound Aura Script
DELETE FROM spell_script_names WHERE spell_id IN (64174);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64174,'spell_hodir_protective_gaze');

-- Insane Death trigger on Remove
DELETE FROM spell_script_names WHERE spell_id IN (63120);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63120,'spell_insane_death_effekt');

-- Deathray Effekt on Death Orb
DELETE FROM conditions WHERE SourceEntry IN (63882,63886);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,63882,0,18,1,33882,0,0,'','Effekt on Death Orb'),
(13,0,63886,0,18,1,33882,0,0,'','Effekt on Death Orb');

-- Correct Summon Position of Tentacle
DELETE FROM spell_script_names WHERE spell_id IN (64139,64143,64133);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64139,'spell_summon_tentacle_position'),
(64143,'spell_summon_tentacle_position'),
(64133,'spell_summon_tentacle_position');

-- Heal Trigger for Empowering Shadows
DELETE FROM spell_script_names WHERE spell_id IN (64466);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64466,'spell_empowering_shadows');

-- Create Val'anyr on Yogg-Saron
DELETE FROM conditions WHERE SourceEntry IN (64184);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64184,0,18,1,33288,0,0,'','Effekt on YoggSaron');

-- Missing Says Vision
DELETE FROM script_texts WHERE entry BETWEEN -1603360 AND -1603342;
INSERT INTO script_texts (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33436,-1603342,'Bad news sire.',15538,0,0,0,'Garona KingLlaneVision_Say1'),
(33436,-1603343,'The clans are united under Blackhand in this assault. They will stand together until Stormwind has fallen.',15539,0,0,0,'Garona KingLlaneVision_Say2'),
(33436,-1603344,'Gul\'dan is bringing up his warlocks by nightfall. Until then, the Blackrock clan will be trying to take the Eastern Wall.',15540,0,0,0,'Garona KingLlaneVision_Say3'),
(33288,-1603345,'A thousand deaths... or one murder.',15762,0,0,0,'YoggSaron KingLlaneVision_Say1'),
(33288,-1603346,'',15763,0,0,0,'YoggSaron KingLlianeVision_Say2'),
(33437,-1603347,'We will hold until the reinforcements come. As long as men with stout hearts are manning the walls and throne Stormwind will hold.',15585,0,0,0,'KingLlane KingLlaneVision_Say'),
(33436,-1603348,'The orc leaders agree with your assessment.',15541,0,0,0,'Garona KingLlaneVision_Say4'),
(33288,-1603349,'Your petty quarrels only make me stronger!',15764,0,0,0,'YoggSaron KingLlaneVision_Say3'),

(33441,-1603350,'Your resilience is admirable.',15598,0,0,0,'TheLichKing LichKingVision_Say1'),
(33442,-1603351,'Arrrrrrgh!',15470,1,0,0,'ImmolatedChampion LichKingVision_Say1'),
(33442,-1603352,'I\'m not afraid of you!',15471,0,0,0,'ImmolatedChampion LichKingVision_Say2'),
(33441,-1603353,'I will break you as I broke him.',15599,0,0,0,'TheLichKing LichKingVision_Say2'),
(33288,-1603354,'Yrr n\'lyeth... shuul anagg!',15766,0,0,0,'YoggSaron LichKingVision_Say1'),
(33288,-1603355,'He will learn... no king rules forever, only death is eternal!',15767,0,0,0,'YoggSaron LichKingVision_Say2'),

(33523,-1603356,'It is done... All have been given that which must be given. I now seal the Dragon Soul forever...',15631,0,0,0,'Neltharion DragonSoulVision_Say1'),
(33495,-1603357,'That terrible glow... should that be?',15702,0,0,0,'Ysera DragonSoulVision_Say'),
(33523,-1603358,'For it to be as it must, yes.',15632,0,0,0,'Neltharion DragonSoulVision_Say2'),
(33535,-1603359,'It is a weapon like no other. It must be like no other.',15610,0,0,0,'Malygos DragonSoulVision_Say'),
(33288,-1603360,'His brood learned their lesson before too long, you shall soon learn yours!',15765,0,0,0,'YoggSaron DragonSoulVision_Say1');
-- Thorim
UPDATE `creature_template` SET `speed_walk` = 1.66667, `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_thorim' WHERE `entry` = 32865;
UPDATE `creature_template` SET `speed_walk` = 1.66667, `baseattacktime` = 1500, `equipment_id` = 1844, `mechanic_immune_mask` = 650854239 WHERE `entry` = 33147;
DELETE FROM `creature` WHERE `id`=32865;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(32865, 603, 3, 1, 28977, 0, 2134.967, -298.962, 438.331, 1.57, 604800, 0, 4183500, 425800, 0, 1);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('62042','62470','1','Thorim: Deafening Thunder');

-- Charge Orb
DELETE FROM conditions WHERE SourceEntry = 62016;
INSERT INTO `conditions` VALUES
('13','0','62016','0','18','1','33378','0','0','',NULL);
UPDATE `creature_template` SET `unit_flags` = 33685508 WHERE `entry` = 33378;

-- Gate
DELETE FROM `gameobject_scripts` WHERE `id`=55194;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(55194, 0, 11, 34155, 15, '0', 0, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry`=194265;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194265','1','295','Lever','','','','35','48','3','0','0','0','0','0','0','0','0','6000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0');
UPDATE `gameobject` SET `id` = 194265, `rotation2` = 1, `rotation3` = 0, `spawntimesecs` = 7200, `animprogress` = 100 WHERE `guid` = 55194;

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32885, 32883, 32908, 32907, 32882, 33110, 32886, 32879, 32892, 33140, 33141, 33378, 32874, 32875)
OR guid IN (136694, 136695, 136666, 136706, 136754, 136653, 136756, 136757, 136725, 136718);

-- Pre adds
UPDATE `creature_template` SET `equipment_id` = 1849, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 33153;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32883;
UPDATE `creature_template` SET `equipment_id` = 1847 WHERE `entry` = 33152;
UPDATE `creature_template` SET `equipment_id` = 1850, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32908;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 33151;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32907;
UPDATE `creature_template` SET `equipment_id` = 1852 WHERE `entry` = 33150;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32882;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32886;
UPDATE `creature_template` SET `modelid1` = 16925, `modelid2` = 0 WHERE `entry`IN (33378, 32892);

-- Thorim Mini bosses
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_runic_colossus' WHERE `entry` = 32872;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_ancient_rune_giant' WHERE `entry` = 32873;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_sif' WHERE `entry` = 33196;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_arena_phase' WHERE `entry` IN (32876, 32904, 32878, 32877, 32874, 32875, 33110);
DELETE FROM `creature_addon` WHERE `guid`IN (136059, 136816);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('136059','0','0','0','1','0','40775 0'),
('136816','0','0','0','1','0','40775 0');
-- Mimiron Tram
UPDATE `gameobject_template` SET `flags` = 32, `data2` = 3000, `ScriptName` = 'go_call_tram' WHERE `entry` IN (194914, 194912, 194437);
DELETE FROM gameobject WHERE id = '194437';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('194437','603','1','1','2306.87','274.237','424.288','1.52255','0','0','0.689847','0.723956','300','0','1');
DELETE FROM gameobject_template WHERE entry = '194438';
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194438','1','8504','Activate Tram','','','','0','32','1','0','0','0','0','0','0','0','0','3000','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','go_call_tram','11159');
DELETE FROM gameobject WHERE id = '194438';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(194438, 603, 1,1,2306.99, 2589.35, 424.382, 4.71676, 0, 0, 0.705559, -0.708651, 300, 0, 1);

-- Mimiron
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_mimiron' WHERE `entry` = 33350;
-- Leviathan MKII
UPDATE `creature_template` SET `vehicleid` = 370, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk' WHERE `entry` = 33432;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34106;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk_turret' WHERE `entry` = 34071;
DELETE FROM vehicle_template_accessory WHERE entry = 33432;
INSERT INTO vehicle_template_accessory VALUE (33432, 34071, 3, 1, 'Leviathan Mk II turret', 8, 0);
UPDATE creature_template SET ScriptName = 'npc_proximity_mine' WHERE entry = 34362;
DELETE FROM `creature_model_info` WHERE `modelid`=28831;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(28831, 0.5, 7, 2, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33432,33651);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33432,46598,0,0,0,1,0,0,0), -- Leviatan MKII - Ride Vehicle Hardcoded
(33651,46598,0,0,0,1,0,0,0); -- VX 001 - Ride Vehicle Hardcoded

-- VX-001
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `vehicleid` = 371, `ScriptName` = 'boss_vx_001' WHERE `entry` = 33651;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34108;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 34050;
UPDATE `creature_template` SET `unit_flags` = 33686020, `flags_extra` = 2 WHERE `entry` = 34211;
UPDATE `creature_template` SET `ScriptName` = 'npc_rocket_strike' WHERE `entry` = 34047;

-- Aerial Command Unit
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'boss_aerial_unit', `vehicleid` = 372 WHERE `entry` = 33670;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34109;
UPDATE `creature_template` SET `ScriptName` = 'npc_magnetic_core' WHERE `entry` = 34068;
UPDATE `creature_template` SET `ScriptName` = 'npc_assault_bot' WHERE `entry` = 34057;
UPDATE `creature_template` SET `difficulty_entry_1` = 34148, `ScriptName` = 'npc_emergency_bot' WHERE `entry` = 34147;

-- HardMode
UPDATE `gameobject_template` SET `flags` = 32, `ScriptName` = 'go_not_push_button' WHERE `entry` = 194739;
UPDATE `creature_template` SET `difficulty_entry_1` = 34361, `ScriptName` = 'npc_frost_bomb' WHERE `entry` = 34149;
UPDATE `creature_template` SET `speed_walk` = 0.15, `speed_run` = 0.15, `ScriptName` = 'npc_mimiron_flame_trigger' WHERE `entry` = 34363;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_flame_spread' WHERE `entry` = 34121;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_bomb_bot' WHERE `entry` = 33836;

-- CleanUp
DELETE FROM creature WHERE id IN (34071, 33856);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 34143;
-- Hodir
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_hodir' WHERE `entry` = 32845;
UPDATE `creature_template` SET `equipment_id` = 1843, `mechanic_immune_mask` = 650854239, `flags_extra` = 1 WHERE `entry` = 32846;

-- Hodir npcs
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_priest' WHERE `entry` IN (32897, 33326, 32948, 33330);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_shaman' WHERE `entry` IN (33328, 32901, 33332, 32950);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_druid' WHERE `entry` IN (33325, 32900, 32941, 33333);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_mage' WHERE `entry` IN (32893, 33327, 33331, 32946);
UPDATE `creature_template` SET `ScriptName` = 'npc_toasty_fire' WHERE `entry` = 33342;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle' WHERE `entry` = 33169;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle_snowdrift' WHERE `entry` = 33173;
UPDATE `creature_template` SET `ScriptName` = 'npc_snowpacked_icicle' WHERE `entry` = 33174;
UPDATE `creature_template` SET `difficulty_entry_1` = 33352, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32926;
UPDATE `creature_template` SET `difficulty_entry_1` = 33353, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32938;
UPDATE `creature_template` SET `mechanic_immune_mask` = 612597599 WHERE `entry` IN (33352, 33353);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 194173;

DELETE FROM spell_script_names WHERE spell_id IN (62038,62039);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62038,'spell_biting_cold'),
(62039,'spell_biting_cold');

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32950, 32941, 32948, 32946, 32938);
UPDATE creature_template SET scriptname = 'boss_general_vezax' WHERE entry = 33271;
UPDATE creature_template SET scriptname = 'mob_saronit_varpor' WHERE entry = 33488;
UPDATE creature_template SET scriptname = 'mob_saronit_animus' WHERE entry = 33524;
DELETE FROM spell_script_names WHERE spell_id = 62692;
INSERT INTO spell_script_names VALUE (62692,'spell_general_vezax_aura_of_despair_aura');
DELETE FROM spell_script_names WHERE spell_id = 63276;
INSERT INTO spell_script_names VALUE (63276,'spell_general_vezax_mark_of_the_faceless_aura');
UPDATE creature_template SET ScriptName = "boss_freya" WHERE Entry = 32906;
UPDATE creature_template SET ScriptName = "mob_detonating_lasher" WHERE Entry = 32918;
UPDATE creature_template SET ScriptName = "mob_ancient_water_spirit" WHERE Entry = 33202;
UPDATE creature_template SET ScriptName = "mob_storm_lasher" WHERE Entry = 32919;
UPDATE creature_template SET ScriptName = "mob_snaplasher" WHERE Entry = 32916;
UPDATE creature_template SET ScriptName = "mob_ancient_conservator" WHERE Entry = 33203;
UPDATE creature_template SET ScriptName = "mob_healthy_spore" WHERE Entry = 33215;
UPDATE creature_template SET ScriptName = "mob_elder_brightleaf" WHERE Entry = 32915;
UPDATE creature_template SET ScriptName = "mob_elder_ironbranch" WHERE Entry = 32913;
UPDATE creature_template SET ScriptName = "mob_elder_stonebark" WHERE Entry = 32914;
UPDATE creature_template SET ScriptName = "mob_unstable_sunbeam" WHERE Entry = 33050;
UPDATE creature_template SET ScriptName = "mob_eonars_gift" WHERE Entry = 33228;
UPDATE creature_template SET ScriptName = "mob_natural_bomb" WHERE ENTRY = 34129;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33168;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33088;
UPDATE creature_template SET ScriptName = "mob_freya_sunbeam" WHERE Entry = 33170;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33168;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33088;
UPDATE creature_template SET faction_A = 16 WHERE Entry = 33168;
UPDATE creature_template SET faction_H = 16 WHERE Entry = 33168;

DELETE FROM spell_script_names WHERE spell_id IN (62623,62872);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62623, "spell_freya_sunbeam"),
(62872, "spell_freya_sunbeam");
DELETE FROM spell_script_names WHERE spell_id = 64648;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (64648,"spell_freya_natural_bomb_spell");
DELETE FROM spell_script_names WHERE spell_id IN (62524,62525,62521);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62524,"spell_attuned_to_nature_remove"),
(62525,"spell_attuned_to_nature_remove"),
(62521,"spell_attuned_to_nature_remove");
DELETE FROM spell_script_names WHERE spell_id = 62688;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (62688,"spell_summon_wave_effect_10mob");
UPDATE creature_template SET ScriptName = "boss_auriaya" WHERE Entry = 33515;
UPDATE creature_template SET ScriptName = "mob_feral_defender" WHERE Entry = 34035;
UPDATE creature_template SET ScriptName = "mob_sanctum_sentry" WHERE Entry = 34014;
UPDATE creature_template SET ScriptName = "mob_seeping_essence_stalker" WHERE Entry = 34098;
-- ------------------
-- Flame Leviathane |
-- ------------------
-- Runeforged Sentry
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=34234;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=13 WHERE `entry`=34235;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34234;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34234;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34234,0,0,0,0,0,100,0,2000,2000,10000,10000,11,64852,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Flaming Rune'),
(34234,0,1,0,0,0,100,0,3000,5000,5000,7000,11,64870,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Lava Burst'),
(34234,0,2,0,0,0,100,0,2500,3000,12000,15000,11,64847,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Runed Flame Jets');
-- Steelforged Defender
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=33236;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=13 WHERE `entry`=34113;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33236;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33236;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33236,0,0,0,0,0,100,0,4000,6000,15000,20000,11,62845,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Hamstring'),
(33236,0,1,0,0,0,100,0,0,4000,6000,8000,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Lightning Bolt'),
(33236,0,2,0,0,0,100,0,5000,6000,4000,6000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Sunder Armor');
-- Mechagnome Battletank
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=34164;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`dmg_multiplier`=13 WHERE `entry`=34165;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34164;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34164;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34164,0,0,0,0,0,100,0,3000,4000,6000,8000,11,64693,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Mechagnome Battletank - Cast Flame Cannon'),
(34164,0,1,0,0,0,100,0,10000,10000,15000,20000,11,64953,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Mechagnome Battletank - Cast Jump Attack');
-- Ironwork Cannon - NEED HELP!
/*UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|8,`unit_flags`=`unit_flags`|4,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`AIName`='SmartAI' WHERE `entry`=34164;
UPDATE `creature_model_info` SET `bounding_radius`=2.06,`combat_reach`=3 WHERE `modelid` IN (26161,27101,25723,28471);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34164;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34164;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34164,0,0,0,0,0,100,0,3000,4000,6000,8000,11,64693,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Ironwork Cannon - Cast Flame Cannon');*/
-- -------
-- Ignis |
-- -------
-- Molten Colossus
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`attackpower`=982,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34069;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`attackpower`=982,`dmg_multiplier`=18 WHERE `entry`=34185;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34069;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34069;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34069,0,0,0,0,0,100,0,6000,10000,10000,12000,11,64697,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Molten Colossus - Cast Earthquake'),
(34069,0,1,0,0,0,100,0,2000,4000,5000,6000,11,64698,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Molten Colossus - Cast Pyroblast');
-- Magma Rager
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33557296,`AIName`='SmartAI' WHERE `entry`=34086;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33557296 WHERE `entry`=34201;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34086;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34086;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34086,0,0,0,0,0,100,0,2000,4000,6000,8000,11,64773,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Magma Rager - Cast Fire Blast'),
(34086,0,1,0,0,0,100,0,6000,16000,12000,20000,11,64746,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Magma Rager - Cast Superheated Winds');
-- Superheated Winds
UPDATE `creature_template` SET `unit_flags`=33718790,`modelid1`=11686,`modelid2`=0,`AIName`='' WHERE `entry`=34194;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34194;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34194;
DELETE FROM `creature_template_addon` WHERE `entry`=34194;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(34194,'64724');
-- Forge Construct
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34085;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34186;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34085;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34085;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34085,0,0,0,0,0,100,0,8000,12000,10000,15000,11,64719,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Forge Construct - Cast Charge'),
(34085,0,1,0,0,0,100,2,2000,6000,6000,9000,11,64720,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forge Construct - Cast Flame Emission 10'),
(34085,0,2,0,0,0,100,4,2000,6000,6000,9000,11,64721,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forge Construct - Cast Flame Emission 25');
-- --------
-- XT-002 |
-- --------
-- XB-488 Disposalbot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34273;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34274;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34273;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34273;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34273,0,0,0,2,0,100,0,30,40,0,0,11,65084,1,0,0,0,0,1,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Self Destruct'),
(34273,0,1,0,0,0,100,2,2000,6000,6000,10000,11,65080,0,0,0,0,0,2,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Cut Scrap Metal 10'),
(34273,0,2,0,0,0,100,4,2000,6000,6000,10000,11,65104,0,0,0,0,0,2,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Cut Scrap Metal 25');
-- Parts Recovery Technician
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554432,`AIName`='SmartAI' WHERE `entry`=34267;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554432 WHERE `entry`=34268;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34267;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34267;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34267,0,0,0,0,0,100,0,6000,8000,10000,12000,11,65071,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Parts Recovery Technician - Cast Mechano Kick'),
(34267,0,1,0,0,0,100,0,8000,12000,15000,20000,11,65070,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Parts Recovery Technician - Cast Defense Matrix');
-- XD-175 Compactobot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34271;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34272;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34271;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34271;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34271,0,0,0,0,0,100,2,8000,12000,15000,20000,11,65073,0,0,0,0,0,6,0,0,0,0,0,0,0, 'XD-175 Compactobot - Cast Trash Compactor 10'),
(34271,0,1,0,0,0,100,4,8000,12000,15000,20000,11,65106,0,0,0,0,0,6,0,0,0,0,0,0,0, 'XD-175 Compactobot - Cast Trash Compactor 25');
-- XR-949 Salvagebot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34269;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34270;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34269;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34269;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34269,0,0,0,0,0,100,0,4000,6000,6000,8000,11,65099,0,0,0,0,0,5,0,0,0,0,0,0,0,'XR-949 Salvagebot - Cast Deploy Salvage Saws'),
(34269,0,1,0,6,0,100,0,0,0,0,0,41,0,0,0,0,0,0,9,34288,0,100,0,0,0,0,'XR-949 Salvagebot - on Death - Despawn Salvagebot Sawblade');
-- Salvagebot Sawblade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`unit_flags`=33554560,`AIName`='SmartAI' WHERE `entry`=34288;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`unit_flags`=33554560 WHERE `entry`=34291;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34288;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34288;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34288,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Salvagebot Sawblade - on Summon - attack random Hostile'),
(34288,0,1,0,60,0,100,0,5000,5000,5000,5000,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Salvagebot Sawblade - every 5sec - attack random Hostile');
-- -------------------
-- Antechamber (CoI) |
-- -------------------
-- Lightning Charged Iron Dwarf
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34199;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34237;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34199;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34199;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34199,0,0,0,0,0,100,2,0,0,6000,8000,11,64889,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lightning Charged Iron Dwarf - Cast Lightning Charged 10'),
(34199,0,1,0,0,0,100,4,0,0,6000,8000,11,64975,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lightning Charged Iron Dwarf - Cast Lightning Charged 25');
-- Hardened Iron Golem
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34190;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=34229;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34190;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34190;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34190,0,0,0,0,0,100,0,4000,8000,10000,15000,11,64877,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Harden Fists'),
(34190,0,1,0,0,0,100,2,5000,7000,15000,20000,11,64874,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Rune Punch 10'),
(34190,0,2,0,0,0,100,4,5000,7000,15000,20000,11,64967,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Rune Punch 25');
-- Iron Mender
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34198;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34236;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34198;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34198;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34198,0,0,0,0,0,100,2,2000,4000,4000,6000,11,64918,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Iron Mender - Cast Electro Shock 10'),
(34198,0,1,0,0,0,100,4,2000,4000,4000,6000,11,64971,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Iron Mender - Cast Electro Shock 25'),
(34198,0,2,0,0,0,100,2,3000,6000,10000,15000,11,64903,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Lightning 10'),
(34198,0,3,0,0,0,100,4,3000,6000,10000,15000,11,64970,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Lightning 25'),
(34198,0,4,0,0,0,100,2,10000,15000,20000,25000,11,64897,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Metal 10'),
(34198,0,5,0,0,0,100,4,10000,15000,20000,25000,11,64968,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Metal 25');
-- Rune Etched Sentry
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34196;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=18 WHERE `entry`=34245;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34196;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34196;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34196,0,0,0,0,0,100,0,2000,2000,10000,10000,11,64852,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Flaming Rune'),
(34196,0,1,0,0,0,100,2,3000,5000,5000,7000,11,64870,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Lava Burst 10'),
(34196,0,2,0,0,0,100,4,3000,5000,5000,7000,11,64991,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Lava Burst 25'),
(34196,0,3,0,0,0,100,2,2500,3000,12000,15000,11,64847,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Runed Flame Jets 10'),
(34196,0,4,0,0,0,100,4,2500,3000,12000,15000,11,64988,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Runed Flame Jets 25');
-- Chamber Overseer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34197;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=32,`mechanic_immune_mask`=33554496 WHERE `entry`=34226;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34197;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34197;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34197,0,0,0,0,0,100,0,7000,9000,8000,10000,11,64783,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Displacement Device'),
(34197,0,1,0,0,0,100,2,4000,8000,6000,9000,11,64820,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Devastating Leap 10'),
(34197,0,2,0,0,0,100,4,4000,8000,6000,9000,11,64943,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Devastating Leap 25'),
(34197,0,3,0,0,0,100,2,8000,10000,8000,12000,11,64825,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Staggering Roar 10'),
(34197,0,4,0,0,0,100,4,8000,10000,8000,12000,11,64944,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Staggering Roar 25');
-- Displacement Device
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=33554560,`speed_walk`=0.2,`speed_run`=0.3,`dmg_multiplier`=1,`unit_flags`=514,`InhabitType`=1,`MovementType`=1,`AIName`='SmartAI' WHERE `entry`=34203;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=33554560,`speed_walk`=0.2,`speed_run`=0.3,`dmg_multiplier`=1,`unit_flags`=514,`InhabitType`=1,`MovementType`=1 WHERE `entry`=34227; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34203;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34203;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34203,0,0,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Displacement Device - on Summon - set react state passive');
DELETE FROM `creature_template_addon` WHERE `entry` IN (34203,34227);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(34203,'64793'),
(34227,'64941');
-- ---------------------
-- Circle of Guardians |
-- ---------------------
-- Storm Tempered Keeper in Progress
-- -------
-- Hodir |
-- -------
-- Champion of Hodir
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34133;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34139;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34133;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34133;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34133,0,0,0,0,0,100,2,3000,6000,8000,10000,11,64639,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Champion of Hodir - Cast Stomp 10'),
(34133,0,1,0,0,0,100,4,3000,6000,8000,10000,11,64652,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Champion of Hodir - Cast Stomp 25');
-- Winter Jormungar
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34137;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34140;
UPDATE `creature_template_addon` SET `auras`='47677' WHERE `entry`=34137;
UPDATE `creature` SET `spawndist`=2 WHERE`id`=34137;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34137;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34137;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34137,0,0,0,0,0,100,0,3000,6000,6000,9000,11,64638,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Jormungar - Cast Acidic Bite');
-- Winter Revenant
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34134;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=18 WHERE `entry`=34141;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34134;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34134;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34134,0,0,0,0,0,100,2,8000,10000,12000,15000,11,64642,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Revenant - Cast Blizzard 10'),
(34134,0,1,0,0,0,100,4,8000,10000,12000,15000,11,64653,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Revenant - Cast Blizzard 25'),
(34134,0,2,0,0,0,100,0,3000,5000,10000,12000,11,64643,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Winter Revenant - Cast Whirling Strike'),
(34134,0,3,0,0,0,100,1,15000,20000,0,0,11,64644,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Winter Revenant - Cast Shield of the Winter Revenant');
-- Winter Rumbler
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34135;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34142;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34135;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34135;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34135,0,0,0,0,0,100,2,6000,10000,8000,12000,11,64645,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Cone of Cold 10'),
(34135,0,1,0,0,0,100,4,6000,10000,8000,12000,11,64655,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Cone of Cold 25'),
(34135,0,2,0,0,0,100,2,3000,6000,6000,10000,11,64647,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Snow Blindness 10'),
(34135,0,3,0,0,0,100,4,3000,6000,6000,10000,11,64654,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Snow Blindness 25');
-- ------
-- Freya|
-- ------
-- Guardian Lasher
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=33430;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=33732;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33430;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33430;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33430,0,0,0,4,0,100,0,0,0,0,0,75,63007,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Guardian Lasher - on Aggro - add Aura Guardian Pheromones'),
(33430,0,1,0,0,0,100,2,3000,6000,8000,12000,11,63047,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian Lasher - Cast Guardian''s Lash 10'),
(33430,0,2,0,0,0,100,4,3000,6000,8000,12000,11,63550,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian Lasher - Cast Guardian''s Lash 25');
-- Forest Swarmer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33431;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33731;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33431;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33431;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33431,0,0,0,0,0,100,0,3000,4000,6000,8000,11,63059,0,0,0,0,0,9,33430,0,25,0,0,0,0, 'Forest Swarmer - Cast Pollinate on Guardian Lasher');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63059;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,63059,0,18,1,33430,0,0,'','Spell: Polite only target Guardian Lasher (10)'),
(13,0,63059,1,18,1,33732,0,0,'','Spell: Polite only target Guardian Lasher (25)');
-- Guardian of Life
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33528;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33733;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33528;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33528;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33528,0,0,0,0,0,100,2,6000,9000,15000,20000,11,63226,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian of Life - Cast Poison Breath 10'),
(33528,0,1,0,0,0,100,4,6000,9000,15000,20000,11,63551,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian of Life - Cast Poison Breath 25');
-- Nature's Blade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33527;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33741;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33527;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33527;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33527,0,0,0,0,0,100,2,8000,10000,15000,25000,11,63247,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Nature''s Blade - Cast Living Tsunami 10'),
(33527,0,1,0,0,0,100,4,8000,10000,15000,25000,11,63568,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Nature''s Blade - Cast Living Tsunami 25');
-- Ironroot Lasher
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33526;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33734;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33526;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33526;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33526,0,0,0,16,0,100,2,63240,20,10000,20000,11,63240,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Ironroot Lasher - on missing Buff - Cast Ironroot Thorns 10'),
(33526,0,1,0,16,0,100,4,63553,20,10000,20000,11,63553,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Ironroot Lasher - on missing Buff - Cast Ironroot Thorns 25');
-- Mangrove Ent
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33525;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33735;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33525;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33525;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33525,0,0,0,0,0,100,0,10000,10000,15000,15000,11,63272,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Hurricane'),
(33525,0,1,0,0,0,100,2,12500,12500,15000,15000,11,63242,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Mangrove Ent - Cast Nourish 10'),
(33525,0,2,0,0,0,100,4,12500,12500,15000,15000,11,63556,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Mangrove Ent - Cast Nourish 25'),
(33525,0,3,0,0,0,100,2,15000,15000,16000,16000,11,63241,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Tranquility 10'),
(33525,0,4,0,0,0,100,4,15000,15000,16000,16000,11,63554,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Tranquility 25');
-- Misguided Nymph
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33355;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`AIName`='' WHERE `entry`=33737;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33355;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33355;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33355,0,0,0,0,0,100,2,8000,12000,20000,25000,11,63082,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Bind Life 10'),
(33355,0,1,0,0,0,100,4,8000,12000,20000,25000,11,63559,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Bind Life 25'),
(33355,0,2,0,0,0,100,2,4000,6000,10000,12000,11,63111,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Frost Spear 10'),
(33355,0,3,0,0,0,100,4,4000,6000,10000,12000,11,63562,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Frost Spear 25'),
(33355,0,4,0,0,0,100,2,15000,20000,15000,20000,11,63136,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Winter''s Embrace 10'),
(33355,0,5,0,0,0,100,4,15000,20000,15000,20000,11,63564,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Winter''s Embrace 25');
-- Corrupted Servitor
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=33354;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496  WHERE `entry`=33729;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33354;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33354;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33354,0,0,0,0,0,100,2,2000,4000,8000,12000,11,63169,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Petrify Joints 10'),
(33354,0,1,0,0,0,100,4,2000,4000,8000,12000,11,63549,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Petrify Joints 25'),
(33354,0,2,0,0,0,100,0,6000,8000,12000,16000,11,63149,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Violent Earth');
-- --------
-- Thorim |
-- --------
-- Dark Rune Ravager & Thunderer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 35 WHERE `entry`=33755;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 55 WHERE `entry`=33758;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 20 WHERE `entry`=33754;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 30 WHERE `entry`=33757;
UPDATE `creature_template` SET `dmgschool`=3 WHERE `entry` IN (33754,33757); -- Nature Damage
-- some equipment updates
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 32908;
-- --------
-- Mimiron|
-- --------
-- Arachnopod Destroyer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34183;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=34214;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34183;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34183;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34183,0,0,0,0,0,100,0,2000,4000,6000,9000,11,64717,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Arachnopod Destroyer - Cast Flame Spray'),
(34183,0,1,0,0,0,100,0,6000,8000,8000,10000,11,64776,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Arachnopod Destroyer - Cast Machine Gun');
/*-- Clockwork Mechanic - mount in Vehicle Arachnopod Destroyer 
UPDATE `creature_template` SET `dmg_multiplier`=20,`mingold`=1720000,`maxgold`=1760000 WHERE `entry`=34184;
*/
-- Trash
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10 WHERE `entry`=34191;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34217;
-- Boomer XP-500
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34192;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34216;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34192;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34192;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34192,0,0,0,9,0,100,0,0,3,0,0,11,55714,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Boomer XP-500 - Explode');
-- Clockwork Sapper
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`dmg_multiplier`=10,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34193;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`dmg_multiplier`=18,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554496 WHERE `entry`=34220;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34193;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34193;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34193,0,0,0,0,0,100,0,2000,6000,6000,8000,11,64740,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Clockwork Sapper - Cast Energy Sap');
-- ------
-- Vezak|
-- ------
-- Twilight Adherent
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`unit_class`=2,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33818;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`unit_class`=2,`dmg_multiplier`=18 WHERE `entry`=33827;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33818;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33818;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33818,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Arcane Burst'),
(33818,0,1,0,0,0,100,0,3000,5000,6000,8000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Blink'),
(33818,0,2,0,0,0,100,0,12000,15000,15000,20000,11,63760,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Twilight Adherent - Cast Greater Heal'),
(33818,0,3,0,0,0,100,0,6000,8000,12000,16000,11,13704,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Psychic Scream'),
(33818,0,4,0,0,0,100,0,8000,10000,12000,15000,11,37978,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Twilight Adherent - Cast Renew');
-- Twilight Guardian
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1852,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33822;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1852,`dmg_multiplier`=18 WHERE `entry`=33828;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33822;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33822;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33822,0,0,0,0,0,100,0,6000,10000,8000,10000,11,52719,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Concussion Blow'),
(33822,0,1,0,0,0,100,0,2000,3000,3000,6000,11,62317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Devastate'),
(33822,0,2,0,0,0,100,0,8000,10000,10000,12000,11,63757,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Thunderclap');
-- Twilight Shadowblade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1862,`dmg_multiplier`=10,`baseattacktime`=1000,`AIName`='SmartAI' WHERE `entry`=33824;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1862,`dmg_multiplier`=18,`baseattacktime`=1000 WHERE `entry`=33831;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33824;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33824;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33824,0,0,0,0,0,100,0,6000,8000,10000,12000,11,63753,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Twilight Shadowblade - Cast Fan of Knives')/*,
(33824,0,1,0,0,0,100,0,6000,8000,10000,12000,11,63754,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Shadowblade - Cast Backstab') -- needs to jump behind target*/;
-- Twilight Slayer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1847,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33823;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1847,`dmg_multiplier`=18 WHERE `entry`=33832;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33823;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33823;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33823,0,0,0,0,0,100,0,3000,5000,7000,9000,11,35054,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Slayer - Cast Mortal Strike'),
(33823,0,1,0,0,0,100,0,12000,15000,15000,20000,11,63784,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Slayer - Cast Bladestorm');
-- Faceless Horror
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=18,`AIName`='SmartAI' WHERE `entry`=33772;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=32 WHERE `entry`=33773;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33772;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33772;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33772,0,0,0,0,0,100,0,6000,8000,6000,8000,11,64429,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Faceless Horror - Cast Death Grip'),
(33772,0,1,0,0,0,100,0,2000,4000,8000,10000,11,63722,2,0,0,0,0,5,0,0,0,0,0,0,0, 'Faceless Horror - Cast Shadow Crash'),
(33772,0,2,0,4,0,100,0,0,0,0,0,75,63703,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Faceless Horror - on Aggro - add Aura: Void Wave'),
(33772,0,3,0,2,0,100,0,0,75,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 75% HP - set Phase 1'),
(33772,0,4,5,0,1,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 1 - Summon Void Beast'),
(33772,0,5,0,61,1,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 1 - add Aura: Void Barrier'),
(33772,0,6,0,2,0,100,0,0,50,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 50% HP - set Phase 2'),
(33772,0,7,8,0,2,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 2 - Summon Void Beast'),
(33772,0,8,0,61,2,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 2 - add Aura: Void Barrier'),
(33772,0,9,0,2,0,100,0,0,25,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 25% HP - set Phase 3'),
(33772,0,10,11,0,4,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 3 - Summon Void Beast'),
(33772,0,11,0,61,4,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 3 - add Aura: Void Barrier');
-- Void Beast
UPDATE `creature_template` SET `difficulty_entry_1`=33815,`faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=18,`AIName`='SmartAI' WHERE `entry`=33806;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=32 WHERE `entry`=33815;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33806;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33806;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33806,0,0,1,6,0,100,0,0,0,0,0,11,63723,2,0,0,0,0,0,0,0,0,0,0,0,0, 'Void Beast - on Death - Cast Shadow Nova'),
(33806,0,1,0,61,0,100,0,0,0,0,0,28,63710,0,0,0,0,0,19,33772,0,0,0,0,0,0, 'Void Beast - on Death - remove Aura: Void Barrier from closest Faceless Horror');
-- Twilight Frost Mage
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1849,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33819;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1849,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=18 WHERE `entry`=33829;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33819;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33819;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33819,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Arcane Burst'),
(33819,0,1,0,0,0,100,0,1000,2000,6000,8000,11,63913,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frostbolt'),
(33819,0,2,0,0,0,100,0,2000,4000,10000,16000,11,63758,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frost Bolt Volley'),
(33819,0,3,0,0,0,100,0,8000,10000,12000,16000,11,63912,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frost Nova'),
(33819,0,4,0,0,0,100,0,7000,9000,9000,11000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Blink');
-- Twilight Pyromancer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=10,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`AIName`='SmartAI' WHERE `entry`=33820;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=18,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=33830;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33820;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33820;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33820,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Arcane Burst'),
(33820,0,1,0,0,0,100,0,1000,2000,6000,8000,11,63789,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Fireball'),
(33820,0,2,0,0,0,100,0,2000,4000,10000,16000,11,63775,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Flamestrike'),
(33820,0,3,0,0,0,100,0,7000,9000,9000,11000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Blink'),
(33820,0,4,0,11,0,100,0,0,0,0,0,11,63774,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Summon Fire Elemental');
-- Enslaved Fire Elemental
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`difficulty_entry_1`=33839,`faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`dmg_multiplier`=10,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`AIName`='SmartAI' WHERE `entry`=33838;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`dmg_multiplier`=18,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=33839;
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id`=33838;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33838;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33838;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33838,0,0,0,54,0,100,0,0,0,0,0,11,63778,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Enslaved Fire Elemental - on Summon - Cast Fire Shield'),
(33838,0,1,0,0,0,100,0,4000,8000,12000,14000,11,38064,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Enslaved Fire Elemental - Cast Blast Wave');
-- Ulduar Trash Loot including Skinning, Mining and Herbalism
-- Using Reference Loot for Epic Items for 10 and 25-Mode
-- Using Skinloot Templates for Mining and Herbalism
-- Data Sources from old.wowhead.com, modified by Hirndille

-- Skinloot Templates for Mining and Herbalism, especially for Ulduar Trash

-- Mining for NPCs 34085 and 34186
DELETE FROM `skinning_loot_template` WHERE entry = 100009;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 100009, 39220, 98, 1, 0, 6, 8 ), -- Geodesic Fragments 
( 100009, 36909, 25, 1, 0, 5, 9 ), -- Cobalt Ore
( 100009, 37701, 25, 1, 0, 5, 8 ), -- Crystallized Earth
( 100009, 36923,  5, 1, 0, 1, 1 ), -- Chalcedony
( 100009, 36921,  4, 1, 0, 1, 1 ), -- Autumns Glow
( 100009, 36933,  4, 1, 0, 1, 1 ), -- Forest Emerald
( 100009, 36930,  4, 1, 0, 1, 1 ), -- Monarch Topaz
( 100009, 36918,  4, 1, 0, 1, 1 ), -- Scarlet Ruby
( 100009, 33927,  4, 1, 0, 1, 1 ), -- Twilight Opal
( 100009, 36917,  4, 1, 0, 1, 1 ), -- Bloodstone
( 100009, 36932,  4, 1, 0, 1, 1 ), -- Dark Jade
( 100009, 36926,  4, 1, 0, 1, 1 ), -- Shadow Crystal
( 100009, 36920,  4, 1, 0, 1, 1 ), -- Sun Crystal
( 100009, 36924,  3, 1, 0, 1, 1 ), -- Sky Sapphire
( 100009, 36929,  3, 1, 0, 1, 1 )  -- Huge Citrine
;
-- Mining for Ulduar Trash
DELETE FROM `skinning_loot_template` WHERE entry = 100011;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 100011, 39220, 100, 1, 0, 1, 1 ), -- Geodesic Fragments
( 100011, 37701,   9, 1, 0, 1, 2 )  -- Crystallized Earth
;
-- Herbalism for Ulduar Trash
DELETE FROM `skinning_loot_template` WHERE entry = 100010;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 100010, 39516, 39, 1, 0, 1, 1 ), -- Frosty Mushroom
( 100010, 35947, 28, 1, 0, 1, 1 ), -- Sparkling Frostcap
( 100010, 36901, 25, 1, 0, 1, 1 ), -- Goldclover
( 100010, 37704,  4, 1, 0, 1, 2 ), -- Crystallized Life
( 100010, 36904,  4, 1, 0, 1, 1 ), -- Tiger Lily
( 100010, 36903,  3, 1, 0, 1, 1 ), -- Adders Tongue
( 100010, 36905,  3, 1, 0, 1, 1 ), -- Lichbloom
( 100010, 36907,  3, 1, 0, 1, 1 ), -- Talandras Rose
( 100010, 36906,  2, 1, 0, 1, 1 ) -- Icethorn
;
-- ReferenzLoot 10mann
DELETE FROM `reference_loot_template` WHERE entry = 90003;
INSERT INTO `reference_loot_template` (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(90003,46339,0,1,1,1,1),
(90003,46340,0,1,1,1,1),
(90003,46341,0,1,1,1,1),
(90003,46342,0,1,1,1,1),
(90003,46343,0,1,1,1,1),
(90003,46344,0,1,1,1,1),
(90003,46345,0,1,1,1,1),
(90003,46346,0,1,1,1,1),
(90003,46347,0,1,1,1,1),
(90003,46350,0,1,1,1,1),
(90003,46351,0,1,1,1,1),

(90003,33470,25,1,0,2,7), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
(90003,43852,15,1,0,1,1); -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal


-- ReferenzLoot 25mann
DELETE FROM `reference_loot_template` WHERE entry = 90004;
INSERT INTO `reference_loot_template` (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(90004,45538,0,1,1,1,1),
(90004,45539,0,1,1,1,1),
(90004,45540,0,1,1,1,1),
(90004,45541,0,1,1,1,1),
(90004,45542,0,1,1,1,1),
(90004,45543,0,1,1,1,1),
(90004,45544,0,1,1,1,1),
(90004,45547,0,1,1,1,1),
(90004,45548,0,1,1,1,1),
(90004,45549,0,1,1,1,1),
(90004,45605,0,1,1,1,1),

(90004,33470,25,1,0,2,7), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
(90004,43852,15,1,0,1,1), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
(90004,33454, 2,1,0,1,1); -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25

-- Loot for Elder Ironbranch, ID: 32913

UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=32913;
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=32913; -- Make mob herbable

-- Loot for Elder Stonebark, ID: 32914

DELETE FROM `creature_loot_template` where `entry` = 32914;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 32914, 36904, 0.1, 1, 0, 1, 1 ) -- Tiger Lily, item level: 72, quality: NORMAL//WHITE, mode: Outdoor/Dungeon
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=32914;
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=32914; -- Make mob herbable

-- Loot for Elder Brightleaf, ID: 32915

DELETE FROM `creature_loot_template` where `entry` = 32915;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 32915, 37704, 0.1, 1, 0, 2, 2 ) -- Crystallized Life, item level: 75, quality: NORMAL//WHITE, mode: Outdoor/Dungeon
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=32915;
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=32915; -- Make mob herbable

-- Loot for Corrupted Servitor, ID: 33354 and 33729 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33354;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33354, 36174, 1.4, 1, 0, 1, 1 ), -- Geist Gloves, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 33354, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33729;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33729, 33422, 0.8, 1, 0, 1, 1 ), -- Shattered Bow, item level: 125, quality: POOR//GREY, mode: Normal 25
( 33729, 90004 ,   3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33354;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33729;
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=33354; -- Make mob herbable
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=33729; -- Make mob herbable

-- Loot for Mangrove Ent, ID: 33525 and 33735 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33525;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33525, 33470, 25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33525, 43852, 15, 1, 0, 1, 1 ) -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
;

DELETE FROM `creature_loot_template` where `entry` = 33735;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33735, 33470, 25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33735, 43852, 15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33735, 33454,  2, 80, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Unknown 80
( 33735, 36269,  1,  1, 0, 1, 1 ) -- Ulduar Breastplate, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 25
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33525;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33735;
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=33525; -- Make mob herbable
UPDATE `creature_template` SET `type_flags` = `type_flags` |256 WHERE `entry`=33735; -- Make mob herbable

-- Loot for Ironroot Lasher, ID: 33526 and 33734 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33526;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33526, 33470,  25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33526, 43852,  15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33526, 36570, 0.7, 1, 0, 1, 1 ) -- Corrupted Scythes, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 33734;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33734, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33734, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33734, 36056,   1,  1, 0, 1, 1 ), -- Vizier Leggings, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33734, 36064, 0.3, 64, 0, 1, 1 ), -- Coldwraith Pants, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33734, 36280, 0.2, 64, 0, 1, 1 ) -- Spiderlord Legguards, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
;
-- Loot for Nature s Blade, ID: 33527 and 33741 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33527;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33527, 36382, 1, 1, 0, 1, 1 ), -- Golem Gauntlets, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 10
( 33527, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33741;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33741, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Misguided Nymph, ID: 33355 and 33737 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33355;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33355, 36053,  3, 1, 0, 1, 1 ), -- Vizier Robe, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 33355, 90003 ,  3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33737;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33737, 36540,  2, 1, 0, 1, 1 ), -- Petrified Sword, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 25
( 33737, 90004 ,  3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Guardian Lasher, ID: 33430 and 33732 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33430;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33430, 33470, 25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33430, 43852, 15, 1, 0, 1, 1 ) -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
;
DELETE FROM `creature_loot_template` where `entry` = 33732;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33732, 33417, 1.5, 1, 0, 1, 1 ), -- Frost-Worn Plate Pants, item level: 132, quality: POOR//GREY, mode: Normal 25
( 33732, 90004 ,   3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33430;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33732;
UPDATE `creature_template` SET `type_flags` =`type_flags`|256 WHERE `entry`=33430;-- Makes Mob herbable
UPDATE `creature_template` SET `type_flags` =`type_flags`|256 WHERE `entry`=33732;-- Makes Mob herbable

-- Loot for Forest Swarmer, ID: 33431 and 33731 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33431;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33431, 33470, 22.987514, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 33431, 43852, 15.833929, 1, 0, 1, 1 ) -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
;
DELETE FROM `creature_loot_template` where `entry` = 33731;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33731, 33470, 22.987514,  1, 88, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 33731, 43852, 15.833929,  1,  0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33731, 36428, 0.6796523,  1, 64, 1, 1 ), -- Bouquet Ring, item level: 174, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33731, 36444, 0.295501,   1, 64, 1, 1 ), -- Ice Encrusted Amulet, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33731, 36389, 0.2684134,  1, 64, 1, 1 ), -- Revenant Armor, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33731, 33403, 0.26348838, 1, 64, 1, 1 ) -- Frigid Mail Shoulderpads, item level: 132, quality: POOR//GREY, mode: Unknown 64
;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33431;
UPDATE `creature_template` SET `skinloot`=100010 WHERE `entry`=33731;
UPDATE `creature_template` SET `type_flags` =`type_flags`|256 WHERE `entry`=33431;-- Makes Mob herbable
UPDATE `creature_template` SET `type_flags` =`type_flags`|256 WHERE `entry`=33731;-- Makes Mob herbable

-- Loot for Guardian of Life, ID: 33528 and 33733 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33528;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33528, 90003 ,  3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33733;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33733, 36682,  2, 1, 0, 1, 1 ), -- Seduced Blade, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 33733, 33447,  3, 1, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 33733, 90004 ,  3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Storm Tempered Keeper, ID: 33699 and 33700

DELETE FROM `creature_loot_template` where `entry` = 33699;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33699, 39220,    3,  1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 33699, 33423,  1.3,  1, 0, 1, 1 ), -- Rime-Covered Mace, item level: 125, quality: POOR//GREY, mode: Normal 10
( 33699, 36289, 0.25, 32, 0, 1, 1 ), -- Spectral Mantle, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 32
( 33699, 90003 ,    3,  1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33700;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33700, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33700, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 33700, 33454,   2,  1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 33700, 33447,   1,  1, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 33700, 36393, 0.2, 64, 0, 1, 1 ) -- Revenant Epaulets, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=33699;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=33700;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=33699;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=33700;-- Makes Mob mineable

-- Loot for Storm Tempered Keeper, ID: 33722 and 33723 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33722;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33722, 39220,  3, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 33722, 90003 ,  3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33723;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33723, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33723, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33723, 33454,   2,  1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 33723, 33445, 1.2,  1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 33723, 36053, 0.6,  1, 0, 1, 1 ), -- Vizier Robe, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33723, 36051, 0.6,  1, 0, 1, 1 ), -- Vizier Sash, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33723, 33427, 0.5, 64, 0, 1, 1 ), -- Frost-Encrusted Rifle, item level: 125, quality: POOR//GREY, mode: Unknown 64
( 33723, 36058, 0.3, 64, 0, 1, 1 ), -- Vizier Bracelets, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33723, 36057, 0.3, 64, 0, 1, 1 ), -- Vizier Mantle, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33723, 43465, 0.1, 64, 0, 1, 1 ) -- Scroll of Strength VII, item level: 80, quality: NORMAL//WHITE, mode: Unknown 64
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=33722;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=33723;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=33722;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=33723;-- Makes Mob mineable

-- Loot for Faceless Horror, ID: 33772 and 33773 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33772;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33772, 36166, 0.7,  1, 0, 1, 1 ), -- Webspinner Gloves, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 33772, 90003 ,   3,  1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33773;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33773, 33448,   1,  1, 0, 1, 1 ), -- Runic Mana Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 33773, 33384,   1,  1, 0, 1, 1 ), -- Frozen Pants, item level: 132, quality: POOR//GREY, mode: Normal 25
( 33773, 36053, 0.4, 64, 0, 1, 1 ), -- Vizier Robe, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33773, 36065, 0.2, 64, 0, 1, 1 ), -- Coldwraith Mantle, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33773, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Twilight Adherent, ID: 33818 and 33827 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33818;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33818, 36280, 0.8, 1, 0, 1, 1 ), -- Spiderlord Legguards, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 33818, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33827;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33827, 33447,   3, 1, 0, 1, 5 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 33827, 36053,   3, 1, 0, 1, 1 ), -- Vizier Robe, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33827, 36443, 0.8, 1, 0, 1, 1 ), -- Platinum Medallion, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33827, 43508, 0.8, 1, 0, 1, 1 ), -- Recipe: Last Weeks Mammoth, item level: 75, quality: UNCOMMON//GREEN, mode: Normal 25
( 33827, 90004 ,   3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Twilight Frost Mage, ID: 33819 and 33829 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33819;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33819, 36400, 0.8, 1, 0, 1, 1 ), -- Necropolis Legplates, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 33819, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33829;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33829, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 33829, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33829, 33454, 2.5, 80, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Unknown 80
( 33829, 36064,   2,  1, 0, 1, 1 ), -- Coldwraith Pants, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 33829, 33447, 2.8,  1, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 33829, 33445,   1,  1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 33829, 36278,   1,  1, 0, 1, 1 ), -- Spiderlord Gauntlets, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33829, 36065, 0.7,  1, 0, 1, 1 ), -- Coldwraith Mantle, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 33829, 33365, 0.7,  1, 0, 1, 1 ), -- Frost-Rimed Cloth Belt, item level: 132, quality: POOR//GREY, mode: Normal 25
( 33829, 36388, 0.3, 64, 0, 1, 1 ) -- Revenant Greaves, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
;
-- Loot for Twilight Pyromancer, ID: 33820 and 33830 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33820;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33820, 36286,   1, 1, 0, 1, 1 ), -- Spectral Gauntlets, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 33820, 36277,   1, 1, 0, 1, 1 ), -- Spiderlord Chestpiece, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33820, 36541,   1, 1, 0, 1, 1 ), -- Wintry Claymore, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 33820, 33384, 0.7, 1, 0, 1, 1 ), -- Frozen Pants, item level: 132, quality: POOR//GREY, mode: Normal 10
( 33820, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33830;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33830, 33470, 25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 33830, 43852, 15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 33830, 33454,  2, 1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 33830, 33424,  2, 1, 0, 1, 1 ), -- Cracked Iron Staff, item level: 125, quality: POOR//GREY, mode: Normal 25
( 33830, 36277,  1, 1, 0, 1, 1 ) -- Spiderlord Chestpiece, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
;
-- Loot for Twilight Guardian, ID: 33822 and 33828 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33822;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33822, 33434, 1, 1, 0, 1, 1 ), -- Frozen Leather Helmet, item level: 132, quality: POOR//GREY, mode: Normal 10
( 33822, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33828;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33828, 33445,   2,  1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 33828, 36430,   1,  1, 0, 1, 1 ), -- Puzzle Ring, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 33828, 36058,   1,  1, 0, 1, 1 ), -- Vizier Bracelets, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33828, 36400, 0.7,  1, 0, 1, 1 ), -- Necropolis Legplates, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 33828, 33419, 0.7,  1, 0, 1, 1 ), -- Frost-Worn Plate Shoulderpads, item level: 132, quality: POOR//GREY, mode: Normal 25
( 33828, 36667, 0.3, 64, 0, 1, 1 ), -- Solid Ice Wand, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33828, 36056, 0.3, 64, 0, 1, 1 ), -- Vizier Leggings, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33828, 36064, 0.3, 64, 0, 1, 1 ), -- Coldwraith Pants, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 33828, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Twilight Slayer, ID: 33823 and 33832 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33823;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33823, 36064, 0.7, 1, 0, 1, 1 ), -- Coldwraith Pants, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 33823, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33832;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33832, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 33832, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 33832, 33454,  10,  1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 33832, 36052,   1,  1, 0, 1, 1 ), -- Vizier Slippers, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 33832, 36416, 0.3, 64, 0, 1, 1 ) -- Regal Cloak, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
;
-- Loot for Twilight Shadowblade, ID: 33824 and 33831 25-Version

DELETE FROM `creature_loot_template` where `entry` = 33824;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33824, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 33831;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 33831, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Assault Bot, ID: 34057 and 34115 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34057;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34057, 46029, 100, 1, 0, 1, 1 ) -- Magnetic Core, item level: 1, quality: NORMAL//WHITE, mode: Normal
;
DELETE FROM `creature_loot_template` where `entry` = 34115;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34115, 46029, 100, 1, 0, 1, 1 ) -- Magnetic Core, item level: 1, quality: NORMAL//WHITE, mode: Normal
;
-- Loot for Molten Colossus, ID: 34069 and 34185 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34069;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34069, 39220, 2, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 34069, 36597, 1, 1, 0, 1, 1 ), -- Ice-Splintering Axe, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34069, 36065, 1, 1, 0, 1, 1 ), -- Coldwraith Mantle, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 34069, 33397, 1, 1, 0, 1, 1 ), -- Frigid Mail Armor, item level: 132, quality: POOR//GREY, mode: Normal 10
( 34069, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34185;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34185, 36681,   1,  1, 0, 1, 1 ), -- Wisdom Carver, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34185, 36667, 0.8, 64, 0, 1, 1 ), -- Solid Ice Wand, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34185, 33445, 0.6,  1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34185, 36542, 0.2, 64, 0, 1, 1 ), -- Invasion Blade, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34185, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34069;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34185;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34069;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34185;-- Makes Mob mineable

-- Loot for Forge Construct, ID: 34085 and 34186 25-Version
--
DELETE FROM `creature_loot_template` where `entry` = 34085;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34085, 39220, 4.5, 1, 0, 6, 8 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 34085, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34186;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34085, 33470,  25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34085, 43852,  15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34186, 33454,   1, 1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 34186, 33424, 0.7, 1, 0, 1, 1 ), -- Cracked Iron Staff, item level: 125, quality: POOR//GREY, mode: Normal 25
( 34186, 36387, 0.6, 1, 0, 1, 1 ), -- Revenant Belt, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34186, 36443, 0.4, 1, 0, 1, 1 ) -- Platinum Medallion, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
;
UPDATE `creature_template` SET `skinloot`=100009 WHERE `entry`=34085;
UPDATE `creature_template` SET `skinloot`=100009 WHERE `entry`=34186;
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34085;-- Make Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34186;-- Make Mob mineable
-- Loot for Magma Rager, ID: 34086 and 34201 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34086;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34086, 33470, 25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34086, 43852, 15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34086, 36056,  1, 1, 0, 1, 1 ), -- Vizier Leggings, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34086, 33401,  1, 1, 0, 1, 1 ) -- Frigid Mail Gloves, item level: 132, quality: POOR//GREY, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34201;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34201, 39220, 3, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 25
( 34201, 33445, 1, 1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34201, 45538, 2, 1, 0, 1, 1 ), -- Titanstone Pendant, item level: 226, quality: EPIC//PURPLE, mode: Normal 25
( 34201, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34086;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34201;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34086;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34201;-- Makes Mob mineable

-- Loot for Champion of Hodir, ID: 34133 and 34139 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34133;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34133, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34139;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34139, 36054, 1, 1, 0, 1, 1 ), -- Vizier Gloves, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34139, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Winter Revenant, ID: 34134 and 34141 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34134;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34134, 39220, 4, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 34134, 36682, 1, 1, 0, 1, 1 ), -- Seduced Blade, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 34134, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34141, 33445, 0.8, 1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34141, 36380, 0.8, 1, 0, 1, 1 ), -- Golem Sabatons, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 25
( 34141, 33365, 0.6, 1, 0, 1, 1 ), -- Frost-Rimed Cloth Belt, item level: 132, quality: POOR//GREY, mode: Normal 25
( 34141, 33419, 0.5, 1, 0, 1, 1 ), -- Frost-Worn Plate Shoulderpads, item level: 132, quality: POOR//GREY, mode: Normal 25
( 34141, 90004 ,   3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34134;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34141;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34134;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34141;-- Makes Mob mineable

-- Loot for Winter Rumbler, ID: 34135 and 34142 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34135;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34135, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34135, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 34135, 39220,   4,  1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal
( 34135, 36177, 0.2, 32, 0, 1, 1 ) -- Geist Shoulders, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 32
;
DELETE FROM `creature_loot_template` where `entry` = 34142;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34142, 39220,   4,  1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal
( 34142, 36430, 0.7,  1, 0, 1, 1 ), -- Puzzle Ring, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 34142, 36396, 0.2, 64, 0, 1, 1 ), -- Necropolis Sabatons, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34142, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34135;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34142;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34135;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34142;-- Makes Mob mineable

-- Loot for Winter Jormungar, ID: 34137 and 34140 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34137;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34137, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34137, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 34137, 33568,   3,  1, 0, 1, 1 ), -- Borean Leather, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34137, 36667, 0.3, 32, 0, 1, 1 ) -- Solid Ice Wand, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 32
;
DELETE FROM `creature_loot_template` where `entry` = 34140;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34140, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34140, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 34140, 33568,   3,  1, 0, 1, 1 ), -- Borean Leather, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34140, 33454, 1.5, 80, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Unknown 80
( 34140, 33445, 0.7, 64, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Unknown 64
( 34140, 33400, 0.4, 64, 0, 1, 1 ), -- Frigid Mail Bracers, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34140, 33447, 0.4, 64, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Unknown 64
( 34140, 36682, 0.4, 64, 0, 1, 1 ), -- Seduced Blade, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 36060, 0.4, 64, 0, 1, 1 ), -- Coldwraith Boots, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 36276, 0.3, 64, 0, 1, 1 ), -- Spiderlord Boots, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 43509, 0.3, 64, 0, 1, 1 ), -- Recipe: Bad Clams, item level: 75, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 33399, 0.3, 64, 0, 1, 1 ), -- Frigid Mail Boots, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34140, 33371, 0.2, 64, 0, 1, 1 ), -- Frost-Rimed Cloth Vest, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34140, 36401, 0.2, 64, 0, 1, 1 ), -- Necropolis Epaulets, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 36457, 0.2, 64, 0, 1, 1 ), -- Ivory Shield, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 36541, 0.1, 64, 0, 1, 1 ), -- Wintry Claymore, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34140, 36556, 0.1, 64, 0, 1, 1 ) -- Apocalyptic Staff, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
;
UPDATE `creature_template` SET `skinloot`=70207 WHERE `entry`=34137;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=70207 WHERE `entry`=34140;-- Adds Skinloot
-- Loot for Arachnopod Destroyer, ID: 34183 and 34214 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34183;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34183, 33433,   3, 1, 0, 1, 1 ), -- Frigid Mail Circlet, item level: 132, quality: POOR//GREY, mode: Normal 10
( 34183, 36058,   2, 1, 0, 1, 1 ), -- Vizier Bracelets, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34183, 33403,   1, 1, 0, 1, 1 ), -- Frigid Mail Shoulderpads, item level: 132, quality: POOR//GREY, mode: Normal 10
( 34183, 36147, 0.8, 1, 0, 1, 1 ), -- Pygmy Belt, item level: 170, quality: UNCOMMON//GREEN, mode: Normal 10
( 34183, 36155, 0.8, 1, 0, 1, 1 ), -- Wendigo Girdle, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 10
( 34183, 36666, 0.8, 1, 0, 1, 1 ), -- Polar Wand, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 10
( 34183, 33428, 0.8, 1, 0, 1, 1 ), -- Dulled Shiv, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34183, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34214;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34214, 36045, 1, 1, 0, 1, 1 ), -- Crystalsong Robe, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 25
( 34214, 36282, 1, 1, 0, 1, 1 ), -- Spiderlord Bracers, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34214, 43624, 1, 1, 0, 1, 1 ), -- Titanium Lockbox, item level: 78, quality: RARE//BLUE, mode: Normal 25
( 34214, 43509, 1, 1, 0, 1, 1 ), -- Recipe: Bad Clams, item level: 75, quality: UNCOMMON//GREEN, mode: Normal 25
( 34214, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Hardened Iron Golem, ID: 34190 and 34229 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34190;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34190, 39220, 3, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 34190, 33431, 1, 1, 0, 1, 1 ), -- Icesmashing Mace, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34190, 33424, 1, 1, 0, 1, 1 ), -- Cracked Iron Staff, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34190, 90003 , 3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34229;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34229, 36429,   1, 64, 0, 1, 1 ), -- Spur Ring, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34229, 36391,   1,  1, 0, 1, 1 ), -- Revenant Helmet, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34229, 36390, 0.7,  1, 0, 1, 1 ), -- Revenant Gauntlets, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34229, 36282, 0.5, 64, 0, 1, 1 ), -- Spiderlord Bracers, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34229, 36286, 0.3, 64, 0, 1, 1 ), -- Spectral Gauntlets, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34229, 36709, 0.2, 64, 0, 1, 1 ), -- Crystal Woodstaff, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34229, 33380, 0.2, 64, 0, 1, 1 ), -- Frozen Belt, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34229, 33414, 0.2, 64, 0, 1, 1 ), -- Frost-Worn Plate Bracers, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34229, 36611, 0.1, 64, 0, 1, 1 ), -- Bleak Scythe, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34229, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34190;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34229;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34190;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34229;-- Makes Mob mineable

-- Loot for Trash, ID: 34191 and 34217 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34191;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34191, 41338, 44, 1, 0, 1, 3 ), -- Sprung Whirlygig, item level: 1, quality: POOR//GREY, mode: Normal
( 34191, 41337, 40, 1, 0, 1, 3 ), -- Whizzed-Out Gizmo, item level: 1, quality: POOR//GREY, mode: Normal
( 34191, 39690, 10, 1, 0, 1, 3 ), -- Volatile Blasting Trigger, item level: 72, quality: NORMAL//WHITE, mode: Normal
( 34191, 39681,  5, 1, 0, 2, 4 ), -- Handful of Cobalt Bolts, item level: 71, quality: NORMAL//WHITE, mode: Normal
( 34191, 39683,  1, 1, 0, 1, 1 ) -- Froststeel Tube, item level: 70, quality: NORMAL//WHITE, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34217;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34217, 41338, 44, 1, 0, 1, 3 ), -- Sprung Whirlygig, item level: 1, quality: POOR//GREY, mode: Normal
( 34217, 41337, 40, 1, 0, 1, 3 ), -- Whizzed-Out Gizmo, item level: 1, quality: POOR//GREY, mode: Normal
( 34217, 39690, 10, 1, 0, 1, 3 ), -- Volatile Blasting Trigger, item level: 72, quality: NORMAL//WHITE, mode: Normal
( 34217, 39681, 5, 1, 0, 2, 4 ) -- Handful of Cobalt Bolts, item level: 71, quality: NORMAL//WHITE, mode: Normal
;

-- Loot for Clockwork Sapper, ID: 34193 and 34220 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34193;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34193, 36511, 0.1, 32, 0, 1, 1 ), -- Arctic War Hammer, item level: 170, quality: UNCOMMON//GREEN, mode: Unknown 32
( 34193, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34220;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34220, 36393, 2, 1, 0, 1, 1 ), -- Revenant Epaulets, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34220, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Rune Etched Sentry, ID: 34196 and 34245 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34196;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34196, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34196, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34196, 39220, 3.5,  1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal
( 34196, 36064, 1.2,  1, 0, 1, 1 ), -- Coldwraith Pants, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 34196, 36392, 1.2,  1, 0, 1, 1 ), -- Revenant Legguards, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34196, 36399,   1,  1, 0, 1, 1 ) -- Necropolis Helm, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34245;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34245, 39220, 3.5,  1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal
( 34245, 36059, 0.8,  1, 0, 1, 1 ), -- Coldwraith Sash, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 34245, 36430, 0.8, 64, 0, 1, 1 ), -- Puzzle Ring, item level: 182, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34245, 33447, 0.6,  1, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 34245, 33385, 0.3, 64, 0, 1, 1 ), -- Frozen Shoulderpads, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34245, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34196;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34245;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34196;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34245;-- Makes Mob mineable

-- Loot for Chamber Overseer, ID: 34197 and 34226 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34197;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34197, 39220, 3.5, 1, 0, 1, 1 ), -- Geodesic Fragments, item level: 1, quality: POOR//GREY, mode: Normal 10
( 34197, 36396, 1.3, 1, 0, 1, 1 ), -- Necropolis Sabatons, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 34197, 37835, 0.1, 32, 0, 1, 1 ), -- JeTzes Bell, item level: 200, quality: EPIC//PURPLE, mode: Unknown 32
( 34197, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34226;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34226, 33445,   2,  1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34226, 36166, 0.4, 64, 0, 1, 1 ), -- Webspinner Gloves, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34226, 36281, 0.3, 64, 0, 1, 1 ), -- Spiderlord Spaulders, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34226, 90004 ,   3,  1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34197;-- Adds Skinloot
UPDATE `creature_template` SET `skinloot`=100011 WHERE `entry`=34226;-- Adds Skinloot
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34197;-- Makes Mob mineable
UPDATE `creature_template` SET `type_flags` =`type_flags`|512 WHERE `entry`=34226;-- Makes Mob mineable

-- Loot for Iron Mender, ID: 34198 and 34236 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34198;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34198, 33470,  25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34198, 43852,  15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34198, 33423, 1.3, 1, 0, 1, 1 ), -- Rime-Covered Mace, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34198, 36443,   1, 1, 0, 1, 1 ), -- Platinum Medallion, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34198, 33426,   1, 1, 0, 1, 1 ), -- Chipped Timber Axe, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34198, 36626, 0.6, 1, 0, 1, 1 ) -- Military Compound Bow, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34236;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34236, 36430, 2, 1, 0, 1, 1 ), -- Puzzle Ring, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 25
( 34236, 45912, 2, 1, 0, 1, 1 ), -- Book of Glyph Mastery, item level: 80, quality: UNCOMMON//GREEN, mode: Normal 25
( 34236, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Lightning Charged Iron Dwarf, ID: 34199 and 34237 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34199;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34199, 33470,  25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34199, 43852,  15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34199, 36178,   1, 1, 0, 1, 1 ), -- Geist Wristguards, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
( 34199, 36171, 0.8, 1, 0, 1, 1 ) -- Geist Belt, item level: 182, quality: UNCOMMON//GREEN, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34237;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34237, 45540, 1.4, 1, 0, 1, 1 ), -- Bladebearers Signet, item level: 226, quality: EPIC//PURPLE, mode: Normal 25
( 34237, 33445, 1.4, 1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34237, 36429, 1.2, 1, 0, 1, 1 ), -- Spur Ring, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34237, 90004 ,   3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for Parts Recovery Technician, ID: 34267 and 34268 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34267;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34267, 33470,  25,  1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34267, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34267, 36277,   1,  1, 0, 1, 1 ), -- Spiderlord Chestpiece, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 10
( 34267, 36045, 0.3, 32, 0, 1, 1 ) -- Crystalsong Robe, item level: 174, quality: UNCOMMON//GREEN, mode: Unknown 32
;
DELETE FROM `creature_loot_template` where `entry` = 34268;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34268, 33470,  25, 1, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Normal
( 34268, 43852,  15, 1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34268, 36042,   1, 1, 0, 1, 1 ), -- Condor Bindings, item level: 170, quality: UNCOMMON//GREEN, mode: Normal 25
( 34268, 33454,   1, 1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 34268, 36037, 0.6, 1, 0, 1, 1 ), -- Condor Robe, item level: 170, quality: UNCOMMON//GREEN, mode: Normal 25
( 34268, 33445, 0.5, 1, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Normal 25
( 34268, 36375, 0.4, 1, 0, 1, 1 ) -- Kraken Helm, item level: 170, quality: UNCOMMON//GREEN, mode: Normal 25
;
-- Loot for XR-949 Salvagebot, ID: 34269 and 34270 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34269;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34269, 43509, 1.2, 1, 0, 1, 1 ), -- Recipe: Bad Clams, item level: 75, quality: UNCOMMON//GREEN, mode: Normal 10
( 34269, 33426,   1, 1, 0, 1, 1 ), -- Chipped Timber Axe, item level: 125, quality: POOR//GREY, mode: Normal 10
( 34269, 90003 ,   3, 1, 1, -90003, 1) -- Reference Loot ... Epic 10 Mann
;
DELETE FROM `creature_loot_template` where `entry` = 34270;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34270, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34270, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 34270, 33454, 1.4,  1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 34270, 33447, 3.2,  1, 0, 1, 1 ), -- Runic Healing Potion, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 34270, 33445, 0.6, 64, 0, 1, 1 ), -- Honeymint Tea, item level: 85, quality: NORMAL//WHITE, mode: Unknown 64
( 34270, 37761, 0.5,  1, 0, 1, 1 ), -- Shimmerthread Girdle, item level: 174, quality: RARE//BLUE, mode: Normal 25
( 34270, 33428, 0.4, 64, 0, 1, 1 ) -- Dulled Shiv, item level: 125, quality: POOR//GREY, mode: Unknown 64
;
-- Loot for XD-175 Compactobot, ID: 34271 and 34272 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34271;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34271, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34271, 43852,  15, 88, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Unknown 88
( 34271, 36383, 1.2,  1, 0, 1, 1 ), -- Golem Helmet, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 10
( 34271, 33384, 0.8,  1, 0, 1, 1 ) -- Frozen Pants, item level: 132, quality: POOR//GREY, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34272;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34272, 33427, 0.6, 64, 0, 1, 1 ), -- Frost-Encrusted Rifle, item level: 125, quality: POOR//GREY, mode: Unknown 64
( 34272, 36457, 0.6,  1, 0, 1, 1 ), -- Ivory Shield, item level: 178, quality: UNCOMMON//GREEN, mode: Normal 25
( 34272, 33423, 0.5, 64, 0, 1, 1 ), -- Rime-Covered Mace, item level: 125, quality: POOR//GREY, mode: Unknown 64
( 34272, 43465, 0.5,  1, 0, 1, 1 ), -- Scroll of Strength VII, item level: 80, quality: NORMAL//WHITE, mode: Normal 25
( 34272, 36665, 0.4, 64, 0, 1, 1 ), -- Wasteland Wand, item level: 170, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34272, 36695, 0.4, 64, 0, 1, 1 ), -- Dogmatic Scepter, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34272, 36153, 0.2, 64, 0, 1, 1 ), -- Pygmy Shoulders, item level: 170, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34272, 36624, 0.1, 64, 0, 1, 1 ), -- Shrieking Bow, item level: 174, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34272, 90004 , 3, 1, 1, -90004, 1) -- Reference Loot ... Epic 25 Mann
;
-- Loot for XB-488 Disposalbot, ID: 34273 and 34274 25-Version

DELETE FROM `creature_loot_template` where `entry` = 34273;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34273, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34273, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34273, 36386, 0.8,  1, 0, 1, 1 ) -- Golem Vambraces, item level: 174, quality: UNCOMMON//GREEN, mode: Normal 10
;
DELETE FROM `creature_loot_template` where `entry` = 34274;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`)
VALUES
( 34274, 33470,  25, 88, 0, 2, 7 ), -- Frostweave Cloth, item level: 70, quality: NORMAL//WHITE, mode: Unknown 88
( 34274, 43852,  15,  1, 0, 1, 1 ), -- Thick Fur Clothing Scraps, item level: 70, quality: POOR//GREY, mode: Normal
( 34274, 41337,   3,  1, 0, 1, 3 ), -- Whizzed-Out Gizmo, item level: 1, quality: POOR//GREY, mode: Normal 25
( 34274, 33454,   3,  1, 0, 1, 1 ), -- Salted Venison, item level: 75, quality: NORMAL//WHITE, mode: Normal 25
( 34274, 36665, 0.7,  1, 0, 1, 1 ), -- Wasteland Wand, item level: 170, quality: UNCOMMON//GREEN, mode: Normal 25
( 34274, 36667, 0.3, 64, 0, 1, 1 ), -- Solid Ice Wand, item level: 178, quality: UNCOMMON//GREEN, mode: Unknown 64
( 34274, 33401, 0.1, 64, 0, 1, 1 ), -- Frigid Mail Gloves, item level: 132, quality: POOR//GREY, mode: Unknown 64
( 34274, 36610, 0.1, 64, 0, 1, 1 ) -- Plagued Pike, item level: 174, quality: UNCOMMON//GREEN, mode: Unknown 64
;

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5369,5423);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5369, 'at_RX_214_repair_o_matic_station'),
(5423, 'at_RX_214_repair_o_matic_station');

UPDATE `creature_template` SET `ScriptName` = 'npc_liquid_pyrite' WHERE `entry` = 33189;

UPDATE `spell_script_names` SET `ScriptName`='spell_xt002_searing_light_targeting' WHERE `spell_id` IN (63018,65121);
UPDATE `spell_script_names` SET `ScriptName`='spell_xt002_gravity_bomb_targeting' WHERE `spell_id` IN (63024,64234);


UPDATE `spell_script_names` SET `ScriptName`='spell_auriaya_strenght_of_the_pack' WHERE `spell_id`=64381;
UPDATE `creature_template` SET `ScriptName`='npc_leviathan_player_vehicle' WHERE `entry` IN (33060,33062,33109);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62359,64979);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64979, 'spell_anti_air_rocket'),
(62359, 'spell_anti_air_rocket');

UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=33218;
UPDATE `creature_template` SET `ScriptName`='npc_liquid_pyrite' WHERE `entry`=33189;

UPDATE `creature` SET `id`=33214 WHERE `id`=33218;
UPDATE `creature` SET `spawndist`=50, `MovementType`=1 WHERE `id`=33214;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=62363;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13, 62363, 18, 1, 33214);

DELETE FROM `spell_script_names` WHERE `spell_id`=62374;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62374, 'spell_pursued');

-- make Orbital Support trigger and passive
UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=34286;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (65044,65045);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65044, 'spell_flame_leviathan_flames'),
(65045, 'spell_flame_leviathan_flames');
DELETE FROM `spell_script_names` WHERE `spell_id`=61900;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(61900, 'spell_steelbreaker_electrical_charge');

UPDATE `creature_template` SET `ScriptName`='mob_saronit_vapor' WHERE `entry`=33488;


DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` BETWEEN 10082 AND 10087;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` BETWEEN 10082 AND 10087 AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10082,11,0,0,'achievement_i_choose_you'),
(10083,11,0,0,'achievement_i_choose_you'),
(10084,11,0,0,'achievement_i_choose_you'),
(10085,11,0,0,'achievement_i_choose_you'),
(10086,11,0,0,'achievement_i_choose_you'),
(10087,11,0,0,'achievement_i_choose_you'),
(10082,12,0,0,''),
(10083,12,0,0,''),
(10084,12,0,0,''),
(10085,12,1,0,''),
(10086,12,1,0,''),
(10087,12,1,0,'');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10088,10418,10419,10089,10420,10421);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10088,10418,10419,10089,10420,10421) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10088,11,0,0,'achievement_but_i_am_on_your_side'),
(10418,11,0,0,'achievement_but_i_am_on_your_side'),
(10419,11,0,0,'achievement_but_i_am_on_your_side'),
(10088,12,0,0,''),
(10418,12,0,0,''),
(10419,12,0,0,''),
(10089,11,0,0,'achievement_but_i_am_on_your_side'),
(10420,11,0,0,'achievement_but_i_am_on_your_side'),
(10421,11,0,0,'achievement_but_i_am_on_your_side'),
(10089,12,1,0,''),
(10420,12,1,0,''),
(10421,12,1,0,'');

UPDATE `spell_script_names` SET `ScriptName`='spell_elder_ironbranchs_essence_targeting' WHERE `spell_id`=62713;
UPDATE `spell_script_names` SET `ScriptName`='spell_elder_brightleafs_essence_targeting' WHERE `spell_id` IN (62968,65761);
DELETE FROM `spell_script_names` WHERE `spell_id`=62207;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62207, 'spell_elder_brightleaf_unstable_sun_beam');
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(64381,'spell_auriaya_strenght_of_the_pack');
UPDATE `creature_template` SET `ScriptName` = 'npc_liquid_pyrite' WHERE `entry` = 33189;
UPDATE `creature_template` SET `ScriptName`='npc_leviathan_player_vehicle' WHERE `entry` IN (33060,33062,33109);
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5369,5423);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5369, 'at_RX_214_repair_o_matic_station'),
(5423, 'at_RX_214_repair_o_matic_station');
DELETE FROM `spell_script_names` WHERE `spell_id` = 66515;
INSERT INTO `spell_script_names` VALUES
('66515', 'spell_gen_reflective_shield');

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10451,10462) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10451,11,0,0, 'achievement_i_love_the_smell_of_saronite_in_the_morning'),
(10462,11,0,0, 'achievement_i_love_the_smell_of_saronite_in_the_morning'),
(10451,12,0,0, ''),
(10462,12,1,0, '');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10290,10133) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10290,11,0,0, 'achievement_rubble_and_roll'),
(10133,11,0,0, 'achievement_rubble_and_roll'),
(10290,12,0,0, ''),
(10133,12,1,0, '');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10284,10722) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10284,11,0,0, 'achievement_disarmed'),
(10722,11,0,0, 'achievement_disarmed'),
(10284,12,0,0, ''),
(10722,12,1,0, '');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10285,10095) AND `type` IN (11,12);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10285,11,0,0, 'achievement_with_open_arms'),
(10095,11,0,0, 'achievement_with_open_arms'),
(10285,12,0,0, ''),
(10095,12,1,0, '');
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10450,10463);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10450,10463) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10450,11,0,0, 'achievement_firefighter'),
(10463,11,0,0, 'achievement_firefighter');
DELETE FROM `creature_addon` WHERE `guid` = 137619;
DELETE FROM `creature_addon` WHERE `guid` between 137621 and 137629;
UPDATE `creature_template` SET `ScriptName`='npc_general_lightsbane' WHERE `entry`=29851;
UPDATE `creature_template` SET `ScriptName`='npc_the_ocular' WHERE `entry`=29747;
UPDATE `creature_template` SET ScriptName = 'npc_free_your_mind' WHERE `entry` IN (29769,29770,29840);
UPDATE `creature_template` SET `ScriptName`='npc_saronite_mine_slave' WHERE `entry`=31397;

-- Fix: gameobject en Ulduar by WS en creature_addon
-- Requerido borrar todos los Objetos del map 603
DELETE FROM gameobject WHERE map=603;
INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208880, 194253, 603, 3, 1, 1631.91, -246.497, 417.321, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208881, 194232, 603, 3, 1, 1805.63, -23.5203, 451.225, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208882, 194675, 603, 3, 1, 2307, 284.632, 424.288, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208883, 194560, 603, 3, 1, 2180.76, -263.021, 414.681, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208884, 194307, 603, 3, 1, 1966.43, -203.906, 432.687, -0.90757, 0, 0, 0, 1, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208885, 194569, 603, 3, 1, 1859.65, -24.9121, 448.811, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208886, 194569, 603, 3, 1, 553.233, -12.3247, 409.679, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208887, 194569, 603, 3, 1, 2086.26, -23.9948, 421.316, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208888, 194569, 603, 3, 1, -706.122, -92.6024, 429.876, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208889, 194569, 603, 3, 1, 131.248, -35.3802, 409.804, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208890, 194569, 603, 3, 1, 926.292, -11.4635, 418.595, -0.017452, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208891, 194569, 603, 3, 1, 1854.82, -11.5608, 334.175, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208892, 194569, 603, 3, 1, 1498.05, -24.3509, 420.966, 0.034906, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208893, 189973, 603, 3, 1, 2207.9, -108.052, 433.312, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208894, 189973, 603, 3, 1, 2270.16, 39.4115, 426.255, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208895, 189973, 603, 3, 1, 2287.75, -83.3646, 427.93, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208896, 189973, 603, 3, 1, 2373.08, -73.3715, 424.234, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208897, 189973, 603, 3, 1, 2346.67, -201.668, 437.876, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208898, 189973, 603, 3, 1, 2265.37, 17.7431, 424.403, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208899, 189973, 603, 3, 1, 2275.72, -167.189, 438.211, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208900, 189973, 603, 3, 1, 2415.88, 77.0503, 437.295, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208901, 191019, 603, 3, 1, 2356.98, -136.585, 433.787, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208902, 191019, 603, 3, 1, 2217.84, -81.8108, 429.276, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208903, 191019, 603, 3, 1, 2330.91, 57.059, 430.827, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208904, 191019, 603, 3, 1, 2144.74, -45.941, 421.084, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208905, 191019, 603, 3, 1, 2357.63, 10.2257, 425.17, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208906, 191019, 603, 3, 1, 2140.81, -3.33854, 421.365, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208907, 194370, 603, 3, 1, 82.8628, -394.292, 406.853, -0.794123, 0, 0, 0, 1, 604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208908, 194371, 603, 3, 1, -79.4028, 89.1146, 430.436, 3.08918, 0, 0, 0, 1, 604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208909, 194630, 603, 3, 1, 395.062, -13.4878, 410.855, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208910, 194631, 603, 3, 1, 763.883, -11.8925, 410.3, 3.13286, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208911, 194375, 603, 3, 1, -223.556, -298.557, 365.345, 3.14159, 0, 0, 0, 1, 604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208912, 194377, 603, 3, 1, 339.891, 318.526, 405.776, -2.34746, 0, 0, 0, 1, 604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208913, 194634, 603, 3, 1, 1997.56, -136.597, 432.54, 0.175118, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208914, 194635, 603, 3, 1, 2033.63, -25.5278, 261.296, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208915, 194636, 603, 3, 1, 1954.82, -69.7339, 261.961, -2.14508, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208916, 194637, 603, 3, 1, 1962.33, 14.217, 263.805, -1.09906, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208917, 194904, 603, 3, 1, 0.000003, -19.0309, -0.000007, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208918, 194905, 603, 3, 1, 147.036, -123.838, 409.805, 6.28083, 0, 0, 0.00117889, -0.999999, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208919, 194907, 603, 3, 1, 1847.29, -262.906, 418.082, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208920, 194907, 603, 3, 1, 1921.86, -166.187, 415.181, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208921, 194907, 603, 3, 1, 1883.94, -201.941, 413.356, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208922, 194907, 603, 3, 1, 1940.02, -345.828, 422.872, -2.33874, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208923, 194907, 603, 3, 1, 1785.66, -348.948, 412.566, -2.33874, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208924, 194907, 603, 3, 1, 1872.92, -288.36, 412.299, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208925, 194907, 603, 3, 1, 1865.88, -147.393, 413.655, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208926, 194907, 603, 3, 1, 1842.3, -343.967, 413.22, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208927, 194907, 603, 3, 1, 1944.59, -390.706, 427.45, -2.33874, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208928, 194907, 603, 3, 1, 1866.68, -382.414, 412.956, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208929, 194907, 603, 3, 1, 1892.91, -345.613, 412.993, -2.33874, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208930, 194398, 603, 3, 1, 235.443, 364.5, 413.047, -1.54462, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208931, 194910, 603, 3, 17, 1632.05, -266.149, 438.561, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208932, 194399, 603, 3, 1, 108.63, 361.274, 412.325, -1.55334, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208933, 194400, 603, 3, 1, 82.184, 9.73611, 412.138, 3.13286, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208934, 194401, 603, 3, 1, 84.2587, -80.5104, 411.177, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208935, 194402, 603, 3, 1, -17.0642, 11.0451, 411.999, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208936, 194914, 603, 3, 1, 2277.42, 298.693, 419.246, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208937, 194403, 603, 3, 1, -18.0903, -81.3229, 411.683, 3.13286, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208938, 194915, 603, 3, 1, 2309.04, 288.706, 372.476, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208939, 194404, 603, 3, 1, -114.233, -34.4514, 412.352, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208940, 194148, 603, 3, 17, 1632.05, -307.654, 417.321, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208941, 194405, 603, 3, 1, -144.424, -285.087, 371.808, 1.57952, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208942, 194406, 603, 3, 1, -199.698, 192.858, 435.487, -1.54462, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208943, 194407, 603, 3, 1, -227.686, 33.2101, 411.343, 3.12407, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208944, 194663, 603, 3, 1, -222.486, -298.472, 427.832, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208945, 194408, 603, 3, 1, -222.29, -100.594, 411.953, -3.13286, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208946, 194664, 603, 3, 1, -77.0548, 92.1175, 488.701, 3.13286, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208947, 194665, 603, 3, 1, 84.7566, -392.88, 478.345, -3.09792, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208948, 194409, 603, 3, 1, -311.762, -32.3976, 412.407, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208949, 194666, 603, 3, 1, 337.669, 319.174, 471.7, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208950, 194410, 603, 3, 1, -305.719, -286.347, 372.136, 1.57952, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208951, 194411, 603, 3, 1, -385.627, 44.967, 411.797, 3.12412, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208952, 194412, 603, 3, 1, -384.313, -99.533, 412.075, -3.13286, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208953, 194413, 603, 3, 1, -482.273, 46.1858, 412.707, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208954, 194414, 603, 3, 1, -481.045, -29.4479, 412.674, 3.13286, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208955, 194415, 603, 3, 1, -483.257, -98.3038, 412.477, 3.14159, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208956, 194416, 603, 3, 1, 148.176, -36.497, 409.804, 3.14159, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208957, 194437, 603, 3, 1, 2306.87, 274.237, 424.288, 1.52255, 0, 0, 0.689847, 0.723956, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208958, 194441, 603, 3, 1, 1999.71, -166.259, 432.823, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208959, 194442, 603, 3, 1, 1999.16, -297.793, 431.961, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208960, 194704, 603, 3, 1, 279.946, -153.333, 489.479, 0.008724, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208961, 194705, 603, 3, 1, 241.444, 90.1978, 504.14, 3.11539, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208962, 194706, 603, 3, 1, 340.429, 93.0752, 504.134, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208963, 194707, 603, 3, 1, 383.947, -141.466, 490.091, 1.09956, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208964, 194715, 603, 3, 17, 1632.05, -307.654, 417.321, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208965, 194716, 603, 3, 1, 1632.25, -307.548, 416.264, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208966, 194481, 603, 3, 1, -815.071, -201.373, 429.842, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208967, 194484, 603, 3, 1, -805.097, -78.2313, 605.22, -2.65289, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208968, 194235, 603, 3, 1, -926.495, -149.456, 489.591, -0.008724, 0, 0, 1, 0, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208969, 194236, 603, 3, 1, -926.495, -145.254, 489.591, -0.008724, 0, 0, 1, 0, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208970, 194750, 603, 3, 1, 1854.86, 31.5341, 342.113, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208971, 194506, 603, 3, 1, 36.566, 194.347, 432.895, -1.59698, 0, 0, 0, 1, 604800, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208972, 194767, 603, 3, 1, 1632.02, -182.921, 427.668, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208973, 194255, 603, 3, 1, 1903.96, 252.687, 418.044, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208974, 194773, 603, 3, 1, 1877.86, -24.1376, 335.281, 1.5708, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208975, 194261, 603, 3, 1, 130.553, -128.063, 409.804, 2.87979, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208976, 194261, 603, 3, 1, 138.516, 56.1078, 409.804, 2.87979, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208977, 194262, 603, 3, 1, 131.895, -128.264, 409.804, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208978, 194262, 603, 3, 1, 139.857, 55.9064, 409.804, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208979, 194265, 603, 3, 1, 2173.27, -252.867, 420.146, 0.104719, 0, 0, 1, 0, 7200, 100, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208980, 190170, 603, 3, 1, 2315.56, -62.0451, 425.587, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208981, 190170, 603, 3, 1, 2298.91, -39.9097, 423.497, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208982, 190170, 603, 3, 1, 2444.97, 31.25, 431.876, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208983, 190170, 603, 3, 1, 2247.95, -128.849, 432.3, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208984, 190170, 603, 3, 1, 2376.15, -36.5122, 423.918, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208985, 190170, 603, 3, 1, 2188.37, -84.1094, 432.584, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208986, 190171, 603, 3, 1, 2192.25, -14.3125, 424.318, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208987, 190171, 603, 3, 1, 2384.18, 110.411, 437.772, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208988, 190171, 603, 3, 1, 2182, -39.9705, 423.828, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208989, 190171, 603, 3, 1, 2288.06, 3.9375, 424.991, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208990, 190171, 603, 3, 1, 2440.17, 69.066, 441.15, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208991, 190171, 603, 3, 1, 2411.63, 19.7378, 428.232, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208992, 190171, 603, 3, 1, 2317.68, 9.02257, 428.747, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208993, 190176, 603, 3, 1, 2229.01, -57.0226, 423.6, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208994, 195046, 603, 3, 1, 1836.52, -36.1111, 448.81, 0.558504, 0, 0, 0, 1, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208995, 194553, 603, 3, 1, 1740.84, -24.0471, 450.278, 1.5708, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208996, 194554, 603, 3, 1, 1671.31, 120.698, 428.186, 1.5708, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208997, 194556, 603, 3, 1, 1501.49, 119.701, 428.697, 1.5708, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208998, 194557, 603, 3, 1, 2227.69, -413.299, 411.988, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (208999, 194558, 603, 3, 1, 2135.08, -417.905, 439.998, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209000, 194559, 603, 3, 1, 2134.98, -216.911, 419.093, -1.5708, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209001, 195036, 603, 3, 1, 1886.94, 55.3576, 342.37, 0, 0, 0, 0, 1, 3600, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209002, 194565, 603, 3, 1, 571.947, -136.012, 391.517, 2.28638, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209003, 194565, 603, 3, 1, 589.923, -133.622, 391.897, -2.9845, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209004, 194569, 603, 3, 1, 2518.16, 2569.03, 412.299, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209005, 194912, 603, 3, 1, 2338.32, 2565.08, 419.246, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209006, 194913, 603, 3, 1, 2306.4, 2571.85, 372.476, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209007, 194739, 603, 3, 1, 2790.28, 2569.54, 368.89, 3.14159, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209008, 194740, 603, 3, 1, 2759.41, 2594.22, 364.314, -2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209009, 194741, 603, 3, 1, 2704.1, 2569.34, 364.314, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209010, 194742, 603, 3, 1, 2715.5, 2569.34, 364.314, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209011, 194743, 603, 3, 1, 2726.91, 2569.34, 364.314, 0, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209012, 194744, 603, 3, 1, 2753.71, 2584.34, 364.314, -2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209013, 194745, 603, 3, 1, 2765.33, 2534.48, 364.314, 2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209014, 194746, 603, 3, 1, 2765.11, 2604.1, 364.314, -2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209015, 194747, 603, 3, 1, 2753.92, 2554.24, 364.314, 2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209016, 194748, 603, 3, 1, 2759.62, 2544.36, 364.314, 2.09439, 0, 0, 0, 1, 180, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209017, 194749, 603, 3, 1, 2744.56, 2569.35, 363.74, 3.14159, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209018, 194774, 603, 3, 1, 2777.51, 2626.16, 364.25, -2.09439, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209019, 194775, 603, 3, 1, 2776.66, 2512.09, 364.25, 2.09439, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209020, 194776, 603, 3, 1, 2677.9, 2569.83, 364.25, 0, 0, 0, 0, 1, 180, 255, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209021, 195047, 603, 3, 1, 1836.52, -36.1111, 448.81, 0.558504, 0, 0, 0, 1, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209022, 194308, 603, 3, 1, 1966.43, -203.906, 432.687, -0.90757, 0, 0, 0, 1, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209023, 194905, 603, 3, 1, 147.831, -103.135, 409.805, 6.2769, 0, 0, 0.00314203, -0.999995, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209024, 194905, 603, 3, 1, 148.213, -43.8613, 409.805, 0.00156927, 0, 0, 0.000784635, 1, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209025, 194905, 603, 3, 1, 148.187, -27.1173, 409.805, 0.00156927, 0, 0, 0.000784635, 1, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209026, 194905, 603, 3, 1, 148.043, 27.1395, 409.805, 0.0015707, 0, 0, 0.000785351, 1, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209027, 194905, 603, 3, 1, 148.286, 51.8011, 409.804, 0.00942516, 0, 0, 0.00471256, 0.999989, 25, 0, 0);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209028, 194438, 603, 3, 1, 2306.99, 2589.35, 424.382, 4.71676, 0, 0, 0.705559, -0.708651, 300, 0, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209029, 194625, 603, 3, 1, 2001.4, -59.66, 245.07, 0, 0, 0, 0, 0, 60, 100, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209030, 194625, 603, 3, 1, 1941.61, -25.88, 244.98, 0, 0, 0, 0, 0, 60, 100, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209031, 194625, 603, 3, 1, 2001.18, 9.409, 245.24, 0, 0, 0, 0, 0, 60, 100, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209032, 194628, 603, 3, 1, 1646.28, -175.381, 427.257, 1.57079, 0, 0, 0, 0, 300, 100, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209033, 194200, 603, 3, 1, 2029.19, -192.403, 432.687, 4.44005, 0, 0, 0.79655, -0.604572, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209034, 194201, 603, 3, 1, 2029.19, -192.403, 432.687, 4.44005, 0, 0, 0.79655, -0.604572, -604800, 255, 1);

INSERT INTO gameobject
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
   (209035, 194555, 603, 3, 1, 1435.66, 118.825, 423.619, 0, 0, 0, 0, 0, 120, 0, 1);

-- Fix: gameobject en Ulduar by WS 
-- ------------------
-- Flame Leviathane |
-- ------------------
-- Runeforged Sentry
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=34234;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=13 WHERE `entry`=34235;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34234;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34234;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34234,0,0,0,0,0,100,0,2000,2000,10000,10000,11,64852,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Flaming Rune'),
(34234,0,1,0,0,0,100,0,3000,5000,5000,7000,11,64870,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Lava Burst'),
(34234,0,2,0,0,0,100,0,2500,3000,12000,15000,11,64847,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Runeforged Sentry - Cast Runed Flame Jets');
-- Steelforged Defender
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=33236;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=13 WHERE `entry`=34113;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33236;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33236;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33236,0,0,0,0,0,100,0,4000,6000,15000,20000,11,62845,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Hamstring'),
(33236,0,1,0,0,0,100,0,0,4000,6000,8000,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Lightning Bolt'),
(33236,0,2,0,0,0,100,0,5000,6000,4000,6000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Steelforged Defender - Cast Sunder Armor');
-- Mechagnome Battletank
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`dmg_multiplier`=7.5,`AIName`='SmartAI' WHERE `entry`=34164;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`dmg_multiplier`=13 WHERE `entry`=34165;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34164;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34164;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34164,0,0,0,0,0,100,0,3000,4000,6000,8000,11,64693,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Mechagnome Battletank - Cast Flame Cannon'),
(34164,0,1,0,0,0,100,0,10000,10000,15000,20000,11,64953,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Mechagnome Battletank - Cast Jump Attack');
-- Ironwork Cannon - NEED HELP!
/*UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|8,`unit_flags`=`unit_flags`|4,`mindmg`=417,`maxdmg`=582,`attackpower`=968,`minrangedmg`=341,`maxrangedmg`=506,`baseattacktime`=2000,`AIName`='SmartAI' WHERE `entry`=34164;
UPDATE `creature_model_info` SET `bounding_radius`=2.06,`combat_reach`=3 WHERE `modelid` IN (26161,27101,25723,28471);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34164;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34164;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34164,0,0,0,0,0,100,0,3000,4000,6000,8000,11,64693,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Ironwork Cannon - Cast Flame Cannon');*/
-- -------
-- Ignis |
-- -------
-- Molten Colossus
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`attackpower`=982,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34069;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`attackpower`=982,`dmg_multiplier`=18 WHERE `entry`=34185;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34069;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34069;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34069,0,0,0,0,0,100,0,6000,10000,10000,12000,11,64697,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Molten Colossus - Cast Earthquake'),
(34069,0,1,0,0,0,100,0,2000,4000,5000,6000,11,64698,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Molten Colossus - Cast Pyroblast');
-- Magma Rager
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33557296,`AIName`='SmartAI' WHERE `entry`=34086;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33557296 WHERE `entry`=34201;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34086;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34086;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34086,0,0,0,0,0,100,0,2000,4000,6000,8000,11,64773,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Magma Rager - Cast Fire Blast'),
(34086,0,1,0,0,0,100,0,6000,16000,12000,20000,11,64746,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Magma Rager - Cast Superheated Winds');
-- Superheated Winds
UPDATE `creature_template` SET `unit_flags`=33718790,`modelid1`=11686,`modelid2`=0,`AIName`='' WHERE `entry`=34194;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34194;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34194;
DELETE FROM `creature_template_addon` WHERE `entry`=34194;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(34194,'64724');
-- Forge Construct
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34085;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34186;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34085;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34085;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34085,0,0,0,0,0,100,0,8000,12000,10000,15000,11,64719,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Forge Construct - Cast Charge'),
(34085,0,1,0,0,0,100,2,2000,6000,6000,9000,11,64720,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forge Construct - Cast Flame Emission 10'),
(34085,0,2,0,0,0,100,4,2000,6000,6000,9000,11,64721,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forge Construct - Cast Flame Emission 25');
-- --------
-- XT-002 |
-- --------
-- XB-488 Disposalbot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34273;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34274;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34273;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34273;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34273,0,0,0,2,0,100,0,30,40,0,0,11,65084,1,0,0,0,0,1,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Self Destruct'),
(34273,0,1,0,0,0,100,2,2000,6000,6000,10000,11,65080,0,0,0,0,0,2,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Cut Scrap Metal 10'),
(34273,0,2,0,0,0,100,4,2000,6000,6000,10000,11,65104,0,0,0,0,0,2,0,0,0,0,0,0,0, 'XB-488 Disposalbot - Cast Cut Scrap Metal 25');
-- Parts Recovery Technician
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554432,`AIName`='SmartAI' WHERE `entry`=34267;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554432 WHERE `entry`=34268;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34267;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34267;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34267,0,0,0,0,0,100,0,6000,8000,10000,12000,11,65071,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Parts Recovery Technician - Cast Mechano Kick'),
(34267,0,1,0,0,0,100,0,8000,12000,15000,20000,11,65070,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Parts Recovery Technician - Cast Defense Matrix');
-- XD-175 Compactobot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34271;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34272;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34271;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34271;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34271,0,0,0,0,0,100,2,8000,12000,15000,20000,11,65073,0,0,0,0,0,6,0,0,0,0,0,0,0, 'XD-175 Compactobot - Cast Trash Compactor 10'),
(34271,0,1,0,0,0,100,4,8000,12000,15000,20000,11,65106,0,0,0,0,0,6,0,0,0,0,0,0,0, 'XD-175 Compactobot - Cast Trash Compactor 25');
-- XR-949 Salvagebot
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34269;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34270;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34269;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34269;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34269,0,0,0,0,0,100,0,4000,6000,6000,8000,11,65099,0,0,0,0,0,5,0,0,0,0,0,0,0,'XR-949 Salvagebot - Cast Deploy Salvage Saws'),
(34269,0,1,0,6,0,100,0,0,0,0,0,41,0,0,0,0,0,0,9,34288,0,100,0,0,0,0,'XR-949 Salvagebot - on Death - Despawn Salvagebot Sawblade');
-- Salvagebot Sawblade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`unit_flags`=33554560,`AIName`='SmartAI' WHERE `entry`=34288;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`unit_flags`=33554560 WHERE `entry`=34291;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34288;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34288;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34288,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Salvagebot Sawblade - on Summon - attack random Hostile'),
(34288,0,1,0,60,0,100,0,5000,5000,5000,5000,49,0,0,0,0,0,0,5,0,0,0,0,0,0,0,'Salvagebot Sawblade - every 5sec - attack random Hostile');
-- -------------------
-- Antechamber (CoI) |
-- -------------------
-- Lightning Charged Iron Dwarf
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34199;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34237;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34199;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34199;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34199,0,0,0,0,0,100,2,0,0,6000,8000,11,64889,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lightning Charged Iron Dwarf - Cast Lightning Charged 10'),
(34199,0,1,0,0,0,100,4,0,0,6000,8000,11,64975,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Lightning Charged Iron Dwarf - Cast Lightning Charged 25');
-- Hardened Iron Golem
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34190;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=34229;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34190;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34190;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34190,0,0,0,0,0,100,0,4000,8000,10000,15000,11,64877,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Harden Fists'),
(34190,0,1,0,0,0,100,2,5000,7000,15000,20000,11,64874,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Rune Punch 10'),
(34190,0,2,0,0,0,100,4,5000,7000,15000,20000,11,64967,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hardened Iron Golem - Cast Rune Punch 25');
-- Iron Mender
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34198;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34236;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34198;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34198;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34198,0,0,0,0,0,100,2,2000,4000,4000,6000,11,64918,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Iron Mender - Cast Electro Shock 10'),
(34198,0,1,0,0,0,100,4,2000,4000,4000,6000,11,64971,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Iron Mender - Cast Electro Shock 25'),
(34198,0,2,0,0,0,100,2,3000,6000,10000,15000,11,64903,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Lightning 10'),
(34198,0,3,0,0,0,100,4,3000,6000,10000,15000,11,64970,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Lightning 25'),
(34198,0,4,0,0,0,100,2,10000,15000,20000,25000,11,64897,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Metal 10'),
(34198,0,5,0,0,0,100,4,10000,15000,20000,25000,11,64968,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Iron Mender - Cast Fuse Metal 25');
-- Rune Etched Sentry
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34196;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=18 WHERE `entry`=34245;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34196;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34196;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34196,0,0,0,0,0,100,0,2000,2000,10000,10000,11,64852,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Flaming Rune'),
(34196,0,1,0,0,0,100,2,3000,5000,5000,7000,11,64870,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Lava Burst 10'),
(34196,0,2,0,0,0,100,4,3000,5000,5000,7000,11,64991,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Lava Burst 25'),
(34196,0,3,0,0,0,100,2,2500,3000,12000,15000,11,64847,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Runed Flame Jets 10'),
(34196,0,4,0,0,0,100,4,2500,3000,12000,15000,11,64988,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rune Etched Sentry - Cast Runed Flame Jets 25');
-- Chamber Overseer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34197;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=32,`mechanic_immune_mask`=33554496 WHERE `entry`=34226;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34197;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34197;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34197,0,0,0,0,0,100,0,7000,9000,8000,10000,11,64783,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Displacement Device'),
(34197,0,1,0,0,0,100,2,4000,8000,6000,9000,11,64820,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Devastating Leap 10'),
(34197,0,2,0,0,0,100,4,4000,8000,6000,9000,11,64943,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Devastating Leap 25'),
(34197,0,3,0,0,0,100,2,8000,10000,8000,12000,11,64825,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Staggering Roar 10'),
(34197,0,4,0,0,0,100,4,8000,10000,8000,12000,11,64944,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chamber Overseer - Cast Staggering Roar 25');
-- Displacement Device
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=33554560,`speed_walk`=0.2,`speed_run`=0.3,`dmg_multiplier`=1,`unit_flags`=514,`InhabitType`=1,`MovementType`=1,`AIName`='SmartAI' WHERE `entry`=34203;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=33554560,`speed_walk`=0.2,`speed_run`=0.3,`dmg_multiplier`=1,`unit_flags`=514,`InhabitType`=1,`MovementType`=1 WHERE `entry`=34227; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34203;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34203;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34203,0,0,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Displacement Device - on Summon - set react state passive');
DELETE FROM `creature_template_addon` WHERE `entry` IN (34203,34227);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(34203,'64793'),
(34227,'64941');
-- ---------------------
-- Circle of Guardians |
-- ---------------------
-- Storm Tempered Keeper in Progress
-- -------
-- Hodir |
-- -------
-- Champion of Hodir
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34133;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34139;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34133;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34133;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34133,0,0,0,0,0,100,2,3000,6000,8000,10000,11,64639,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Champion of Hodir - Cast Stomp 10'),
(34133,0,1,0,0,0,100,4,3000,6000,8000,10000,11,64652,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Champion of Hodir - Cast Stomp 25');
-- Winter Jormungar
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34137;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34140;
UPDATE `creature_template_addon` SET `auras`='47677' WHERE `entry`=34137;
UPDATE `creature` SET `spawndist`=2 WHERE`id`=34137;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34137;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34137;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34137,0,0,0,0,0,100,0,3000,6000,6000,9000,11,64638,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Jormungar - Cast Acidic Bite');
-- Winter Revenant
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34134;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554496,`dmg_multiplier`=18 WHERE `entry`=34141;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34134;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34134;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34134,0,0,0,0,0,100,2,8000,10000,12000,15000,11,64642,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Revenant - Cast Blizzard 10'),
(34134,0,1,0,0,0,100,4,8000,10000,12000,15000,11,64653,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Revenant - Cast Blizzard 25'),
(34134,0,2,0,0,0,100,0,3000,5000,10000,12000,11,64643,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Winter Revenant - Cast Whirling Strike'),
(34134,0,3,0,0,0,100,1,15000,20000,0,0,11,64644,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Winter Revenant - Cast Shield of the Winter Revenant');
-- Winter Rumbler
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34135;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34142;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34135;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34135;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34135,0,0,0,0,0,100,2,6000,10000,8000,12000,11,64645,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Cone of Cold 10'),
(34135,0,1,0,0,0,100,4,6000,10000,8000,12000,11,64655,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Cone of Cold 25'),
(34135,0,2,0,0,0,100,2,3000,6000,6000,10000,11,64647,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Snow Blindness 10'),
(34135,0,3,0,0,0,100,4,3000,6000,6000,10000,11,64654,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Winter Rumbler - Cast Snow Blindness 25');
-- ------
-- Freya|
-- ------
-- Guardian Lasher
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=33430;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=33732;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33430;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33430;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33430,0,0,0,4,0,100,0,0,0,0,0,75,63007,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Guardian Lasher - on Aggro - add Aura Guardian Pheromones'),
(33430,0,1,0,0,0,100,2,3000,6000,8000,12000,11,63047,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian Lasher - Cast Guardian''s Lash 10'),
(33430,0,2,0,0,0,100,4,3000,6000,8000,12000,11,63550,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian Lasher - Cast Guardian''s Lash 25');
-- Forest Swarmer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33431;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33731;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33431;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33431;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33431,0,0,0,0,0,100,0,3000,4000,6000,8000,11,63059,0,0,0,0,0,9,33430,0,25,0,0,0,0, 'Forest Swarmer - Cast Pollinate on Guardian Lasher');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63059;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,63059,0,18,1,33430,0,0,'','Spell: Polite only target Guardian Lasher (10)'),
(13,0,63059,1,18,1,33732,0,0,'','Spell: Polite only target Guardian Lasher (25)');
-- Guardian of Life
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33528;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33733;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33528;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33528;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33528,0,0,0,0,0,100,2,6000,9000,15000,20000,11,63226,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian of Life - Cast Poison Breath 10'),
(33528,0,1,0,0,0,100,4,6000,9000,15000,20000,11,63551,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Guardian of Life - Cast Poison Breath 25');
-- Nature's Blade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33527;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33741;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33527;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33527;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33527,0,0,0,0,0,100,2,8000,10000,15000,25000,11,63247,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Nature''s Blade - Cast Living Tsunami 10'),
(33527,0,1,0,0,0,100,4,8000,10000,15000,25000,11,63568,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Nature''s Blade - Cast Living Tsunami 25');
-- Ironroot Lasher
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33526;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33734;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33526;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33526;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33526,0,0,0,16,0,100,2,63240,20,10000,20000,11,63240,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Ironroot Lasher - on missing Buff - Cast Ironroot Thorns 10'),
(33526,0,1,0,16,0,100,4,63553,20,10000,20000,11,63553,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Ironroot Lasher - on missing Buff - Cast Ironroot Thorns 25');
-- Mangrove Ent
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33525;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=33735;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33525;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33525;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33525,0,0,0,0,0,100,0,10000,10000,15000,15000,11,63272,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Hurricane'),
(33525,0,1,0,0,0,100,2,12500,12500,15000,15000,11,63242,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Mangrove Ent - Cast Nourish 10'),
(33525,0,2,0,0,0,100,4,12500,12500,15000,15000,11,63556,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Mangrove Ent - Cast Nourish 25'),
(33525,0,3,0,0,0,100,2,15000,15000,16000,16000,11,63241,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Tranquility 10'),
(33525,0,4,0,0,0,100,4,15000,15000,16000,16000,11,63554,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Mangrove Ent - Cast Tranquility 25');
-- Misguided Nymph
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33355;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`AIName`='' WHERE `entry`=33737;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33355;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33355;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33355,0,0,0,0,0,100,2,8000,12000,20000,25000,11,63082,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Bind Life 10'),
(33355,0,1,0,0,0,100,4,8000,12000,20000,25000,11,63559,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Bind Life 25'),
(33355,0,2,0,0,0,100,2,4000,6000,10000,12000,11,63111,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Frost Spear 10'),
(33355,0,3,0,0,0,100,4,4000,6000,10000,12000,11,63562,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Frost Spear 25'),
(33355,0,4,0,0,0,100,2,15000,20000,15000,20000,11,63136,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Winter''s Embrace 10'),
(33355,0,5,0,0,0,100,4,15000,20000,15000,20000,11,63564,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Misguided Nymph - Cast Winter''s Embrace 25');
-- Corrupted Servitor
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=33354;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496  WHERE `entry`=33729;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33354;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33354;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33354,0,0,0,0,0,100,2,2000,4000,8000,12000,11,63169,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Petrify Joints 10'),
(33354,0,1,0,0,0,100,4,2000,4000,8000,12000,11,63549,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Petrify Joints 25'),
(33354,0,2,0,0,0,100,0,6000,8000,12000,16000,11,63149,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Corrupted Servitor - Cast Violent Earth');
-- --------
-- Thorim |
-- --------
-- Dark Rune Ravager & Thunderer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 35 WHERE `entry`=33755;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 55 WHERE `entry`=33758;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 20 WHERE `entry`=33754;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`= 30 WHERE `entry`=33757;
UPDATE `creature_template` SET `dmgschool`=3 WHERE `entry` IN (33754,33757); -- Nature Damage
-- some equipment updates
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 32908;
-- --------
-- Mimiron|
-- --------
-- Arachnopod Destroyer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34183;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18,`mechanic_immune_mask`=33554496 WHERE `entry`=34214;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34183;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34183;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34183,0,0,0,0,0,100,0,2000,4000,6000,9000,11,64717,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Arachnopod Destroyer - Cast Flame Spray'),
(34183,0,1,0,0,0,100,0,6000,8000,8000,10000,11,64776,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Arachnopod Destroyer - Cast Machine Gun');
/*-- Clockwork Mechanic - mount in Vehicle Arachnopod Destroyer 
UPDATE `creature_template` SET `dmg_multiplier`=20,`mingold`=1720000,`maxgold`=1760000 WHERE `entry`=34184;
*/
-- Trash
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10 WHERE `entry`=34191;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34217;
-- Boomer XP-500
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=34192;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`dmg_multiplier`=18 WHERE `entry`=34216;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34192;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34192;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34192,0,0,0,9,0,100,0,0,3,0,0,11,55714,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Boomer XP-500 - Explode');
-- Clockwork Sapper
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`dmg_multiplier`=10,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554496,`AIName`='SmartAI' WHERE `entry`=34193;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`dmg_multiplier`=18,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554496 WHERE `entry`=34220;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=34193;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34193;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34193,0,0,0,0,0,100,0,2000,6000,6000,8000,11,64740,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Clockwork Sapper - Cast Energy Sap');
-- ------
-- Vezak|
-- ------
-- Twilight Adherent
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`unit_class`=2,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33818;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`unit_class`=2,`dmg_multiplier`=18 WHERE `entry`=33827;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33818;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33818;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33818,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Arcane Burst'),
(33818,0,1,0,0,0,100,0,3000,5000,6000,8000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Blink'),
(33818,0,2,0,0,0,100,0,12000,15000,15000,20000,11,63760,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Twilight Adherent - Cast Greater Heal'),
(33818,0,3,0,0,0,100,0,6000,8000,12000,16000,11,13704,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Adherent - Cast Psychic Scream'),
(33818,0,4,0,0,0,100,0,8000,10000,12000,15000,11,37978,0,0,0,0,0,9,0,0,20,0,0,0,0, 'Twilight Adherent - Cast Renew');
-- Twilight Guardian
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1852,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33822;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1852,`dmg_multiplier`=18 WHERE `entry`=33828;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33822;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33822;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33822,0,0,0,0,0,100,0,6000,10000,8000,10000,11,52719,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Concussion Blow'),
(33822,0,1,0,0,0,100,0,2000,3000,3000,6000,11,62317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Devastate'),
(33822,0,2,0,0,0,100,0,8000,10000,10000,12000,11,63757,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - Cast Thunderclap');
-- Twilight Shadowblade
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1862,`dmg_multiplier`=10,`baseattacktime`=1000,`AIName`='SmartAI' WHERE `entry`=33824;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1862,`dmg_multiplier`=18,`baseattacktime`=1000 WHERE `entry`=33831;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33824;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33824;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33824,0,0,0,0,0,100,0,6000,8000,10000,12000,11,63753,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Twilight Shadowblade - Cast Fan of Knives')/*,
(33824,0,1,0,0,0,100,0,6000,8000,10000,12000,11,63754,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Shadowblade - Cast Backstab') -- needs to jump behind target*/;
-- Twilight Slayer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1847,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33823;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`equipment_id`=1847,`dmg_multiplier`=18 WHERE `entry`=33832;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33823;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33823;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33823,0,0,0,0,0,100,0,3000,5000,7000,9000,11,35054,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Slayer - Cast Mortal Strike'),
(33823,0,1,0,0,0,100,0,12000,15000,15000,20000,11,63784,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Twilight Slayer - Cast Bladestorm');
-- Faceless Horror
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=18,`AIName`='SmartAI' WHERE `entry`=33772;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=32 WHERE `entry`=33773;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33772;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33772;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33772,0,0,0,0,0,100,0,6000,8000,6000,8000,11,64429,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Faceless Horror - Cast Death Grip'),
(33772,0,1,0,0,0,100,0,2000,4000,8000,10000,11,63722,2,0,0,0,0,5,0,0,0,0,0,0,0, 'Faceless Horror - Cast Shadow Crash'),
(33772,0,2,0,4,0,100,0,0,0,0,0,75,63703,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Faceless Horror - on Aggro - add Aura: Void Wave'),
(33772,0,3,0,2,0,100,0,0,75,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 75% HP - set Phase 1'),
(33772,0,4,5,0,1,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 1 - Summon Void Beast'),
(33772,0,5,0,61,1,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 1 - add Aura: Void Barrier'),
(33772,0,6,0,2,0,100,0,0,50,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 50% HP - set Phase 2'),
(33772,0,7,8,0,2,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 2 - Summon Void Beast'),
(33772,0,8,0,61,2,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 2 - add Aura: Void Barrier'),
(33772,0,9,0,2,0,100,0,0,25,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on 25% HP - set Phase 3'),
(33772,0,10,11,0,4,100,1,0,0,0,0,12,33806,6,0,0,1,0,2,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 3 - Summon Void Beast'),
(33772,0,11,0,61,4,100,0,0,0,0,0,75,63710,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Guardian - on Phase 3 - add Aura: Void Barrier');
-- Void Beast
UPDATE `creature_template` SET `difficulty_entry_1`=33815,`faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=18,`AIName`='SmartAI' WHERE `entry`=33806;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`dmg_multiplier`=32 WHERE `entry`=33815;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33806;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33806;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33806,0,0,1,6,0,100,0,0,0,0,0,11,63723,2,0,0,0,0,0,0,0,0,0,0,0,0, 'Void Beast - on Death - Cast Shadow Nova'),
(33806,0,1,0,61,0,100,0,0,0,0,0,28,63710,0,0,0,0,0,19,33772,0,0,0,0,0,0, 'Void Beast - on Death - remove Aura: Void Barrier from closest Faceless Horror');
-- Twilight Frost Mage
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1849,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=10,`AIName`='SmartAI' WHERE `entry`=33819;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1849,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=18 WHERE `entry`=33829;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33819;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33819;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33819,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Arcane Burst'),
(33819,0,1,0,0,0,100,0,1000,2000,6000,8000,11,63913,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frostbolt'),
(33819,0,2,0,0,0,100,0,2000,4000,10000,16000,11,63758,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frost Bolt Volley'),
(33819,0,3,0,0,0,100,0,8000,10000,12000,16000,11,63912,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Frost Nova'),
(33819,0,4,0,0,0,100,0,7000,9000,9000,11000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Frost Mage - Cast Blink');
-- Twilight Pyromancer
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=10,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`AIName`='SmartAI' WHERE `entry`=33820;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`equipment_id`=1848,`mechanic_immune_mask`=33554513,`unit_class`=2,`dmg_multiplier`=18,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=33830;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33820;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33820;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33820,0,0,0,0,0,100,0,12000,15000,25000,30000,11,64663,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Arcane Burst'),
(33820,0,1,0,0,0,100,0,1000,2000,6000,8000,11,63789,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Fireball'),
(33820,0,2,0,0,0,100,0,2000,4000,10000,16000,11,63775,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Flamestrike'),
(33820,0,3,0,0,0,100,0,7000,9000,9000,11000,11,64662,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Blink'),
(33820,0,4,0,11,0,100,0,0,0,0,0,11,63774,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Twilight Pyromancer - Cast Summon Fire Elemental');
-- Enslaved Fire Elemental
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`difficulty_entry_1`=33839,`faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`dmg_multiplier`=10,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`AIName`='SmartAI' WHERE `entry`=33838;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`faction_A`=16,`faction_H`=16,`mechanic_immune_mask`=33554513,`dmg_multiplier`=18,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=33839;
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id`=33838;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33838;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33838;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33838,0,0,0,54,0,100,0,0,0,0,0,11,63778,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Enslaved Fire Elemental - on Summon - Cast Fire Shield'),
(33838,0,1,0,0,0,100,0,4000,8000,12000,14000,11,38064,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Enslaved Fire Elemental - Cast Blast Wave');

--  mas fix
UPDATE `creature` SET `spawntimesecs`=7200 WHERE `id`=33236;

UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN (33365,33370,33212,33367);
UPDATE `creature_template` SET `ScriptName`='npc_thorims_hammer' WHERE `entry`=33364;
UPDATE `creature_template` SET `ScriptName`='npc_mimirons_inferno' WHERE `entry`=33369;
UPDATE `creature_template` SET `ScriptName`='npc_hodirs_fury' WHERE `entry`=33108;
UPDATE `creature_template` SET `ScriptName`='npc_freyas_ward' WHERE `entry`=33366;

UPDATE `creature_template` SET `difficulty_entry_1`=34277, `AIName`='', `ScriptName`='npc_freyas_ward_summon' WHERE `entry`=33387;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry`=34277;

UPDATE `creature_template` SET `difficulty_entry_1`=34276, `AIName`='', `ScriptName`='npc_freyas_ward_summon' WHERE `entry`=34275;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry`=34276;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (33387,34275);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62911,62909,62533,62906);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,0,62533,0,18,1,33108,0,0,'','Hodir\'s Fury'),
(13,0,62906,0,18,1,33366,0,0,'','Freya\'s Ward'),
(13,0,62909,0,18,1,33369,0,0,'','Mimiron\'s Inferno'),
(13,0,62911,0,18,1,33364,0,0,'','Thorim\'s Hammer');

DELETE FROM `spell_script_names` WHERE `spell_id`=62907;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62907, 'spell_freyas_ward_summon');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62775,62680,63472);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(62775, 'spell_xt002_tympanic_tantrum'),
(62680, 'spell_ignis_flame_jets'),
(63472, 'spell_ignis_flame_jets');
DELETE FROM `spell_dbc` WHERE `id`=65037;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`EffectImplicitTargetA1`,`comment`) VALUES 
(65037,3,1,'Nerf the Scrapbots Achievement Criteria Marker');

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10401,10402) AND `type`=18;

DELETE FROM `conditions` WHERE `SourceEntry`=62834 AND `SourceTypeOrReferenceId`=13 AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,62834,18,1,0,'Boombot Boom - Player target'),
(13,62834,18,1,33343,'Boombot Boom - Scrapbot target'),
(13,62834,18,1,33344,'Boombot Boom - Pummeler target'),
(13,62834,18,1,33346,'Boombot Boom - Boombot target'),
(13,62834,18,1,33329,'Boombot Boom - Heart of the Deconstructor target'),
(13,62834,18,1,33293,'Boombot Boom - XT-002 target');

-- Delete disabled achievements
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN(10074,10075,10220,10221,10077,10079);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10074,10075,10220,10221,10077,10079);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`ScriptName`) VALUES
-- Nerf Engineering 10m
(10074,11,0,'achievement_nerf_engineering'),
(10074,12,0,''),
-- Nerf Engineering 25m
(10075,11,0,'achievement_nerf_engineering'),
(10075,12,1,''),
-- Heartbreaker 10m
(10221,11,0,'achievement_heartbreaker'),
(10221,12,0,''),
-- Heartbreaker 25m
(10220,11,0,'achievement_heartbreaker'),
(10220,12,1,''),
-- Nerf Gravity Bombs 10m
(10077,11,0,'achievement_nerf_gravity_bombs'),
(10077,12,0,''),
-- Nerf Gravity Bombs 25m
(10079,11,0,'achievement_nerf_gravity_bombs'),
(10079,12,1,'');

UPDATE `spell_script_names` SET `ScriptName`='spell_xt002_gravity_bomb' WHERE `ScriptName`='spell_xt002_gravity_bomb_targeting';
UPDATE `spell_script_names` SET `ScriptName`='spell_xt002_searing_light' WHERE `ScriptName`='spell_xt002_searing_light_targeting';

DELETE FROM `spell_script_names` WHERE `spell_id` IN (64233,63025);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64233,'spell_xt002_gravity_bomb_damage'),
(63025,'spell_xt002_gravity_bomb_damage');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63018,'spell_xt002_searing_light'),
(65121,'spell_xt002_searing_light'),
(64234,'spell_xt002_gravity_bomb'),
(63024,'spell_xt002_gravity_bomb');

DELETE FROM script_waypoint WHERE entry = 33370;

UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry`=33571;
UPDATE `creature_template` SET `ScriptName`='npc_pool_of_tar' WHERE `entry`=33090;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (65044,65045);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,65044,18,1,33090),
(13,65045,18,1,33090),
(13,65044,18,1,33060),
(13,65045,18,1,33060),
(13,65044,18,1,33062),
(13,65045,18,1,33062),
(13,65044,18,1,33109),
(13,65045,18,1,33109);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (65044,65045);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65044, 'spell_flame_leviathan_flames'),
(65045, 'spell_flame_leviathan_flames');

UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=33214;
UPDATE `creature` SET `modelid`=28830, `curhealth`=6000, `spawntimesecs`=150 WHERE `id`=33214;

SET @GUID := 302618;

DELETE FROM `creature` WHERE `id`=33214 AND `spawnMask`=2;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+64;
INSERT INTO `creature` VALUES

(@GUID,33214,603,3,1,28830,0,278.447,-37.0855,493.119,4.88278,150,50,0,6000,0,1,0,0,0),
(@GUID+1,33214,603,3,1,28830,0,278.935,48.7189,480.907,1.02569,150,50,0,6000,0,1,0,0,0),
(@GUID+2,33214,603,3,1,28830,0,254.262,8.02975,492.596,1.02569,150,50,0,6000,0,1,0,0,0),
(@GUID+3,33214,603,3,1,28830,0,247.109,-3.76575,481.68,1.02569,150,50,0,6000,0,1,0,0,0),
(@GUID+4,33214,603,3,1,28830,0,242.736,-11.7488,483.917,1.51107,150,50,0,6000,0,1,0,0,0),
(@GUID+5,33214,603,3,1,28830,0,241.389,-34.2777,489.461,1.51107,150,50,0,6000,0,1,0,0,0),
(@GUID+6,33214,603,3,1,28830,0,240.89,-54.6403,494.47,1.87628,150,50,0,6000,0,1,0,0,0),
(@GUID+7,33214,603,3,1,28830,0,247.584,-99.4169,505.59,1.7192,150,50,0,6000,0,1,0,0,0),
(@GUID+8,33214,603,3,1,28830,0,247.584,-99.4169,505.59,1.7192,150,50,0,6000,0,1,0,0,0),
(@GUID+9,33214,603,3,1,28830,0,301.55,-57.969,483.79,1.78596,150,50,0,6000,0,1,0,0,0),
(@GUID+10,33214,603,3,1,28830,0,306.495,-80.5966,483.264,1.4718,150,50,0,6000,0,1,0,0,0),
(@GUID+11,33214,603,3,1,28830,0,304.458,-101.109,475.529,1.4718,150,50,0,6000,0,1,0,0,0),
(@GUID+12,33214,603,3,1,28830,0,270.451,-104.592,499.689,0.102063,150,50,0,6000,0,1,0,0,0),
(@GUID+13,33214,603,3,1,28830,0,251.8,-105.335,478.027,5.88809,150,50,0,6000,0,1,0,0,0),
(@GUID+14,33214,603,3,1,28830,0,224.617,-81.7132,503.64,5.4844,150,50,0,6000,0,1,0,0,0),
(@GUID+15,33214,603,3,1,28830,0,213.795,-54.9709,504.995,4.03141,150,50,0,6000,0,1,0,0,0),
(@GUID+16,33214,603,3,1,28830,0,215.664,-26.3504,501.716,4.64716,150,50,0,6000,0,1,0,0,0),
(@GUID+17,33214,603,3,1,28830,0,225.759,5.35536,485.904,4.29373,150,50,0,6000,0,1,0,0,0),
(@GUID+18,33214,603,3,1,28830,0,249.131,41.0152,496.479,3.08343,150,50,0,6000,0,1,0,0,0),
(@GUID+19,33214,603,3,1,28830,0,275.488,37.3128,515.305,1.36812,150,50,0,6000,0,1,0,0,0),
(@GUID+20,33214,603,3,1,28830,0,267.019,7.84005,520.192,0.844262,150,50,0,6000,0,1,0,0,0),
(@GUID+21,33214,603,3,1,28830,0,249.233,-12.4071,490.774,1.71291,150,50,0,6000,0,1,0,0,0),
(@GUID+22,33214,603,3,1,28830,0,263.001,-52.8104,502.854,2.99547,150,50,0,6000,0,1,0,0,0),
(@GUID+23,33214,603,3,1,28830,0,281.722,-52.1936,493.548,4.59847,150,50,0,6000,0,1,0,0,0),
(@GUID+24,33214,603,3,1,28830,0,293.089,-7.94317,526.191,4.24739,150,50,0,6000,0,1,0,0,0),
(@GUID+25,33214,603,3,1,28830,0,297.864,8.30275,512.314,4.09188,150,50,0,6000,0,1,0,0,0),
(@GUID+26,33214,603,3,1,28830,0,216.331,-13.3252,518.529,1.72783,150,50,0,6000,0,1,0,0,0),
(@GUID+27,33214,603,3,1,28830,0,216.235,-58.6133,499.739,1.24324,150,50,0,6000,0,1,0,0,0),
(@GUID+28,33214,603,3,1,28830,0,208.362,-81.7844,497.082,1.03275,150,50,0,6000,0,1,0,0,0),
(@GUID+29,33214,603,3,1,28830,0,208.04,-82.3793,504.421,4.30629,150,50,0,6000,0,1,0,0,0),
(@GUID+30,33214,603,3,1,28830,0,219.582,-55.5374,518.925,4.30629,150,50,0,6000,0,1,0,0,0),
(@GUID+31,33214,603,3,1,28830,0,251.518,-11.8081,489.351,3.967,150,50,0,6000,0,1,0,0,0),
(@GUID+32,33214,603,3,1,28830,0,284.764,24.211,484.056,3.967,150,50,0,6000,0,1,0,0,0),
(@GUID+33,33214,603,3,1,28830,0,297.267,37.7566,493.207,3.43293,150,50,0,6000,0,1,0,0,0),
(@GUID+34,33214,603,3,1,28830,0,327.535,46.8332,489.191,1.64851,150,50,0,6000,0,1,0,0,0),
(@GUID+35,33214,603,3,1,28830,0,329.676,19.342,483.714,1.33435,150,50,0,6000,0,1,0,0,0),
(@GUID+36,33214,603,3,1,28830,0,321.882,-13.0024,487.786,1.33435,150,50,0,6000,0,1,0,0,0),
(@GUID+37,33214,603,3,1,28830,0,314.911,-41.9326,470.413,1.33435,150,50,0,6000,0,1,0,0,0),
(@GUID+38,33214,603,3,1,28830,0,309.555,-68.1847,483.734,1.79302,150,50,0,6000,0,1,0,0,0),
(@GUID+39,33214,603,3,1,28830,0,315.657,-95.1902,480.442,5.51266,150,50,0,6000,0,1,0,0,0),
(@GUID+40,33214,603,3,1,28830,0,278.184,-92.9812,502.851,5.22992,150,50,0,6000,0,1,0,0,0),
(@GUID+41,33214,603,3,1,28830,0,267.19,-57.6797,506.398,5.0053,150,50,0,6000,0,1,0,0,0),
(@GUID+42,33214,603,3,1,28830,0,261.269,-25.9536,505.211,4.70606,150,50,0,6000,0,1,0,0,0),
(@GUID+43,33214,603,3,1,28830,0,256.682,2.12704,507.823,5.01708,150,50,0,6000,0,1,0,0,0),
(@GUID+44,33214,603,3,1,28830,0,242.466,31.8077,493.654,6.13941,150,50,0,6000,0,1,0,0,0),
(@GUID+45,33214,603,3,1,28830,0,212.067,36.2086,491.848,1.2668,150,50,0,6000,0,1,0,0,0),
(@GUID+46,33214,603,3,1,28830,0,203.205,7.95895,494.388,1.2668,150,50,0,6000,0,1,0,0,0),
(@GUID+47,33214,603,3,1,28830,0,195.024,-18.1174,471.059,1.2668,150,50,0,6000,0,1,0,0,0),
(@GUID+48,33214,603,3,1,28830,0,182.525,-57.9608,491.788,1.2668,150,50,0,6000,0,1,0,0,0),
(@GUID+49,33214,603,3,1,28830,0,182.525,-57.9608,470.788,1.52756,150,50,0,6000,0,1,0,0,0),
(@GUID+50,33214,603,3,1,28830,0,181.154,-89.6438,471.985,1.52756,150,50,0,6000,0,1,0,0,0),
(@GUID+51,33214,603,3,1,28830,0,189.521,-115.227,485.493,4.3385,150,50,0,6000,0,1,0,0,0),
(@GUID+52,33214,603,3,1,28830,0,204.773,-76.3535,506.222,4.3385,150,50,0,6000,0,1,0,0,0),
(@GUID+53,33214,603,3,1,28830,0,217.066,-45.0197,500.71,4.3385,150,50,0,6000,0,1,0,0,0),
(@GUID+54,33214,603,3,1,28830,0,233.844,-2.25781,511.069,4.3385,150,50,0,6000,0,1,0,0,0),
(@GUID+55,33214,603,3,1,28830,0,238.768,10.2939,499.838,5.27155,150,50,0,6000,0,1,0,0,0),
(@GUID+56,33214,603,3,1,28830,0,226.158,28.0768,493.037,2.10954,150,50,0,6000,0,1,0,0,0),
(@GUID+57,33214,603,3,1,28830,0,241.149,2.99724,507.541,2.10954,150,50,0,6000,0,1,0,0,0),
(@GUID+58,33214,603,3,1,28830,0,250.151,-32.0961,504.084,1.53148,150,50,0,6000,0,1,0,0,0),
(@GUID+59,33214,603,3,1,28830,0,250.151,-32.0961,490.084,1.53148,150,50,0,6000,0,1,0,0,0),
(@GUID+60,33214,603,3,1,28830,0,255.478,-64.6037,502.022,1.96267,150,50,0,6000,0,1,0,0,0),
(@GUID+61,33214,603,3,1,28830,0,264.752,-78.7968,500.556,3.62614,150,50,0,6000,0,1,0,0,0),
(@GUID+62,33214,603,3,1,28830,0,283.89,-68.7223,496.885,4.88278,150,50,0,6000,0,1,0,0,0),
(@GUID+63,33214,603,3,1,28830,0,270.921,6.65616,500.337,4.88278,150,50,0,6000,0,1,0,0,0),
(@GUID+64,33214,603,3,1,28830,0,266.205,34.0651,492.053,4.67229,150,50,0,6000,0,1,0,0,0);

-- -------------------
-- ----ULDUAR LOOTS---
-- -------------------


-- -------------------------------
-- ----------Thorim loot 25m------
-- --------------------------------
-- TODO: Fix the loot on remaining caches
DELETE FROM reference_loot_template WHERE `entry` =  26956; -- Hardmode + normal itens used for reference
INSERT INTO reference_loot_template VALUES
(26956, 45463, 0, 1, 1, 1, 1),
(26956, 45466, 0, 1, 1, 1, 1),
(26956, 45467, 0, 1, 1, 1, 1),
(26956, 45468, 0, 1, 1, 1, 1),
(26956, 45469, 0, 1, 1, 1, 1),
(26956, 45470, 0, 1, 2, 1, 1),
(26956, 45471, 0, 1, 2, 1, 1),
(26956, 45472, 0, 1, 2, 1, 1),
(26956, 45473, 0, 1, 2, 1, 1),
(26956, 45474, 0, 1, 2, 1, 1),
(26956, 45570, 0, 1, 2, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 26955; -- Chest 25 man normal mode
INSERT INTO `gameobject_loot_template` VALUES 
(26955, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(26955, 45038, 18, 1, 0, 1, 1), -- Fragment of Val'anyr
(26955, 45087, 75, 1, 0, 1, 1), -- Runed Orb
(26955, 1, 100, 1, 1, -26956, 3), -- 3 Normal itens
(26955, 45638, 0, 1, 3, 1, 1), -- T8
(26955, 45639, 0, 1, 3, 1, 1), -- T8
(26955, 45640, 0, 1, 3, 1, 1), -- T8
(26955, 47241, 100, 1, 0, 1, 1); -- Emblem of triumph x1
UPDATE `gameobject_template` SET `data1` = 26955 WHERE `entry` = 194314;
-- Hard Mode
DELETE FROM `gameobject_loot_template` WHERE `entry` = 40000; -- Chest 25 man Hard mode
INSERT INTO `gameobject_loot_template` VALUES 
(40000, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(40000, 45038, 100, 1, 0, 1, 1), -- Fragment of Val'anyr (100% drop chance on hardmode to incentivate people to run ulduar :D)
(40000, 45087, 75, 1, 0, 1, 1), -- Runed orb
(40000, 45638, 0, 1, 3, 1, 1), -- T8
(40000, 45639, 0, 1, 3, 1, 1), -- T8
(40000, 45640, 0, 1, 3, 1, 1), -- T8
(40000, 1, 100, 1, 1, -26956, 3), -- 3 Normal itens
(40000, 2, 100, 1, 2, -26956, 3), -- 3 Hard Mode itens
(40000, 45817, -100, 1, 0, 1, 1), -- Sigil Thorim
(40000, 47241, 100, 1, 0, 1, 1); -- Emblem of Triumph x1
UPDATE `gameobject_template` SET `data1` = 40000 WHERE `entry` = 194315;

-- -------------------------------
-- ------------HODIR--------------
-- -------------------------------
-- Hodir rare chest Spawn
DELETE FROM `gameobject` WHERE `id`=194200;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL, 194200, 603, 3, 1, 2029.19, -192.403, 432.687, 4.44005, 0, 0, 0.79655, -0.604572, -604800, 255, 1);
DELETE FROM `gameobject` WHERE `id`=194201;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL, 194201, 603, 3, 1, 2029.19, -192.403, 432.687, 4.44005, 0, 0, 0.79655, -0.604572, -604800, 255, 1);


-- -------------------------------
-- -------------FREYA-------------
-- -------------------------------
-- Add Missing GO's templates for chests
-- Cache with 2 elders alive in 10 man mode
DELETE FROM gameobject_template WHERE `entry` = 194326;
INSERT INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`, `data11`, `data13`, `data15`, `WDBVerified`) VALUES
(194326, 3, 8628, 'Freya\'s Gift', 2, 1634, 27079, 1, 0, 1, 1, 1, 11159);
-- Cache with 1 elder alive in 25 man mode
DELETE FROM gameobject_template WHERE `entry` = 194329;
INSERT INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`, `data11`, `data13`, `data15`, `WDBVerified`) VALUES
(194329, 3, 8628, 'Freya\'s Gift', 2, 1634, 26962, 1, 0, 1, 1, 1, 11159);
-- Cache with 2 elders alive in 25 man mode
DELETE FROM gameobject_template WHERE `entry` = 194330;
INSERT INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data3`, `data6`, `data11`, `data13`, `data15`, `WDBVerified`) VALUES
(194330, 3, 8628, 'Freya\'s Gift', 2, 1634, 26962, 1, 0, 1, 1, 1, 11159);

-- Loot Fix 10 man
-- Reference loot for 10 man caches
UPDATE reference_loot_template SET `lootmode` = 1 WHERE `entry` = 34125;
-- Delete faulty loot from freya 10 man 0 elder cache
DELETE FROM gameobject_loot_template WHERE `entry` = 27078 AND `item` IN (2, 3, 4, 5, 6);
UPDATE gameobject_loot_template SET `groupid` = 1, `maxcount` = 3 WHERE `entry` = 27078 AND `item` = 1;

-- Loot cache with 1 elder alive 10 man (entry 194325)
DELETE FROM gameobject_loot_template WHERE `entry` = 27079;
INSERT INTO gameobject_loot_template VALUES
(27079, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(27079, 1, 100, 1, 1, -34125, 3), -- 3 random Normal items
(27079, 2, 100, 1, 2, -34125, 1), -- 1 random hard mode item
(27079, 45087, 100, 1, 0, 1, 1), -- Runed orb
(27079, 45644, 0, 1, 1, 1, 1), -- T8
(27079, 45645, 0, 1, 1, 1, 1), -- T8
(27079, 45646, 0, 1, 1, 1, 1), -- T8
(27079, 45788, -100, 2, 0, 1, 1), -- Sigil Freya
(27079, 46110, 100, 1, 0, 1, 1), -- Alchemist's cache
(27079, 47241, 100, 1, 0, 2, 2); -- Emblem of Triumph x2

-- Loot cache with 2 elders alive 10 man (entry 194326)
DELETE FROM gameobject_loot_template WHERE `entry` = 27080;
INSERT INTO gameobject_loot_template VALUES
(27080, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(27080, 1, 100, 1, 1, -34125, 3), -- 3 random Normal items
(27080, 2, 100, 1, 2, -34125, 2), -- 2 random hard mode items
(27080, 45087, 100, 1, 0, 1, 1), -- Runed orb
(27080, 45644, 0, 1, 1, 1, 1), -- T8
(27080, 45645, 0, 1, 1, 1, 1), -- T8
(27080, 45646, 0, 1, 1, 1, 1), -- T8
(27080, 45788, -100, 2, 0, 1, 1), -- Sigil Freya
(27080, 46110, 100, 1, 0, 1, 1), -- Alchemist's cache
(27080, 47241, 100, 1, 0, 3, 3); -- Emblem of Triumph x3
UPDATE gameobject_template SET `data1` = 27080 WHERE `entry` = 194326; -- Set loot on cache

-- Loot cache with 3 elders alive 10 man (entry 194327)
DELETE FROM gameobject_loot_template WHERE `entry` = 27081; -- Lolwut? 25m loot on a 10m loot cache?
INSERT INTO gameobject_loot_template VALUES
(27081, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(27081, 1, 100, 1, 1, -34125, 3), -- 3 random Normal items
(27081, 2, 100, 1, 2, -34125, 3), -- 3 random hard mode items
(27081, 45038, 100, 1, 0, 1, 1), -- Fragment of Val'anyr (100% drop chance on hardmode to incentivate people to run ulduar :D)
(27081, 45087, 100, 1, 0, 1, 1), -- Runed orb
(27081, 45644, 0, 1, 1, 1, 1), -- T8
(27081, 45645, 0, 1, 1, 1, 1), -- T8
(27081, 45646, 0, 1, 1, 1, 1), -- T8
(27081, 45788, -100, 2, 0, 1, 1), -- Sigil Freya
(27081, 46110, 100, 1, 0, 1, 1), -- Alchemist's cache
(27081, 47241, 100, 1, 0, 4, 4); -- Emblem of Triumph x4
UPDATE gameobject_template SET `data1` = 27081 WHERE `entry` = 194327; 

-- Reference loot for 25 man caches
DELETE FROM reference_loot_template WHERE entry = 26962;
INSERT INTO reference_loot_template VALUES
(26962, 45484, 0, 1, 2, 1, 1),
(26962, 45485, 0, 1, 2, 1, 1),
(26962, 45486, 0, 1, 2, 1, 1),
(26962, 45613, 0, 1, 2, 1, 1),
(26962, 45487, 0, 1, 2, 1, 1),
(26962, 45488, 0, 1, 2, 1, 1),
(26962, 45482, 0, 1, 1, 1, 1),
(26962, 45483, 0, 1, 1, 1, 1),
(26962, 45481, 0, 1, 1, 1, 1),
(26962, 45480, 0, 1, 1, 1, 1),
(26962, 45479, 0, 1, 1, 1, 1);

-- Loot cache with 0 elders alive 25 man (entry 194328)
DELETE FROM `gameobject_loot_template` WHERE `entry` = 26959;
INSERT INTO `gameobject_loot_template` VALUES
(26959, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(26959, 45038, 18, 1, 0, 1, 1), -- Fragment of Val'anyr
(26959, 45087, 75, 1, 0, 1, 1), -- Runed orb
(26959, 45655, 0, 1, 3, 1, 1), -- T8
(26959, 45654, 0, 1, 3, 1, 1), -- T8
(26959, 45653, 0, 1, 3, 1, 1), -- T8
(26959, 1, 100, 1, 1, -26962, 3), -- 3 Normal items
(26959, 45814, -100, 2, 0, 1, 1), -- Sigil Freya
(26959, 47241, 100, 1, 0, 1, 1); -- Emblem of Triumph x1
UPDATE gameobject_template SET `data1` = 26959 WHERE `entry` = 194328;

-- Loot with 1 elder alive 25 man (entry 194329)
DELETE FROM gameobject_loot_template WHERE `entry` = 26960;
INSERT INTO gameobject_loot_template VALUES
(26960, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(26960, 45038, 20, 1, 0, 1, 1), -- Fragment of Val'anyr
(26960, 45087, 75, 1, 0, 1, 1), -- Runed orb
(26960, 45655, 0, 1, 3, 1, 1), -- T8
(26960, 45654, 0, 1, 3, 1, 1), -- T8
(26960, 45653, 0, 1, 3, 1, 1), -- T8
(26960, 1, 100, 1, 1, -26962, 3), -- 3 Normal items
(26960, 2, 100, 1, 2, -26962, 1), -- 1 Hard Mode item
(26960, 45814, -100, 2, 0, 1, 1), -- Sigil Freya
(26960, 47241, 100, 1, 0, 2, 2); -- Emblem of Triumph x2
UPDATE gameobject_template SET `data1` = 26960 WHERE `entry` = 194329;

-- Loot with 2 elders alive 25 man (entry 194330)
DELETE FROM gameobject_loot_template WHERE `entry` = 26961;
INSERT INTO gameobject_loot_template VALUES
(26961, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(26961, 45038, 25, 1, 0, 1, 1), -- Fragment of Val'anyr
(26961, 45087, 75, 1, 0, 1, 1), -- Runed orb
(26961, 45655, 0, 1, 3, 1, 1), -- T8
(26961, 45654, 0, 1, 3, 1, 1), -- T8
(26961, 45653, 0, 1, 3, 1, 1), -- T8
(26961, 1, 100, 1, 1, -26962, 3), -- 3 Normal items
(26961, 2, 100, 1, 2, -26962, 2), -- 2 Hard Mode items
(26961, 45814, -100, 2, 0, 1, 1), -- Sigil Freya
(26961, 47241, 100, 1, 0, 3, 3); -- Emblem of Triumph x3
UPDATE gameobject_template SET `data1` = 26961 WHERE `entry` = 194330;

-- Loot with 3 elders alive 25 man (entry 194331)
DELETE FROM gameobject_loot_template WHERE `entry` = 26962;
INSERT INTO gameobject_loot_template VALUES
(26962, 3, 10, 1, 0, -34154, 1), -- Random Recipes
(26962, 45038, 100, 1, 0, 1, 1), -- Fragment of Val'anyr
(26962, 45087, 75, 1, 0, 1, 1), -- Runed orb
(26962, 45655, 0, 1, 3, 1, 1), -- T8
(26962, 45654, 0, 1, 3, 1, 1), -- T8
(26962, 45653, 0, 1, 3, 1, 1), -- T8
(26962, 1, 100, 1, 1, -26962, 3), -- 3 Normal items
(26962, 2, 100, 1, 2, -26962, 3), -- 3 Hard Mode items
(26962, 45814, -100, 2, 0, 1, 1), -- Sigil Freya
(26962, 47241, 100, 1, 0, 4, 4); -- Emblem of Triumph x4
UPDATE gameobject_template SET `data1` = 26962 WHERE `entry` = 194331;

-- ----------------------------
-- ------UPDATES---------------
-- ----------------------------
-- Drop unused  reference loot rows
DELETE FROM `reference_loot_template` WHERE `entry` IN (12020,12021,12022,34126,34127);

-- Add/fix proper loot conditions to greymane's custom loot fixes
UPDATE `conditions` SET `SourceGroup` = 27081 WHERE SourceEntry = 45788; -- Freya Sigil 10M
UPDATE `conditions` SET `SourceGroup` = 27086 WHERE SourceEntry = 45787; -- Mimiron Sigil 10M
UPDATE `conditions` SET `SourceGroup` = 27074 WHERE SourceEntry = 45784; -- Thorim Sigil 10M
UPDATE `conditions` SET `SourceGroup` = 26962 WHERE SourceEntry = 45814; -- Freya Sigil 25M
UPDATE `conditions` SET `SourceGroup` = 26967 WHERE SourceEntry = 45816; -- Mimiron Sigil 25M

-- Fix proper lootmode on freya's sigil
UPDATE `gameobject_loot_template` SET `lootmode` = 1 WHERE `item` IN (45788,45814) AND `entry` IN (27081,26962);
-- Add Condition for hodirs sigil drop
DELETE FROM `conditions` WHERE `SourceEntry` IN (45786,45815);
INSERT INTO `conditions` VALUES
(4,27069,45786,0,9,13609,0,0,0,'',NULL),
(4,26950,45815,0,9,13822,0,0,0,'',NULL);
-- Handle New Condition on thorim hasdmode chest, since i changed the chest on his script
UPDATE `gameobject_template` SET `questItem1` = 0 WHERE `entry` = 194314;
UPDATE `gameobject_template` SET `questitem1` = 45817 WHERE `entry` = 194315; 
UPDATE `conditions` SET SourceGroup = 40000 WHERE SourceGroup = 26955;
-- Delete unused reference loot for t8 tokens on thorim cache
DELETE FROM `reference_loot_template` WHERE `entry` = 34181;

-- Remove sigil loot from keepers wrong caches, they should be only on hardmode ones.
-- Freya
DELETE FROM gameobject_loot_template WHERE `item` IN (45788,45814) AND `entry` IN (27078,27079,27080,26959,26960,26961);
-- Mimiron
DELETE FROM gameobject_loot_template WHERE `item` IN (45787,45816) AND `entry` IN (27085,26963);
-- Thorim
DELETE FROM gameobject_loot_template WHERE `item` IN (45784,45817) AND `entry` IN (27073,40000);

-- Flame Leviathan (10) (0 Tower)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33113 AND `item`=47241;
-- Flame Leviathan (25) (0 Tower)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=34003 AND `item`=47241;

-- Ignis (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33118 AND `item`=47241;
-- Ignis (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33190 AND `item`=47241;

-- Razorscale (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33186 AND `item`=47241;
-- Razorscale (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33724 AND `item`=47241;

-- XT-002 (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33293 AND `item`=47241;
DELETE FROM `reference_loot_template` WHERE `entry`=34121 AND `lootmode`=2;
DELETE FROM `creature_loot_template` WHERE `entry`=33293 AND `lootmode`=2;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33293','45624','100','2','0','1','1'),
('33293','45867','0','2','1','1','1'),
('33293','45868','0','2','1','1','1'),
('33293','45869','0','2','1','1','1'),
('33293','45870','0','2','1','1','1'),
('33293','45871','0','2','1','1','1');
-- XT-002 (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33885 AND `item`=47241;

-- Stormcaller Brundir (10)
UPDATE `creature_loot_template` SET `item`=40753, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=32857 AND `item`=47241;
-- Stormcaller Brundir (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=33694 AND `item`=47241;

-- Runemaster Molgeim (10)
UPDATE `creature_loot_template` SET `item`=40753, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=32927 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=32927 AND `item`=45624;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32927','45624','100','1','0','1','1');
-- Runemaster Molgeim (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=3, `maxcount`=3 WHERE `entry`=33692 AND `item`=47241;

-- Steelbreaker (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=32867 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `item`=45624;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32867','45624','100','1','0','2','2');
-- Steelbreaker (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=3, `maxcount`=3 WHERE `entry`=33693 AND `item`=47241;

-- Auriaya (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33515 AND `item`=47241;
-- Auriaya (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=34175 AND `item`=47241;

-- Kologarn (10)
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27061 AND `item`=47241;
-- Kologarn (25)
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26929 AND `item`=47241;

-- Freya (25)
DELETE FROM `reference_loot_template` WHERE `entry` IN (12020,12021,12022);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- t8.5
('12020','45653','0','1','1','1','1'),
('12020','45654','0','1','1','1','1'),
('12020','45655','0','1','1','1','1'),
-- 1 elder alive emblems
('12021','45624','100','2','0','1','1'),
-- 2 elder alive emblems
('12022','45624','100','4','0','1','1'),
('12022','45087','100','4','0','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27079,26962);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- Freya (25) normal
('27079','1','100','1','0','1','1'),
('27079','2','100','1','0','-34154','1'),
('27079','3','100','1','0','-12020','2'),
('27079','4','100','2','0','-12021','1'),
('27079','5','100','4','0','-12022','1'),
('27079','45038','18','1','0','1','1'),
('27079','45087','100','1','0','1','1'),
('27079','45479','0','1','1','1','1'),
('27079','45480','0','1','1','1','1'),
('27079','45481','0','1','1','1','1'),
('27079','45482','0','1','1','1','1'),
('27079','45483','0','1','1','1','1'),
('27079','45624','100','1','0','1','1'),
('27079','46110','100','1','0','1','1'),
-- Freya (25) hard
('26962','1','100','1','0','-34154','1'),
('26962','2','100','1','0','-12020','2'),
('26962','45038','18','1','0','1','1'),
('26962','45087','100','1','0','3','3'),
('26962','45479','0','1','1','1','1'),
('26962','45480','0','1','1','1','1'),
('26962','45481','0','1','1','1','1'),
('26962','45482','0','1','1','1','1'),
('26962','45483','0','1','1','1','1'),
('26962','45484','0','2','2','1','1'),
('26962','45485','0','2','2','1','1'),
('26962','45486','0','2','2','1','1'),
('26962','45487','0','2','2','1','1'),
('26962','45488','0','2','2','1','1'),
('26962','45613','0','2','2','1','1'),
('26962','45624','100','1','0','5','5'),
('26962','45814','-100','1','0','1','1'),
('26962','46110','100','1','0','1','1');

-- Mimiron (10) normal
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=194956;
DELETE FROM `reference_loot_template` WHERE `entry`=34129 AND `lootmode`=2;
DELETE FROM `gameobject_loot_template` WHERE `entry`=27085 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27085 AND `item`=47241;
-- Mimiron (10) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=27086;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('27086','1','100','1','0','-34129','1'),
('27086','45982','0','1','2','1','1'),
('27086','45988','0','1','2','1','1'),
('27086','45989','0','1','2','1','1'),
('27086','45990','0','1','2','1','1'),
('27086','45993','0','1','2','1','1'),
('27086','45647','0','1','1','1','1'),
('27086','45648','0','1','1','1','1'),
('27086','45649','0','1','1','1','1'),
('27086','45787','-100','1','0','1','1'),
('27086','40753','100','1','0','1','1'),
('27086','45624','100','1','0','1','1');

-- Mimiron (25) normal
DELETE FROM `gameobject_loot_template` WHERE `entry`=26963 AND (`lootmode`=2 OR `groupid`=3);
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26963 AND `item`=47241;

DELETE FROM `reference_loot_template` WHERE `entry`=34180;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34180','45641','0','1','1','1','1'),
('34180','45642','0','1','1','1','1'),
('34180','45643','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=26963 AND `mincountOrRef`=-34180;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26963','2','100','1','0','-34180','2');

-- Mimiron (25) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=26967;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26967','1','10','1','0','-34154','1'),
('26967','2','100','1','0','-34180','2'),
('26967','45038','18','1','0','1','1'),
('26967','45087','75','1','0','1','1'),
('26967','45489','0','1','1','1','1'),
('26967','45490','0','1','1','1','1'),
('26967','45491','0','1','1','1','1'),
('26967','45492','0','1','1','1','1'),
('26967','45493','0','1','1','1','1'),
('26967','45494','0','1','2','1','1'),
('26967','45495','0','1','2','1','1'),
('26967','45496','0','1','2','1','1'),
('26967','45497','0','1','2','1','1'),
('26967','45620','0','1','2','1','1'),
('26967','45624','100','1','0','2','2'),
('26967','45663','0','1','2','1','1'),
('26967','45816','-100','1','0','1','1');

-- Thorim (10) normal
UPDATE `gameobject_template` SET `faction`=0, `flags`=0 WHERE `entry`=194312;
UPDATE `gameobject_template` SET `size`=3, `data1`=40000 WHERE `entry`=194315;
DELETE FROM `reference_loot_template` WHERE `entry`=34130 AND `lootmode`=2;
DELETE FROM `gameobject_loot_template` WHERE `entry`=27073 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27073 AND `item`=47241;
-- Thorim (10) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=27074;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('27074','1','100','1','0','-34130','1'),
('27074','45928','0','1','2','1','1'),
('27074','45929','0','1','2','1','1'),
('27074','45930','0','1','2','1','1'),
('27074','45931','0','1','2','1','1'),
('27074','45933','0','1','2','1','1'),
('27074','45659','0','1','1','1','1'),
('27074','45660','0','1','1','1','1'),
('27074','45661','0','1','1','1','1'),
('27074','45784','-100','1','0','1','1'),
('27074','40753','100','1','0','1','1'),
('27074','45624','100','1','0','1','1');

-- Thorim (25) normal
DELETE FROM `reference_loot_template` WHERE `entry`=34181;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34181','45638','0','1','1','1','1'),
('34181','45639','0','1','1','1','1'),
('34181','45640','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=40000;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('40000','1','10','1','0','-34154','1'),
('40000','2','100','1','0','-34181','2'),
('40000','45038','18','1','0','1','1'),
('40000','45087','75','1','0','1','1'),
('40000','45463','0','1','1','1','1'),
('40000','45466','0','1','1','1','1'),
('40000','45467','0','1','1','1','1'),
('40000','45468','0','1','1','1','1'),
('40000','45469','0','1','1','1','1'),
('40000','45624','100','1','0','1','1');

-- Thorim (25) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=26955;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26955','1','10','1','0','-34154','1'),
('26955','2','100','1','0','-34181','2'),
('26955','45038','18','1','0','1','1'),
('26955','45087','75','1','0','1','1'),
('26955','45463','0','1','1','1','1'),
('26955','45466','0','1','1','1','1'),
('26955','45467','0','1','1','1','1'),
('26955','45468','0','1','1','1','1'),
('26955','45469','0','1','1','1','1'),
('26955','45470','0','1','2','1','1'),
('26955','45471','0','1','2','1','1'),
('26955','45472','0','1','2','1','1'),
('26955','45473','0','1','2','1','1'),
('26955','45474','0','1','2','1','1'),
('26955','45570','0','1','2','1','1'),
('26955','45624','100','1','0','2','2'),
('26955','45817','-100','1','0','1','1');

-- Hodir (10) normal
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=194201;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27068 AND `item`=47241;
-- Hodir (10) hard
UPDATE `gameobject_loot_template` SET `lootmode`=1 WHERE `entry`=27069 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=27069 AND `item`=47241;

-- Hodir (25) normal
DELETE FROM `reference_loot_template` WHERE `entry`=34182;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34182','45632','0','1','1','1','1'),
('34182','45633','0','1','1','1','1'),
('34182','45634','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=26946;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26946','1','10','1','0','-34154','1'),
('26946','2','100','1','0','-34182','2'),
('26946','45038','8','1','0','1','1'),
('26946','45087','75','1','0','1','1'),
('26946','45450','0','1','1','1','1'),
('26946','45451','0','1','1','1','1'),
('26946','45452','0','1','1','1','1'),
('26946','45453','0','1','1','1','1'),
('26946','45454','0','1','1','1','1'),
('26946','45624','100','1','0','1','1');

-- Hodir (25) hard
UPDATE `gameobject_loot_template` SET `lootmode`=1 WHERE `entry`=26950 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26950 AND `item`=47241;

-- Vezax (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33271 AND `item`=47241;
DELETE FROM `reference_loot_template` WHERE `entry`=34131 AND `lootmode`=2;
DELETE FROM `creature_loot_template` WHERE `entry`=33271 AND `lootmode`=2;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33271','45624','100','2','0','1','1'),
('33271','46032','0','2','1','1','1'),
('33271','46033','0','2','1','1','1'),
('33271','46034','0','2','1','1','1'),
('33271','46035','0','2','1','1','1'),
('33271','46036','0','2','1','1','1');
-- Vezax (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33449 AND `item`=47241;

-- Yogg-Saron (10) (4 Keeper)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33288 AND `item`=47241;
-- Yogg-Saron (25) (4 Keeper)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33955 AND `item`=47241;
