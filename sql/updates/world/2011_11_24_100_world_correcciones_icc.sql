-- ICC trash mob
-- Corrigiendo posiciones de las arañas para que se las pueda pegar
-- Nerub'ar Broodkeeper http://old.wowhead.com/npc=36725

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
UPDATE `creature_template` SET `speed_walk`=0.73, `speed_run`=0.72857 WHERE `entry` IN (37562,38602,38760,38761);
UPDATE `creature_template` SET `speed_walk`=1.06, `speed_run`=0.72857 WHERE `entry` IN (37697,38604,38758,38759);

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