-- El Ojo de la Eternidad
-- SQL de soporte para Malygos y relativos a la instance

-- Spawns
DELETE FROM `creature` WHERE `id` IN (30090, 22517);
-- Spawn Focusing Iris (Normal/Heroic)
DELETE FROM `gameobject` WHERE `id` IN (193958, 193960) AND `map` = 616;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES 
(193958, 616, 1, 1, 754.35, 1300.87, 266.172, 5.34356, 0, 0, 0, 1, 180, 0, 1),
(193960, 616, 2, 1, 754.35, 1300.87, 266.172, 5.34356, 0, 0, 0, 1, 180, 0, 1);
-- Update Position Npcs.
UPDATE `creature` SET `position_x` = `position_x` + 400  WHERE `map` = 616;
UPDATE `gameobject` SET `position_x` = `position_x` + 400 WHERE `map` = 616;
UPDATE `areatrigger_teleport` SET `target_position_x` = `target_position_x` + 400 WHERE `id` = 5290;
-- Update Stat Spell Wyrmrest skytalon
UPDATE `creature_template` SET 
`spell1` = 56091,-- Flammenstachel
`spell2` = 56092,-- Flammenhuelle
`spell3` = 57090,-- Wiederbeleben
`spell4` = 57143,-- Explosion des Lebens
`spell5` = 57108,-- Flammenschild
`spell6` = 57092 -- Blitztempo
WHERE `entry` IN (30161, 31752);
-- Update Malygos (BOSS)
UPDATE `creature` SET `spawndist` = 0,`MovementType` = 0 WHERE `id` = 28859;
UPDATE `creature_template` SET `difficulty_entry_1` = 31734, `unit_flags` = 770,`ScriptName` = 'boss_malygos' WHERE `entry` = 28859;
UPDATE `creature_template` SET `name` = 'Malygos (1)',`speed_run` = 2.85714, `speed_walk` = 4, `unit_class` = 2, `unit_flags` = 770, `flags_extra` = 1 WHERE `entry` = 31734;
-- Nexus lord
UPDATE `creature_template` SET `ScriptName` = 'npc_nexus_lord' WHERE `entry` = 30245;
-- Scion of eternity
UPDATE `creature_template` SET `ScriptName` = 'npc_scion_of_eternity' WHERE `entry` = 30249;
-- Hover discs
UPDATE `creature_template` SET `ScriptName` = 'npc_hover_disc' WHERE `entry` = 30248;
UPDATE `creature_template` SET `VehicleId` = 283 WHERE `entry` = 31748;
UPDATE `creature_template` SET `VehicleId` = 223 WHERE `entry` = 31749;
-- Portal (malygos)
UPDATE `creature_template` SET `unit_flags` = 770, `flags_extra` = 2 WHERE `entry` = 30118;
-- Ignore threat
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` IN (30234, 31748);
-- Power spark
UPDATE `creature_template` SET `ScriptName` = 'npc_power_spark' WHERE `entry` = 30084;
-- Vortex
UPDATE `creature_template` SET `ScriptName` = 'npc_vortex_vehicle' WHERE `entry` = 30090;
-- Focusing iris
UPDATE `gameobject_template` SET `ScriptName` = 'go_focusing_iris' WHERE `entry` IN (193958, 193960);
UPDATE `creature_template` SET `ScriptName`='npc_alexstrasza' WHERE entry=32295;
-- Can fly
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` IN (28859, 30090, 30118, 30234, 30248, 30592, 31734, 31748, 31749);

-- Immunitys
-- Malygos, Nexus lord, Scion of eternity
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854395 WHERE `entry` IN (28859, 31734, 30245, 31750, 30249, 31751);
-- Instance Script
UPDATE `instance_template` SET `script` = 'instance_eye_of_eternity', `allowMount` = 0 WHERE `map` = 616;
-- Spell targets
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (56505, 56152, 59099);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) 
VALUES 
(13, 56152, 18, 1, 28859),-- Power spark (malygos)
(13, 56505, 18, 1, 30334),-- Surge of power (deep breath)
(13, 59099, 18, 1, 0);-- Destroy platform event
-- Vehicle onclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30234);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(30234,46598,0,0,0,1,0,0,0);-- Malygos player disc

-- Añadiendo la spell surge of power para 25man
DELETE FROM `spell_script_names` WHERE `spell_id`=60936;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(60936, 'spell_surge_of_power_targeting');

-- Apaño para Trigger del Arcane Barrier
-- Arcane Barrage
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(56397,63934,1, 'Arcane Barrage - Arcane Barrage Damage');

-- Heart of Magic (custom)
DELETE FROM `creature_loot_template` WHERE `entry`=32448;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32448','44650','-100','1','0','1','1'),
('32448','44651','-100','2','0','1','1');

UPDATE `creature_template` SET `lootid`=32448 WHERE `entry`=32448;

-- Apaño de daños de los npcs de la instance y malygos
UPDATE `creature_template` SET `dmg_multiplier`=40 WHERE `entry`=28859;
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=31734;
UPDATE `creature_template` SET `dmg_multiplier`=20 WHERE `entry`=30245;
UPDATE `creature_template` SET `dmg_multiplier`=30 WHERE `entry`=31750;

-- Loteo de Emblemas de triunfo y de valor
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=26097 AND `item`=47241;
-- Añadida spell Ride Vehicle Hardcoded al Hover Disk
UPDATE `npc_spellclick_spells` SET `spell_id`=46598 WHERE `npc_entry`=31748;
-- Apaño para Arcane Overload que no coja aggro
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=30282;

-- Actualizando posiciciones usando las criaturas de tc
-- Creatures
UPDATE `creature` SET `position_x`=754.26 WHERE `guid`=132302;
UPDATE `creature` SET `position_x`=754.29 WHERE `guid`=132303;
UPDATE `creature` SET `position_x`=652.42 WHERE `guid`=132309;
UPDATE `creature` SET `position_x`=847.67 WHERE `guid`=132310;
UPDATE `creature` SET `position_x`=647.68 WHERE `guid`=132311;
UPDATE `creature` SET `position_x`=843.18 WHERE `guid`=132312;
UPDATE `creature` SET `position_x`=808.53 WHERE `guid`=132313;
UPDATE `creature` SET `position_x`=754.54 WHERE `guid`=132314;
-- GameObjects
UPDATE `gameobject` SET `position_x`=764.56 WHERE `guid`=151793;
UPDATE `gameobject` SET `position_x`=764.56 WHERE `guid`=151792;
UPDATE `gameobject` SET `position_x`=754.35 WHERE `guid`=67449;
UPDATE `gameobject` SET `position_x`=724.68 WHERE `guid`=67450;
UPDATE `gameobject` SET `position_x`=754.35 WHERE `guid`=400001;
UPDATE `gameobject` SET `position_x`=754.35 WHERE `guid`=400000;
-- Areatrigger
UPDATE `areatrigger_teleport` SET `target_position_x`=727.94 WHERE `id`=5290;
-- Disable LoS
DELETE FROM `disables` WHERE `sourceType`=6 AND `entry`=616;
INSERT INTO `disables` VALUES (6, 616, 4, 0, 0, "Disable Eye of Eternity LOS");

-- Textos y Sonidos
-- Fix sound entries for Malygos encounter
DELETE FROM script_texts WHERE entry BETWEEN -1616035 AND -1616000;
INSERT INTO script_texts (npc_entry, entry, content_default, sound, type, language, emote, comment) VALUES
(28859, -1616000, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!', 14512, 1, 0, 0, 'Malygos INTRO 1'),
(28859, -1616001, 'None but the blue dragonflight are welcome here! Perhaps this is the work of Alexstrasza? Well then, she has sent you to your deaths.', 14513, 1, 0, 0, 'Malygos INTRO 2'),
(28859, -1616002, 'What could you hope to accomplish, to storm brazenly into my domain? To employ MAGIC? Against ME?', 14514, 1, 0, 0, 'Malygos INTRO 3'),
(28859, -1616003, 'I am without limits here... the rules of your cherished reality do not apply... In this realm, I am in control...', 14515, 1, 0, 0, 'Malygos INTRO 4'),
(28859, -1616004, 'I give you one chance. Pledge fealty to me, and perhaps I won\'t slaughter you for your insolence!', 14516, 1, 0, 0, 'Malygos INTRO 5'),
(28859, -1616005, 'My patience has reached its limit. I will be rid of you!', 14517, 1, 0, 0, 'Malygos AGGRO 1'),
(28859, -1616006, 'Watch helplessly as your hopes are swept away...', 14525, 1, 0, 0, 'Malygos VORTEX'),
(28859, -1616007, 'I AM UNSTOPPABLE!', 14533, 1, 0, 0, 'Malygos SPARK BUFF'),
(28859, -1616008, 'Your stupidity has finally caught up to you!', 14519, 1, 0, 0, 'Malygos SLAY 1-1'),
(28859, -1616009, 'More artifacts to confiscate...', 14520, 1, 0, 0, 'Malygos SLAY 1-2'),
(28859, -1616010, 'How very... naive...', 14521, 1, 0, 0, 'Malygos SLAY 1-3'),
(28859, -1616012, 'I had hoped to end your lives quickly, but you have proven more...resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must...And if it means your...extinction...THEN SO BE IT!', 14522, 1, 0, 0, 'Malygos PHASEEND 1'),
(28859, -1616013, 'Few have experienced the pain I will now inflict upon you!', 14523, 1, 0, 0, 'Malygos AGGRO 2'),
(28859, -1616014, 'YOU WILL NOT SUCCEED WHILE I DRAW BREATH!', 14518, 1, 0, 0, 'Malygos DEEP BREATH'),
(28859, -1616016, 'I will teach you IGNORANT children just how little you know of magic...', 14524, 1, 0, 0, 'Malygos ARCANE OVERLOAD'),
(28859, -1616020, 'Your energy will be put to good use!', 14526, 1, 0, 0, 'Malygos SLAY 2-1'),
(28859, -1616021, 'I AM THE SPELL-WEAVER! My power is INFINITE!', 14527, 1, 0, 0, 'Malygos SLAY 2-2'),
(28859, -1616022, 'Your spirit will linger here forever!', 14528, 1, 0, 0, 'Malygos SLAY 2-3'),
(28859, -1616017, 'ENOUGH! If you intend to reclaim Azeroth\'s magic, then you shall have it...', 14529, 1, 0, 0, 'Malygos PHASEEND 2'),
(28859, -1616018, 'Now your benefactors make their appearance...But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?', 14530, 1, 0, 0, 'Malygos PHASE 3 INTRO'),
(28859, -1616019, 'SUBMIT!', 14531, 1, 0, 0, 'Malygos AGGRO 3'),
(28859, -1616026, 'The powers at work here exceed anything you could possibly imagine!', 14532, 1, 0, 0, 'Malygos STATIC FIELD'),
(28859, -1616023, 'Alexstrasza! Another of your brood falls!', 14534, 1, 0, 0, 'Malygos SLAY 3-1'),
(28859, -1616024, 'Little more then gnats!', 14535, 1, 0, 0, 'Malygos SLAY 3-2'),
(28859, -1616025, 'Your red allies will share your fate...', 14536, 1, 0, 0, 'Malygos SLAY 3-3'),
(28859, -1616027, 'Still standing? Not for long...', 14537, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616028, 'Your cause is lost!', 14538, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616029, 'Your fragile mind will be shattered!', 14539, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616030, 'UNTHINKABLE! The mortals will destroy... e-everything... my sister... what have you-', 14540, 1, 0, 0, 'Malygos DEATH'),
(32295, -1616031, 'I did what I had to, brother. You gave me no alternative.', 14406, 1, 0, 0, 'Alexstrasza OUTRO 1'),
(32295, -1616032, 'And so ends the Nexus War.', 14407, 1, 0, 0, 'Alexstrasza OUTRO 2'),
(32295, -1616033, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos\' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world\'s mightiest has fallen.', 14408, 1, 0, 0, 'Alexstrasza OUTRO 3'),
(32295, -1616034, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life...goes on.', 14409, 1, 0, 0, 'Alexstrasza OUTRO 4'),
(28859, -1616035, 'A Power Spark forms from a nearby rift!', 0, 5, 0, 0, 'Malygos WHISPER_POWER_SPARK');