-- Eilo (https://github.com/eilo)
-- Recopilacion y adecuacion de querys originales de Zwerg
-- Haciendo las Puas de Ormorok inatacables (mas bugueros)
SET @spike_h = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 27099);
UPDATE creature_template SET unit_flags = unit_flags|2 WHERE entry IN (27099,@spike_h);

-- Cambiando la posicion de los trashmob en Ormorok, estos estaban al lado de el :S
UPDATE creature SET position_x = '323.541779', position_y = '-240.492249', position_z = '-14.088820', orientation = '2.964224' WHERE guid = '126444';
UPDATE creature SET position_x = '323.179108', position_y = '-242.347137', position_z = '-14.088820', orientation = '2.948516' WHERE guid = '126606';
UPDATE creature SET position_x = '324.616272', position_y = '-234.996307', position_z = '-14.088820', orientation = '3.152720' WHERE guid = '126605';
UPDATE creature SET position_x = '317.004852', position_y = '-237.360901', position_z = '-14.088820', orientation = '3.231260' WHERE guid = '126445';

-- Varios en Telestra, inmunidad a interrumpir y asignando script a su imagen invocada
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask &~ 33554432 WHERE entry IN (26731,30510);
UPDATE creature_template SET AIName = '', ScriptName = 'boss_magus_telestra_arcane' WHERE entry = 26929;

-- Los Chaotic Rift no deberian matarse entre ellos
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (26918,30522);

-- Algunos mobs que no se les podira atacar, lo que antes se ajustaba con DeathState
UPDATE `creature_template` SET `unit_flags`=0x00008040 WHERE `entry` IN (26737,30519, 26734,30516);
UPDATE `creature` SET `unit_flags`=0,`dynamicflags`=`dynamicflags`&~32 WHERE `id` IN (26734,30516,26735,30517,26736,30518,26737,30519,26746,30520,26761,30521);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~32 WHERE `entry` IN (26734,30516,26735,30517,26736,30518,26737,30519,26746,30520,26761,30521);

-- Quitando el aura de Fingir Muerte, esto pasa cuando te les acercas fingen
UPDATE `creature_addon` SET `auras`='' WHERE `guid` BETWEEN 126481 AND 126598;

-- Cambio de posiciones de los Skyrazor que estaban en las piedras o abajo
UPDATE `creature` SET 
`position_z`=-10,
`orientation`= 
    CASE `guid` 
        WHEN 126505 THEN 2.15 
        WHEN 126506 THEN 5.47
    END
WHERE `guid` IN (126505,126506);