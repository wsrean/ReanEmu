-- Eilo (https://github.com/eilo)
-- Recopilacion y adecuacion de querys originales de Zwerg mas unas mias
-- Drakkari Guardian (no deberia estar todos muertos)
UPDATE `creature_template` SET 
	`faction_A`=1814,
	`faction_H`=1814,
	`unit_flags`=`unit_flags`&~33554432&~2,
	`dynamicflags`=`dynamicflags`&~32,
	`type_flags`=`type_flags`&~128,
	`flags_extra`=`flags_extra`&~2 
WHERE `entry` IN (26620,31339); 

-- Drakkari Bat mas flags hasta que desmonte
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2, `flags_extra`=`flags_extra`|0x2 WHERE `entry`=27490;

-- Risen Drakkari Bat Rider correccion de sus flags para atacarle
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432&~2 WHERE `entry` IN (26638,31351); 
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~32 WHERE `entry` IN (26638,31351);
UPDATE `creature` SET `unit_flags`=0,`dynamicflags`=`dynamicflags`&~32 WHERE `id` IN (26638,31351);

-- Quien esta vivo y quien se queda muerto o aparentemente muerto sin que se le pueda atacar
UPDATE `creature` SET 
	`unit_flags`= IF(`guid` IN (127589,127590,127580,127591,127579,127578,127582),0,(`unit_flags`|33554432|512|2)),
	`dynamicflags`= IF(`guid` IN (127589,127590,127580,127591,127579,127578,127582),0,(`dynamicflags`|32))
WHERE `id`=26620;

-- Mismas facciones para que no se puedan pegar entre si
UPDATE `creature_template` SET `faction_A`=1814,`faction_H`=1814 WHERE `entry` IN 
(
26639,  -- Drakkari Shaman
31345,  -- Drakkari Shaman H
26830,  -- Risen Drakkari Death Knight
31352,  -- Risen Drakkari Death Knight H
27431,  -- Drakkari Commander
31338   -- Drakkari Commander H
);
