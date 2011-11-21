-- BOSS PUTRICIDE
-- http://www.wowhead.com/npc=37697
-- 
-- Añadido correcto inmune mask a babosas (SELECT  `entry` ,  `difficulty_entry_1` ,  `difficulty_entry_2` ,  `difficulty_entry_3` FROM  `creature_template` WHERE  `entry`IN ( 37697,37562)); 
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|536870912 WHERE `entry` IN (37697,38604,38758,38759,37562,38602,38760,38761);
