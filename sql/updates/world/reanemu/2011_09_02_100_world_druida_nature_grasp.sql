-- Añadido CD interno a Nature Grasp
DELETE FROM `spell_proc_event` WHERE `entry` = 16689;

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)

VALUES (16689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);