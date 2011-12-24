-- Querys correcciones Foso de Saron
-- Eilo (https://github.com/eilo)

-- Querys para encontrar los valores actuales de los npcs, tanto plantilla como spawn
-- SELECT entry,difficulty_entry_1,`name`,unit_flags,dynamicflags,mechanic_immune_mask,ainame,scriptname FROM creature_template WHERE entry=36830;
-- SELECT * FROM creature WHERE id IN (36830,37638);

-- Warborn Laborer corregida flag que no hacia que ataquen normalmente y asegurando que el spawn tampoco
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry` IN (36830,37638); 
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~32 WHERE `entry` IN (36830,37638);
UPDATE `creature` SET `unit_flags`=0,`dynamicflags`=`dynamicflags`&~32 WHERE `id` IN (36830,37638);

-- Ymirjar Deathbringer lo mismo que el anterior
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry` IN (36892,37641); 
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~32 WHERE `entry` IN (36892,37641);
UPDATE `creature` SET `unit_flags`=0,`dynamicflags`=`dynamicflags`&~32 WHERE `id` IN (36892,37641);