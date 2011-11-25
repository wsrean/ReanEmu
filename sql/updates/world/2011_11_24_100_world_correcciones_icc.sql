-- ICC trash mob
-- Corrigiendo arañas para que se las pueda pegar
-- Nerub'ar Broodkeeper http://old.wowhead.com/npc=36725

-- Las dos primeras del medio
UPDATE `creature_template` SET `position_z` = 35.24 WHERE `guid`=201170;
UPDATE `creature_template` SET `position_z` = 35.24 WHERE `guid`=201106;

-- Las dos siguientes, osea arriba de las gradas
UPDATE `creature_template` SET `position_z` = 44.57 WHERE `guid`=200949;
UPDATE `creature_template` SET `position_z` = 44.57 WHERE `guid`=200956;

-- Las dos siguientes, llegando a marrowgar
UPDATE `creature_template` SET `position_z` = 42.1 WHERE `guid`=200912;
UPDATE `creature_template` SET `position_z` = 42.1 WHERE `guid`=200934;