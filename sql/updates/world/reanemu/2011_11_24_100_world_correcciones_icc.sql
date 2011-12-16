-- Eilo (https://github.com/eilo)
-- ICC trash mob
-- Corrigiendo arañas para que se las pueda pegar
-- Nerubar Broodkeeper http://old.wowhead.com/npc=36725

-- Las dos primeras del medio
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201170;
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201106;

-- Las dos siguientes, osea arriba de las gradas
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200949;
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200956;

-- Las dos siguientes, llegando a marrowgar
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200912;
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200934;

-- Icc adds putricidio
-- Ajuste de velocidades para babosas de putricidio, amenorada la velocidad
-- Originalmente speed_walk=2
UPDATE `creature_template` SET `speed_walk`=0.68 WHERE `entry` IN (37697,38604,38758,38759);
-- Inmunidades de las babosas de putricidio
-- Babosas de putricidio Volatile Ooze(37697)
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|536870912 WHERE `entry` IN (37697,38604,38758,38759,37562,38602,38760,38761);

-- Icc triggers de Rotface
-- Eliminado algunos Puddle Stalker(37013) que hacen que salga en el aire los charcos
DELETE FROM `creature` WHERE `guid`=201602;
DELETE FROM `creature` WHERE `guid`=201332;
DELETE FROM `creature` WHERE `guid`=201651;
DELETE FROM `creature` WHERE `guid`=201494;
DELETE FROM `creature` WHERE `guid`=201600;
DELETE FROM `creature` WHERE `guid`=201648;
DELETE FROM `creature` WHERE `guid`=201441;
DELETE FROM `creature` WHERE `guid`=200922;

-- Icc adds Lich King
-- Valkyrs de lich king(36609)
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|4|8|16|32|64|128|256|512|4096|8192|65536|131072|524288|1048576|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (36609,39120,39121,39122);
