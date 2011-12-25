-- bosses Isle of Conquest
UPDATE `creature_template` SET `unit_flags` = 0  WHERE `entry` in (34924,35403, 34922,35405);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` in (34924,35403);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` in (34922,35405);
UPDATE `creature_template` SET `ScriptName`='bosses_isle_of_conquest' WHERE `entry` IN (34924,34922);
