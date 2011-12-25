-- Eilo (https://github.com/eilo)
-- Recopilacion y adecuacion de querys originales de Zwerg

-- INSTANCE: The Oculus
-- first remove unneeded stuff from recent commits
UPDATE `gameobject_template` SET `AIName`='' WHERE `entry` IN (188715,189985);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (188715,189985);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_emerald_drake_touch_the_nightmare';
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (49346,49460,49464);
UPDATE `creature_template` SET `AIName`='',`ScriptName`='' WHERE `entry`=28239;
DELETE FROM `creature` WHERE `id`=28183;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 100227 AND 100234;
-- end remove

UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=30879;
UPDATE `creature_template` SET `IconName`='',`ScriptName`='npc_oculus_mount' WHERE `entry` IN (27692,27755,27756);
UPDATE `creature_template` SET `InhabitType`=5,`ScriptName`='npc_planar_anomaly' WHERE `entry`=30879;
UPDATE `creature_template_addon` SET `auras`='50325' WHERE `entry` IN (27692,27755);
UPDATE `creature_template_addon` SET `auras`='50248 50325' WHERE `entry`=27756;
UPDATE `creature_template` SET `spell2`=50240,`spell3`=50253,`spell4`=0 WHERE `entry`=27756;

UPDATE `creature_template` SET `mingold`=7666,`maxgold`=12776 WHERE `entry` IN(27633,27635,27636,27641, 30901,30902,30904,30905,30915,30916);
UPDATE `creature_template` SET `mingold`=40000,`maxgold`=60000,`mechanic_immune_mask`=646676351 WHERE `entry` IN(27447,27654,27655,27656);
UPDATE `creature_template` SET `mingold`=120000,`maxgold`=180000,`mechanic_immune_mask`=646676351 WHERE `entry` IN(31558,31559,31560,31561);

DELETE FROM `spell_script_names` WHERE `spell_id` IN(49838,49840,50240,49592);
INSERT INTO `spell_script_names` VALUES
(49840,'spell_amber_drake_shock_lance'),
(49838,'spell_amber_drake_stop_time'),
(50240,'spell_ruby_drake_evasive_maneuvers'),
(49592,'spell_amber_drake_temporal_rift');

DELETE FROM `spell_proc_event` WHERE `entry`=50240;
INSERT INTO `spell_proc_event` (`entry`,`procEx`,`CustomChance`)VALUES
(50240,4,100);

DELETE FROM `creature_addon` WHERE `guid` IN (101924,101933,101922,101974,102064,101967);
DELETE FROM `creature_template_addon` WHERE `entry` IN (27641,30905,28153,30917);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(27641,'50088'),
(30905,'50088'),
(28153,'44604'),
(30917,'44604');

-- SAI
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` IN (27636,27633,27635,27638,27640,28153,27639,28276,27642,27644,27645,27650,27651,27653,27647,27648);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27636,27633,27635,27638,27641,27640,28153,27639,28276,27642,27644,27645,27650,27651,27653,27647,27648);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27636,27633,27635,27638,27640,28153,27639,28276,27642,27644,27645,27650,27651,27653,27647,27648);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27636,0,0,0,0,0,100,2,2000,4000,2000,4000,11,50705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Azure Ley-Whelp - IC - cast Arcane Bolt'),
(27636,0,1,0,0,0,100,4,2000,4000,2000,4000,11,59210,0,0,0,0,0,2,0,0,0,0,0,0,0,'Azure Ley-Whelp - IC - cast Arcane Bolt H'),

(27633,0,0,0,0,0,100,0,3000,5000,6000,8000,11,50573,0,0,0,0,0,2,0,0,0,0,0,0,0,'Azure Inquisitor - IC - cast Arcane Cleave'),
(27633,0,1,0,0,0,100,0,9000,10000,15000,20000,11,50690,0,0,0,0,0,5,0,0,0,0,0,0,0,'Azure Inquisitor - IC - cast Immobilizing Field'),
(27633,0,2,0,9,0,100,2,5,30,3000,5000,11,51454,0,0,0,0,0,6,0,0,0,0,0,0,0,'Azure Inquisitor - IC - cast Throw'),
(27633,0,3,0,9,0,100,4,5,30,3000,5000,11,59209,0,0,0,0,0,6,0,0,0,0,0,0,0,'Azure Inquisitor - IC - cast Throw H'),

(27635,0,0,0,0,0,100,2,3000,5000,12000,14000,11,50702,0,0,0,0,0,1,0,0,0,0,0,0,0,'Azure Spellbinder - IC - cast Arcane Volley '),
(27635,0,1,0,0,0,100,4,3000,5000,12000,14000,11,59212,0,0,0,0,0,1,0,0,0,0,0,0,0,'Azure Spellbinder - IC - cast Arcane Volley H'),
(27635,0,2,0,0,0,100,2,7000,9000,15000,20000,11,50566,0,0,0,0,0,5,0,0,0,0,0,0,0,'Azure Spellbinder - IC - cast Mind Warp'),
(27635,0,3,0,0,0,100,4,7000,9000,15000,20000,11,38047,0,0,0,0,0,5,0,0,0,0,0,0,0,'Azure Spellbinder - IC - cast Mind Warp H'),
(27635,0,4,0,0,0,100,0,10000,13000,20000,25000,11,50572,0,0,0,0,0,5,0,0,0,0,0,0,0,'Azure Spellbinder - IC - cast Power Sap'),

(27638,0,0,0,0,0,100,2,0,5000,6000,8000,11,49549,0,0,0,0,0,2,0,0,0,0,0,0,0,'Azure Ring Guardian - IC - cast Ice Beam'),
(27638,0,1,0,0,0,100,4,0,5000,6000,8000,11,59211,0,0,0,0,0,2,0,0,0,0,0,0,0,'Azure Ring Guardian - IC - cast Ice Beam H'),

(27640,0,0,0,23,0,100,2,50717,0,0,0,11,50717,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ring-Lord Conjurer - On missing Aura: Charged Skin - cast Charged Skin'),
(27640,0,1,0,23,0,100,4,59276,0,0,0,11,59276,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ring-Lord Conjurer - On missing Aura: Charged Skin H - cast Charged Skin H'),
(27640,0,2,0,0,0,100,0,4000,6000,13000,15000,11,50719,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ring-Lord Conjurer - IC - cast Conjure Snowflake'),
-- may implement beam to misc Centrifuge Construct

(28153,0,0,0,0,0,100,2,0,0,0,0,11,50721,0,0,0,0,0,5,0,0,0,0,0,0,0,'Snowflake - IC - cast Frostbolt'),
(28153,0,1,0,0,0,100,4,0,0,0,0,11,59280,0,0,0,0,0,5,0,0,0,0,0,0,0,'Snowflake - IC - cast Frostbolt H'),

(27639,0,0,0,0,0,100,2,5000,7000,20000,25000,11,50715,0,0,0,0,0,5,0,0,0,0,0,0,0,'Ring-Lord Sorceress - IC - cast Blizzard'),
(27639,0,1,0,0,0,100,4,5000,7000,20000,25000,11,59278,0,0,0,0,0,5,0,0,0,0,0,0,0,'Ring-Lord Sorceress - IC - cast Blizzard H'),
(27639,0,2,0,0,0,100,2,2000,4000,8000,10000,11,16102,0,0,0,0,0,5,0,0,0,0,0,0,0,'Ring-Lord Sorceress - IC - cast Flamestrike'),
(27639,0,3,0,0,0,100,4,2000,4000,8000,10000,11,61402,0,0,0,0,0,5,0,0,0,0,0,0,0,'Ring-Lord Sorceress - IC - cast Flamestrike H'),
-- may implement beam to misc Centrifuge Construct

(28276,0,0,0,0,0,100,2,2000,4000,2000,4000,11,50705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Greater Ley-Whelp - IC - cast Arcane Bolt'),
(28276,0,1,0,0,0,100,4,2000,4000,2000,4000,11,59210,0,0,0,0,0,2,0,0,0,0,0,0,0,'Greater Ley-Whelp - IC - cast Arcane Bolt H'),

-- Mage-Lord Urom Adds
(27642,0,0,0,9,0,100,0,8,25,6000,8000,11,32323,0,0,0,0,0,6,0,0,0,0,0,0,0,'Phantasmal Mammoth - IC - cast Charge'),
(27642,0,1,0,0,0,100,0,4000,6000,10000,12000,11,51253,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Mammoth - IC - cast Trample'),

(27644,0,0,0,0,0,100,2,3000,6000,12000,14000,11,50728,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Wolf - IC - cast Furious Howl'),
(27644,0,1,0,0,0,100,4,3000,6000,12000,14000,11,59274,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Wolf - IC - cast Furious Howl H'),
(27644,0,2,0,0,0,100,2,5000,8000,14000,17000,11,50729,0,0,0,0,0,2,0,0,0,0,0,0,0,'Phantasmal Wolf - IC - cast Carnivorous Bite'),
(27644,0,3,0,0,0,100,4,5000,8000,14000,17000,11,59269,0,0,0,0,0,2,0,0,0,0,0,0,0,'Phantasmal Wolf - IC - cast Carnivorous Bite H'),

(27645,0,0,0,0,0,100,2,6000,8000,10000,12000,11,59220,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Cloudscraper - IC - cast Chain Lightning'),
(27645,0,1,0,0,0,100,4,6000,8000,10000,12000,11,15588,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Cloudscraper - IC - cast Chain Lightning H'),
(27645,0,2,0,0,0,100,2,2000,4000,12000,14000,11,15588,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Cloudscraper - IC - cast Thunderclap'),
(27645,0,3,0,0,0,100,4,2000,4000,12000,14000,11,59217,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Cloudscraper - IC - cast Thunderclap H'),

(27650,0,0,0,4,0,100,2,0,0,0,0,11,25020,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Air - On Aggro - cast Lightning Shield'),
(27650,0,1,0,4,0,100,4,0,0,0,0,11,20545,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Air - On Aggro - cast Lightning Shield H'),

(27651,0,0,0,0,0,100,2,3000,5000,5000,8000,11,50744,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Fire - IC - cast Blaze'),
(27651,0,1,0,0,0,100,4,3000,5000,5000,8000,11,59225,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Fire - IC - cast Blaze H'),

(27653,0,0,0,0,0,100,2,3000,5000,7000,9000,11,37924,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Water - IC - cast Water Bolt Volley'),
(27653,0,1,0,0,0,100,4,3000,5000,7000,9000,11,59266,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Water - IC - cast Water Bolt Volley H'),

(27647,0,0,0,0,0,100,0,2000,5000,7000,9000,11,50731,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Ogre - IC - cast Mace Smash'),
(27647,0,1,0,4,0,100,0,0,0,0,0,11,50730,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phantasmal Ogre - On Aggro - cast Bloodlust'),

(27648,0,0,0,0,0,100,2,3000,5000,8000,10000,11,50732,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Naga - IC - cast Water Tomb'),
(27648,0,1,0,0,0,100,4,3000,5000,8000,10000,11,59261,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Naga - IC - cast Water Tomb H'),
(27648,0,2,0,0,0,100,0,4000,6000,6000,8000,11,49711,0,0,0,0,0,5,0,0,0,0,0,0,0,'Phantasmal Naga - IC - cast Hooked Net');

-- skinnloot
UPDATE `creature_template` SET `skinloot`=70210 WHERE `entry` IN (27636,27633,27635,27638,28276, 30902,30901,30904,30903,30991);
UPDATE `creature_template` SET `skinloot`=29730,`type_flags`=`type_flags`|32768 WHERE `entry` IN (27641, 30905);
UPDATE `creature_template` SET `skinloot`=70211 WHERE `entry` IN (27642,27644,27645, 30909,30914,30907);

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (50232,50328,50341,49840,49592);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (61407,62136,54069,56251,51024,50087);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
-- Searing Wrath
(17,50232,1,19,27638,0),
(17,50232,2,19,27656,0),
(17,50232,3,19,28276,0),
-- Leeching Poison
(17,50328,1,19,27638,0),
(17,50328,2,19,27656,0),
(17,50328,3,19,28276,0),
-- Touch the Nightmare
(17,50341,1,19,27638,0),
(17,50341,2,19,27656,0),
(17,50341,3,19,28276,0),
-- Shock Lance
(17,49840,1,19,27638,0),
(17,49840,2,19,27656,0),
(17,49840,3,19,28276,0),
-- Temporal Rift
(17,49592,1,19,27638,0),
(17,49592,2,19,27656,0),
(17,49592,3,19,28276,0),

(13,61407,0,18,1,28183),
(13,62136,0,18,1,28183),
(13,54069,0,18,1,28183),
(13,56251,0,18,1,28183),
(13,51024,0,18,1,28239),

(13,50087,0,18,1,27641);

DELETE FROM creature_loot_template WHERE entry IN(30901, 30902, 30904, 30905, 30906, 30907, 30908, 30909, 30910, 30911, 30912, 30913, 30914, 30915, 30916);
INSERT INTO creature_loot_template VALUES
(30902, 33631, 73, 1, 0, 1, 1),
(30902, 33632, 17, 1, 0, 1, 1),
(30902, 37366, 1, 1, 0, 1, 1),
(30902, 37365, 1, 1, 0, 1, 1),
(30902, 37364, 1, 1, 0, 1, 1),
(30902, 43297, 0.1, 1, 0, 1, 1),
(30902, 45912, 0.1, 1, 0, 1, 1),
(30901, 33470, 33, 1, 0, 1, 7),
(30901, 43852, 19, 1, 0, 1, 1),
(30901, 33454, 8, 1, 0, 1, 1),
(30901, 33445, 4, 1, 0, 1, 1),
(30901, 33447, 2, 1, 0, 1, 1),
(30901, 33448, 2, 1, 0, 1, 1),
(30901, 37364, 1.2, 1, 0, 1, 1),
(30901, 37366, 1, 1, 0, 1, 1),
(30901, 37365, 1, 1, 0, 1, 1),
(30901, 43297, 0.1, 1, 0, 1, 1),
(30901, 45912, 0.1, 1, 0, 1, 1),
(30904, 33470, 31, 1, 0, 1, 7),
(30904, 43852, 19, 1, 0, 1, 1),
(30904, 33454, 7, 1, 0, 1, 1),
(30904, 33445, 4, 1, 0, 1, 1),
(30904, 33447, 2, 1, 0, 1, 1),
(30904, 37366, 1, 1, 0, 1, 1),
(30904, 37365, 1, 1, 0, 1, 1),
(30904, 37364, 1, 1, 0, 1, 1),
(30904, 43297, 0.1, 1, 0, 1, 1),
(30904, 45912, 0.1, 1, 0, 1, 1),
(30916, 33470, 32, 1, 0, 1, 7),
(30916, 43852, 18, 1, 0, 1, 1),
(30916, 33454, 8, 1, 0, 1, 1),
(30916, 33445, 4, 1, 0, 1, 1),
(30916, 33447, 2, 1, 0, 1, 1),
(30916, 37366, 1, 1, 0, 1, 1),
(30916, 37365, 1, 1, 0, 1, 1),
(30916, 37364, 1, 1, 0, 1, 1),
(30916, 43297, 0.1, 1, 0, 1, 1),
(30916, 45912, 0.1, 1, 0, 1, 1),
(30915, 33470, 33, 1, 0, 1, 7),
(30915, 43852, 19, 1, 0, 1, 1),
(30915, 33454, 8, 1, 0, 1, 1),
(30915, 33445, 4, 1, 0, 1, 1),
(30915, 33447, 2, 1, 0, 1, 1),
(30915, 33478, 2, 1, 0, 1, 1),
(30915, 37366, 1, 1, 0, 1, 1),
(30915, 37365, 1, 1, 0, 1, 1),
(30915, 37364, 1, 1, 0, 1, 1),
(30915, 43297, 0.1, 1, 0, 1, 1),
(30915, 45912, 0.1, 1, 0, 1, 1),
(30905, 39209, 72, 1, 0, 1, 1),
(30905, 39210, 17, 1, 0, 1, 1),
(30905, 37366, 1, 1, 0, 1, 1),
(30905, 37365, 1, 1, 0, 1, 1),
(30905, 37364, 1, 1, 0, 1, 1),
(30905, 43297, 0.1, 1, 0, 1, 1),
(30905, 45912, 0.1, 1, 0, 1, 1),
(30906, 39512, 72, 1, 0, 1, 4),
(30906, 37700, 28, 1, 0, 1, 4),
(30906, 39513, 17, 1, 0, 1, 4),
(30906, 37366, 1, 1, 0, 1, 1),
(30906, 37365, 1, 1, 0, 1, 1),
(30906, 37364, 1, 1, 0, 1, 1),
(30908, 39512, 69, 1, 0, 1, 4),
(30908, 37702, 30, 1, 0, 1, 4),
(30908, 39513, 18, 1, 0, 1, 4),
(30908, 37366, 1.7, 1, 0, 1, 1),
(30908, 37365, 1, 1, 0, 1, 1),
(30908, 37364, 1, 1, 0, 1, 1),
(30913, 39512, 72, 1, 0, 1, 4),
(30913, 37705, 30, 1, 0, 1, 4),
(30913, 39513, 18, 1, 0, 1, 4),
(30913, 37366, 1, 1, 0, 1, 1),
(30913, 37365, 1, 1, 0, 1, 1),
(30913, 37364, 1, 1, 0, 1, 1),
(30912, 33470, 33, 1, 0, 1, 4),
(30912, 43852, 18, 1, 0, 1, 1),
(30912, 33454, 7, 1, 0, 1, 1),
(30912, 33445, 6, 1, 0, 1, 1),
(30912, 33447, 2, 1, 0, 1, 1),
(30912, 33764, 1.8, 1, 0, 1, 1),
(30912, 36047, 1.1, 1, 0, 1, 1),
(30912, 36148, 1.1, 1, 0, 1, 1),
(30912, 37097, 1, 1, 0, 1, 1),
(30912, 33448, 2, 1, 0, 1, 1),
(30912, 36371, 1.3, 1, 0, 1, 1),
(30912, 37366, 1, 1, 0, 1, 1),
(30912, 37365, 1, 1, 0, 1, 1),
(30912, 37364, 1, 1, 0, 1, 1),
(30910, 17057, 27, 1, 0, 1, 1),
(30910, 17058, 25, 1, 0, 1, 1),
(30910, 33470, 19, 1, 0, 1, 1),
(30910, 36781, 16, 1, 0, 1, 1),
(30910, 43852, 12, 1, 0, 1, 1),
(30910, 37365, 1.2, 1, 0, 1, 1),
(30910, 33447, 2, 1, 0, 1, 1),
(30910, 37366, 1, 1, 0, 1, 1),
(30910, 37364, 1, 1, 0, 1, 1),
(30911, 17057, 26, 1, 0, 1, 1),
(30911, 17058, 25, 1, 0, 1, 1),
(30911, 33470, 17, 1, 0, 1, 7),
(30911, 36781, 14, 1, 0, 1, 1),
(30911, 43853, 10, 1, 0, 1, 1),
(30911, 37366, 1, 1, 0, 1, 1),
(30911, 37365, 1, 1, 0, 1, 1),
(30911, 37364, 1, 1, 0, 1, 1),
(30914, 39211, 71, 1, 0, 1, 5),
(30914, 43011, 46, 1, 0, 1, 1),
(30914, 39212, 17, 1, 0, 1, 4),
(30914, 43013, 13, 1, 0, 1, 1),
(30914, 37366, 1, 1, 0, 1, 1),
(30914, 37365, 1, 1, 0, 1, 1),
(30914, 37364, 1, 1, 0, 1, 1),
(30907, 39567, 73, 1, 0, 1, 5),
(30907, 39568, 16, 1, 0, 1, 4),
(30907, 37366, 1, 1, 0, 1, 1),
(30907, 37365, 1, 1, 0, 1, 1),
(30907, 37364, 1, 1, 0, 1, 1),
(30909, 39562, 72, 1, 0, 1, 4),
(30909, 34736, 49, 1, 0, 1, 1),
(30909, 39563, 18, 1, 0, 1, 3),
(30909, 43013, 11, 1, 0, 1, 1),
(30909, 33422, 1, 1, 0, 1, 1),
(30909, 37366, 1, 1, 0, 1, 1),
(30909, 37365, 1, 1, 0, 1, 1),
(30909, 37364, 1, 1, 0, 1, 1);

DELETE FROM `script_texts` WHERE `entry` BETWEEN  -1578024 AND -1578005 OR (`npc_entry` IN (27654,27447,27655,27656));
DELETE FROM `creature_text` WHERE `entry` IN (27654,27447,27655,27656);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Drakos
(27654,1,0,'The prisoners shall not go free. The word of Malygos is law!',14,0,0,5,0,13594,'Drakos the Interrogator - Aggro'),
(27654,2,0,'A fitting punishment!',14,0,0,5,0,13602,'Drakos the Interrogator - Kill 1'),
(27654,2,1,'Sentence: executed!',14,0,0,5,0,13603,'Drakos the Interrogator - Kill 2'),
(27654,2,2,'Another casualty of war!',14,0,0,5,0,13604,'Drakos the Interrogator - Kill 3'),
(27654,3,0,'It is too late to run!',14,0,0,5,0,13598,'Drakos the Interrogator - Pull 1'),
(27654,3,1,'Gather ''round...',14,0,0,5,0,13599,'Drakos the Interrogator - Pull 2'),
(27654,3,2,'None shall escape!',14,0,0,5,0,13600,'Drakos the Interrogator - Pull 3'),
(27654,3,3,'I condemn you to death!',14,0,0,5,0,13601,'Drakos the Interrogator - Pull 4'),
(27654,4,0,'Tremble, worms!',14,0,0,5,0,13595,'Drakos the Interrogator - Stomp 1'),
(27654,4,1,'I will crush you!',14,0,0,5,0,13596,'Drakos the Interrogator - Stomp 2'),
(27654,4,2,'Can you fly?',14,0,0,5,0,13597,'Drakos the Interrogator - Stomp 3'),
(27654,5,0,'The war... goes on.',14,0,0,5,0,13605,'Drakos the Interrogator - Death'),
-- Varos
(27447,1,0,'There will be no mercy!',14,0,0,5,0,13649,'Varos Cloudstrider - Aggro'),
(27447,2,0,'They are... too strong! Underestimated their... fortitude.',14,0,0,5,0,13655,'Varos Cloudstrider - Death'),
(27447,3,0,'Blast them! Destroy them!',14,0,0,5,0,13650,'Varos Cloudstrider - Air Strike 1'),
(27447,3,1,'Take no prisoners! Attack!',14,0,0,5,0,13651,'Varos Cloudstrider - Air Strike 2'),
(27447,3,2,'Strike now! Obliterate them!',14,0,0,5,0,13652,'Varos Cloudstrider - Air Strike 3'),
(27447,4,0,'You have been warned!',14,0,0,5,0,13653,'Varos Cloudstrider - Kill 1'),
(27447,4,1,'The Oculus is ours!',14,0,0,5,0,13654,'Varos Cloudstrider - Kill 2'),
(27447,5,0,'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protect this conduit. I will see to it personnaly that the Oculus does not fall into your hands!',14,0,0,5,0,13648,'Varos Cloudstrider - Spawn'),
-- Urom
(27655,1,0,'Poor blind fools!',14,0,0,5,0,13638,'Mage-Lord Urom - Aggro'),
(27655,2,0,'What do we have here... those would defy the Spell-Weaver? Those without foresight or understanding. How could I make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!',14,0,0,5,0,13635,'Mage-Lord Urom - Summon 1'),
(27655,3,0,'Clearly my pets failed. Perhaps another demonstration is in order.',14,0,0,5,0,13636,'Mage-Lord Urom - Summon 2'),
(27655,4,0,'Still you fight. Still you cling to misguided principles. If you survive, you''ll find me in the center ring.',14,0,0,5,0,13637,'Mage-Lord Urom - Summon 3'),
(27655,5,0,'If only you understood!',14,0,0,5,0,13641,'Mage-Lord Urom - Kill 1'),
(27655,5,1,'Now do you see? Do you?!',14,0,0,5,0,13642,'Mage-Lord Urom - Kill 2'),
(27655,5,2,'Unfortunate, but necessary.',14,0,0,5,0,13643,'Mage-Lord Urom - Kill 3'),
(27655,6,0,'A taste... just a small taste... of the Spell-Weaver''s power!',14,0,0,5,0,13639,'Mage-Lord Urom - Explotion 1'),
(27655,6,1,'So much unstable energy... but worth the risk to destroy you!',14,0,0,5,0,13640,'Mage-Lord Urom - Explotion 2'),
(27655,7,0,'Everything I''ve done... has been for Azeroth...',14,0,0,5,0,13644,'Mage-Lord Urom - Death'),
-- Eregos
(27656,1,0,'You brash interlopers are out of your element! I will ground you!',14,0,0,5,0,13623,'Ley-Guardian Eregos - Aggro'),
(27656,2,0,'Simpletons! You cannot comprehend the forces you have set in motion. The ley line conduit will not be disrupted! Your defeat shall be absolute!',14,0,0,5,0,13622,'Ley-Guardian Eregos - Spawn'),
(27656,3,0,'Such insolence... such arrogance... must be PUNISHED!',14,0,0,5,0,13624,'Ley-Guardian Eregos - Frenzy'),
(27656,4,0,'It''s a long way down...',14,0,0,5,0,13628,'Ley-Guardian Eregos - Kill 1'),
(27656,4,1,'Back to the earth with you!',14,0,0,5,0,13629,'Ley-Guardian Eregos - Kill 2'),
(27656,4,2,'Enjoy the fall!',14,0,0,5,0,13630,'Ley-Guardian Eregos - Kill 3'),
(27656,5,0,'Savor this small victory, foolish little creatures. You and your dragon allies have won this battle. But we will win... the Nexus War.',14,0,0,5,0,13631,'Ley-Guardian Eregos - Death'),
(27656,6,0,'Anomalies form as Ley-Guardian Eregos shifts into the Astral Plane!',41,0,0,0,0,0,'Ley-Guardian Eregos - Astral');

DELETE FROM creature_onkill_reputation WHERE creature_id IN (30902, 30901, 30904, 30915, 30916, 30905, 30903, 31558, 31559, 31560, 31561);
INSERT INTO creature_onkill_reputation VALUES
(30902, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30901, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30904, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30915, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30916, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30905, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30903, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(31558, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31559, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31560, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31561, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);

-- 06/12/2011
-- Achievements
-- Voids
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7323,7324,7325);
DELETE FROM `achievement_criteria_data` WHERE `type`=11 AND `criteria_id` IN (7323,7324,7325);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7323,11,0,0,'achievement_ruby_void'),
(7324,11,0,0,'achievement_emerald_void'),
(7325,11,0,0,'achievement_amber_void');

-- 10/12/2011
-- Achievements
-- Experienced Drake Rider
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7177,7178,7179);
DELETE FROM `achievement_criteria_data` WHERE `type` IN (5,11) AND `criteria_id` IN (7177,7178,7179);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7177,11,0,0,'achievement_experienced_drake_rider_amber'),
(7178,11,0,0,'achievement_experienced_drake_rider_emerald'),
(7179,11,0,0,'achievement_experienced_drake_rider_ruby');

-- 10/12/2011
-- Cache of the Ley-Guardian
DELETE FROM `item_loot_template` WHERE `entry`=52676;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- Gems
(52676,36921,0,1,1,1,3),
(52676,36933,0,1,1,1,3),
(52676,36930,0,1,1,1,3),
(52676,36918,0,1,1,1,3),
(52676,36927,0,1,1,1,3),
(52676,36924,0,1,1,1,3),
-- Mount
(52676,43953,5,1,0,1,1);