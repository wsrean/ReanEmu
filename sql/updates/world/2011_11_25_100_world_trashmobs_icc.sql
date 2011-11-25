-- Trashmobs icc 
-- En desarrollo ReanEmu https://github.com/ComunidadRean/ReanEmu
-- Datos base por overy, kayserzero y wowhead.com
-- Final por Eilo http://twitter.com/eilo2518/

-- Trash inicial Martillo de Luz http://www.youtube.com/watch?v=zcSKxoA8eC8
-- Trash de Caminasueños http://www.youtube.com/watch?v=dYXY7QsAI98
-- Trash de Consejo de Sangre http://www.youtube.com/watch?v=-y1jiiaUfC8

/*-----Trash de Martillo de la Luz-----*/
-- Aqui se les sube el daño tambien para que no puedan farmear en solo
UPDATE `creature_template` SET `ScriptName` = 'npc_ancient_skeletal_soldier_icc' WHERE `entry` =37012;
UPDATE `creature_template` SET `dmg_multiplier` = '10' WHERE `entry` =37012;
UPDATE `creature_template` SET `ScriptName` = 'npc_ancient_skeletal_soldier_icc' WHERE `entry` =38059;
UPDATE `creature_template` SET `dmg_multiplier` = '17.5' WHERE `entry` =38059;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathbound_ward_icc' WHERE `entry` =37007;
UPDATE `creature_template` SET `mindmg` = '1100',`maxdmg` = '1300' WHERE `entry` =37007;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathbound_ward_icc' WHERE `entry` =38031;
UPDATE `creature_template` SET `mindmg` = '1100',`maxdmg` = '1200' WHERE `entry` =38031;
UPDATE `creature_template` SET `ScriptName` = 'npc_servant_of_the_throne_icc' WHERE `entry` =36724;
UPDATE `creature_template` SET `dmg_multiplier` = '10.5' WHERE `entry` =36724;
UPDATE `creature_template` SET `ScriptName` = 'npc_servant_of_the_throne_icc' WHERE `entry` =38057;
UPDATE `creature_template` SET `dmg_multiplier` = '19' WHERE `entry` =38057;
UPDATE `creature_template` SET `ScriptName` = 'npc_the_damned_icc' WHERE `entry` =37011;
UPDATE `creature_template` SET `dmg_multiplier` = '10' WHERE `entry` =37011;
UPDATE `creature_template` SET `ScriptName` = 'npc_the_damned_icc' WHERE `entry` =38061;
UPDATE `creature_template` SET `dmg_multiplier` = '16' WHERE `entry` =38061;
UPDATE `creature_template` SET `ScriptName` = 'npc_nerubar_broodkeeper_icc' WHERE `entry` =36725;
UPDATE `creature_template` SET `dmg_multiplier` = '11.2' WHERE `entry` =36725;
UPDATE `creature_template` SET `ScriptName` = 'npc_nerubar_broodkeeper_icc' WHERE `entry` =38058;
UPDATE `creature_template` SET `dmg_multiplier` = '14.7' WHERE `entry` =38058;

/*--Trash de Oratorio de los Malditos--*/
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_servant_10man_icc' WHERE `entry`=36805;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_servant_25man_icc' WHERE `entry`=38075;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_disciple_10man_icc' WHERE `entry`=36807;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_disciple_25man_icc' WHERE `entry`=38073;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_zealot_icc' WHERE `entry`=36808;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_zealot_icc' WHERE `entry`=38076;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_attendant_10man_icc' WHERE `entry`=36811;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_attendant_25man_icc' WHERE `entry`=38072;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_high_priest_icc' WHERE `entry`=36829;
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_high_priest_icc' WHERE `entry`=38074;

/*---------Trash de La Espiral---------*/
UPDATE `creature_template` SET `ScriptName` = 'npc_valkyr_herald_10man_icc' WHERE `entry`=37098;
UPDATE `creature_template` SET `ScriptName` = 'npc_valkyr_herald_25man_icc' WHERE `entry`=38418;

/*----Trash de Talleres de la Peste----*/
UPDATE `creature_template` SET `ScriptName` = 'npc_blighted_abomination_icc' WHERE `entry`=37022;
UPDATE `creature_template` SET `ScriptName` = 'npc_blighted_abomination_icc' WHERE `entry`=38108;
UPDATE `creature_template` SET `ScriptName` = 'npc_vengeful_fleshreapert_icc' WHERE `entry`=37038;
UPDATE `creature_template` SET `ScriptName` = 'npc_vengeful_fleshreapert_icc' WHERE `entry`=38063;
UPDATE `creature_template` SET `ScriptName` = 'npc_plague_scientist_icc' WHERE `entry`=37023;
UPDATE `creature_template` SET `ScriptName` = 'npc_plague_scientist_icc' WHERE `entry`=38062;
UPDATE `creature_template` SET `ScriptName` = 'npc_pustulating_horror_10man_icc' WHERE `entry`=10404;
UPDATE `creature_template` SET `ScriptName` = 'npc_pustulating_horror_25man_icc' WHERE `entry`=38110;
UPDATE `creature_template` SET `ScriptName` = 'npc_decaying_colossus_10man_icc' WHERE `entry`=36880;
UPDATE `creature_template` SET `ScriptName` = 'npc_decaying_colossus_25man_icc' WHERE `entry`=37655;

/*--------Trash de Salas Carmesi--------*/
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_archmage_10man_icc' WHERE `entry`=37664;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_archmage_25man_icc' WHERE `entry`=38099;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_blood_knight_icc' WHERE `entry`=37595;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_blood_knight_icc' WHERE `entry`=38100;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_noble_10man_icc' WHERE `entry`=37663;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_noble_25man_icc' WHERE `entry`=38480;
UPDATE `creature_template` SET `ScriptName` = 'npc_vampiric_fiend_icc' WHERE `entry`=37901;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_advisor_10man_icc' WHERE `entry`=37571;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_advisor_25man_icc' WHERE `entry`=38098;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_commander_10man_icc' WHERE `entry`=37662;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_commander_25man_icc' WHERE `entry`=38102;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_lieutenant_10man_icc' WHERE `entry`=37665;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_lieutenant_25man_icc' WHERE `entry`=38101;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_tactician_icc' WHERE `entry`=37666;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkfallen_tactician_icc' WHERE `entry`=38479;

/*---Trash de Camaras de Alaescarcha---*/
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_deathbringer_10man_icc' WHERE `entry`=38125;
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_deathbringer_25man_icc' WHERE `entry`=38130;
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_frostbinder_icc' WHERE `entry`=37127;
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_battlemaiden_icc' WHERE `entry`=38132;
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_huntress_icc' WHERE `entry`=38134;	
UPDATE `creature_template` SET `ScriptName` = 'npc_ymirjar_warlord_icc' WHERE `entry`=38133;