-- Fix Spell Explosive Trap (Hunter) daño periódico nulo
UPDATE `spell_bonus_data` SET `ap_dot_bonus` = '0.1' WHERE `entry` = 13812;