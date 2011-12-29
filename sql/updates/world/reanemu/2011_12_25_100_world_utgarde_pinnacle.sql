-- Eilo (https://github.com/eilo)
-- Svala correccion de sus flags para atacarle
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~254&~2 WHERE `entry` IN (29281,30809);
UPDATE `creature` SET `unit_flags`=0,`dynamicflags`=`dynamicflags`&~32 WHERE `id` IN (29281,30809);
