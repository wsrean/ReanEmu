-- Immunemasks uptades
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299835 WHERE `entry` IN
(34497,35350,35351,35352,  -- Fjola Lightbane (ToCR)
 34496,35347,35348,35349,  -- Eydis Darkbane (ToCR)
 37025,38064,37217,38103,  -- Stinky and Precious (ICC)
 34813,35265,35266,35267,  -- Infernal Volcano (ToCR)
 34825,35278,35279,35280); -- Nether Portal (ToCR)
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854267 WHERE `entry` IN
(34564,34566,35615,35616); -- Anubarak

-- Antipersonnel cannons Strand of the Ancients
UPDATE `creature_template` SET `mechanic_immune_mask` = 75507760, `RegenHealth` = 0 WHERE `entry` IN (27894,32795);

-- Battleground Demolishers strand of the ancients
UPDATE `creature_template` SET `mechanic_immune_mask` = 377831290, `RegenHealth` = 0 WHERE `entry` IN (28781,32796);