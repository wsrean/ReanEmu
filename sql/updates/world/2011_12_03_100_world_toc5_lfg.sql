-- Fix ToC5 reward dungeon finder	
UPDATE `instance_encounters` SET `creditType`=0, `creditEntry`=35451 WHERE `entry` IN (340, 341);