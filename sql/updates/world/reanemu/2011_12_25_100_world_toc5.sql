-- Eilo (https://github.com/eilo)
-- Recopilacion y adecuacion de querys originales de HyD y varios autores de scripts antiguas y raras
-- Algunas querys anadidas y ordenacion/comentarios del sql por Eilo, cabe recalcar que los cpp hubo que retocar tambien.

-- INSTANCE: TrialOfTheChampion
-- ----------------------
--    TEMPLATES HERO
-- ----------------------
-- Templates
DELETE FROM `creature_template` WHERE `entry` IN (12000, 12001, 12002, 12003, 12004, 12005, 12006, 12007, 12008, 12009, 12010, 12011, 12444, 12436);
UPDATE `creature_template` SET `difficulty_entry_1` = 36089 WHERE `entry` = 35572;
UPDATE `creature_template` SET `difficulty_entry_1` = 36085 WHERE `entry` = 35569;
UPDATE `creature_template` SET `difficulty_entry_1` = 36090 WHERE `entry` = 35571;
UPDATE `creature_template` SET `difficulty_entry_1` = 36091 WHERE `entry` = 35570;
UPDATE `creature_template` SET `difficulty_entry_1` = 36084 WHERE `entry` = 35617;
UPDATE `creature_template` SET `difficulty_entry_1` = 36088 WHERE `entry` = 34705;
UPDATE `creature_template` SET `difficulty_entry_1` = 36082 WHERE `entry` = 34702;
UPDATE `creature_template` SET `difficulty_entry_1` = 36083 WHERE `entry` = 34701;
UPDATE `creature_template` SET `difficulty_entry_1` = 36086 WHERE `entry` = 34657;
UPDATE `creature_template` SET `difficulty_entry_1` = 36087 WHERE `entry` = 34703;
UPDATE `creature_template` SET `difficulty_entry_1` = 35518 WHERE `entry` = 35119;
UPDATE `creature_template` SET `difficulty_entry_1` = 35517 WHERE `entry` = 34928;
UPDATE `creature_template` SET `difficulty_entry_1` = 35717 WHERE `entry` = 35590;
UPDATE `creature` SET `phasemask`=2 WHERE `id`=20562;

-- ----------------------
--        SPAWNS
-- ----------------------
-- Spawns
SET @SPAWN_GUID := 365000;
DELETE FROM `creature` WHERE `map` = 650;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@SPAWN_GUID+000,36558,650,1,1,0,0,726.826,661.201,412.472,4.66003,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+001,36558,650,1,1,0,0,716.665,573.495,412.475,0.977384,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+002,36558,650,1,1,0,0,705.497,583.944,412.476,0.698132,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+003,36558,650,1,1,0,0,770.486,571.552,412.475,2.05949,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+004,36558,650,1,1,0,0,717.443,660.646,412.467,4.92183,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+005,36558,650,1,1,0,0,700.531,591.927,412.475,0.523599,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+006,36558,650,1,1,0,0,790.177,589.059,412.475,2.56563,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+007,36558,650,1,1,0,0,702.165,647.267,412.475,5.68977,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+008,36558,650,1,1,0,0,773.097,660.733,412.467,4.45059,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+009,36558,650,1,1,0,0,793.052,642.851,412.474,3.63029,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+010,36558,650,1,1,0,0,778.741,576.049,412.476,2.23402,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+011,35004,650,0,1,0,0,746.675,619.318,411.091,4.79268,300,0,0,10635,0,0,0,0,0),
(@SPAWN_GUID+012,36558,650,1,1,0,0,788.016,650.788,412.475,3.80482,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+013,35644,650,1,1,0,0,704.943,651.33,412.475,5.60251,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+014,35644,650,1,1,0,0,774.898,573.736,412.475,2.14675,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+015,35644,650,1,1,0,0,699.943,643.37,412.474,5.77704,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+016,34871,650,0,1,0,0,795.968,651.859,435.421,3.6569,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+017,35644,650,1,1,0,0,793.009,592.667,412.475,2.6529,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+018,35644,650,1,1,0,0,702.967,587.649,412.475,0.610865,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+019,35644,650,1,1,0,0,768.255,661.606,412.47,4.55531,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+020,35644,650,1,1,0,0,720.569,571.285,412.475,1.06465,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+021,35644,650,1,1,0,0,787.439,584.969,412.476,2.47837,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+022,35644,650,1,1,0,0,722.363,660.745,412.468,4.83456,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+023,35644,650,1,1,0,0,790.49,646.533,412.474,3.71755,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+024,35644,650,1,1,0,0,777.564,660.3,412.467,4.34587,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+025,34990,650,0,1,0,0,807.814,618.058,435.395,3.0884,300,0,0,8367000,0,0,0,0,0),
(@SPAWN_GUID+026,35016,650,1,1,0,0,702.274,638.76,412.47,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+027,35016,650,1,1,0,0,697.285,618.253,412.476,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+028,35016,650,1,1,0,0,714.486,581.722,412.476,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+029,35016,650,1,1,0,0,703.884,596.601,412.474,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+030,35016,650,1,1,0,0,712.413,653.931,412.474,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+031,34977,650,1,1,0,0,733.809,545.215,442.075,1.41372,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+032,34977,650,1,1,0,0,730.998,552.719,438.812,1.3439,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+033,34977,650,1,1,0,0,734.411,560.158,435.501,1.37881,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+034,34977,650,1,1,0,0,726.38,557.151,436.978,1.25664,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+035,34979,650,1,1,0,0,709.576,570.106,435.504,0.942478,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+036,34979,650,1,1,0,0,712.873,563.172,436.967,1.02974,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+037,34979,650,1,1,0,0,714.34,553.708,440.223,1.11701,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+038,34979,650,1,1,0,0,700.273,559.224,442.08,0.925025,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+039,34966,650,1,1,0,0,718.917,564.078,435.504,1.11701,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+040,34966,650,1,1,0,0,721.971,548.191,442.072,1.23918,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+041,34966,650,1,1,0,0,718.405,555.92,438.803,1.15192,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+042,34966,650,1,1,0,0,725.661,560.835,435.503,1.23918,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+043,34858,650,1,1,0,0,697.241,583.858,435.504,0.628319,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+044,34858,650,1,1,0,0,689.635,582.823,438.819,0.558505,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+045,34858,650,1,1,0,0,696.26,577.507,436.966,0.698132,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+046,34858,650,1,1,0,0,682.856,586.2,440.243,0.471239,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+047,34858,650,1,1,0,0,688.012,573.852,442.074,0.663225,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+048,34860,650,1,1,0,0,699.005,654.894,435.504,5.53269,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+049,34860,650,1,1,0,0,693.635,654.892,436.963,5.60251,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+050,34860,650,1,1,0,0,690.486,661.661,440.209,5.55015,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+051,34860,650,1,1,0,0,684.069,656.681,442.074,5.68977,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+052,34860,650,1,1,0,0,686.866,650.837,438.779,5.75959,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+053,34861,650,1,1,0,0,677.17,640.74,442.069,6.00393,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+054,34861,650,1,1,0,0,689.436,639.259,435.503,5.95157,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+055,34861,650,1,1,0,0,679.981,648.878,440.198,5.86431,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+056,34861,650,1,1,0,0,686.392,643.351,436.973,5.88176,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+057,34861,650,1,1,0,0,692.406,644.87,435.504,5.8294,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+058,34970,650,1,1,0,0,767.512,546.841,441.991,1.66197,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+059,34970,650,1,1,0,0,761.217,549.142,440.246,1.58825,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+060,34970,650,1,1,0,0,764.08,553.434,438.828,1.8675,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+061,34857,650,1,1,0,0,675.281,589.988,442.081,0.383972,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+062,34857,650,1,1,0,0,675.115,597.719,442.073,0.279253,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+064,34857,650,1,1,0,0,692.854,590.632,435.504,0.471239,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+065,34857,650,1,1,0,0,684.964,591.017,438.848,0.418879,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+066,34975,650,1,1,0,0,779.997,550.694,442.077,2.05949,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+067,34975,650,1,1,0,0,773.502,555.516,438.825,1.95477,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+068,34859,650,1,1,0,0,687.965,629.611,435.498,6.19592,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+069,34859,650,1,1,0,0,688.731,604.689,435.501,0.20944,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+070,34859,650,1,1,0,0,677.986,634.102,440.245,5.78437,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+071,34859,650,1,1,0,0,680.599,603.986,438.794,0.191986,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+072,34859,650,1,1,0,0,685.113,600.431,436.97,0.279253,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+073,34859,650,1,1,0,0,685.118,634.405,436.976,6.0912,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+074,34868,650,1,1,0,0,806.488,574.615,442.076,2.49582,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+075,34868,650,1,1,0,0,799.194,575.25,438.801,2.37365,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+076,34974,650,1,1,0,0,790.608,559.269,442.073,2.40855,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+077,34869,650,1,1,0,0,813.502,644.877,440.254,3.49066,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+078,34869,650,1,1,0,0,818.512,640.599,442.078,3.38594,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+079,34869,650,1,1,0,0,813.3,650.717,442.073,3.49066,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+080,34856,650,1,1,0,0,813.635,587.592,442.069,2.70526,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+081,34856,650,1,1,0,0,808.157,594.937,436.87,2.8495,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+082,34856,650,1,1,0,0,806.527,586.584,438.727,2.83379,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+083,34870,650,1,1,0,0,818.163,607.13,440.209,2.94961,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+084,34870,650,1,1,0,0,818.134,626.964,440.218,3.28122,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+085,34871,650,1,1,0,0,810.608,659.83,442.086,3.68265,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+086,34871,650,1,1,0,0,800.194,660.729,438.769,3.82227,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+087,34871,650,1,1,0,0,802.709,650.685,436.877,3.64668,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+088,34905,650,1,1,0,0,696.359,653.587,435.504,5.53252,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+089,34903,650,1,1,0,0,697.116,583.052,435.504,0.628319,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+090,34902,650,1,1,0,0,689.196,597,435.503,0.349066,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+091,34883,650,1,1,0,0,687.83,617.649,435.493,1.58825,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+092,34901,650,1,1,0,0,687.16,618.132,435.489,0,86400,0,0,1,0,0,0,0,0),
(@SPAWN_GUID+093,34904,650,1,1,0,0,690.596,642,435.504,5.88176,86400,0,0,1,0,0,0,0,0),
-- (@SPAWN_GUID+094,31144,650,0,1,0,0,796.773,604.543,412.385,2.58299,300,0,0,2,0,0,0,0,0),
(@SPAWN_GUID+095,34996,650,0,1,0,546,746.725,556.492,435.396,1.59928,300,0,0,13945000,4258,0,0,0,0),
(@SPAWN_GUID+096,35491,650,0,1,0,0,799.806,639.236,475.88,2.18738,300,0,0,189000,0,2,0,0,0),
(@SPAWN_GUID+097,34992,650,0,1,0,0,809.178,624.409,435.395,3.0774,300,0,0,4505029,7981,0,0,0,0),
(@SPAWN_GUID+098,34994,650,0,1,0,0,685.637,622.2,435.395,0.074604,300,0,0,7925544,4258,0,0,0,0),
(@SPAWN_GUID+099,34995,650,0,1,0,0,686.255,615.367,435.399,0.074604,300,0,0,1394500,0,0,0,0,0),
(@SPAWN_GUID+100,34871,650,0,1,0,0,808.958,652.464,440.151,3.6027,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+101,34871,650,0,1,0,0,802.134,656.474,438.717,3.78334,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+102,34869,650,0,1,0,0,811.348,640.844,438.7,3.3121,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+103,34869,650,0,1,0,0,807.653,636.377,436.902,3.3121,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+104,34869,650,0,1,0,0,802.876,642.818,435.421,3.3121,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+105,34869,650,0,1,0,0,809.194,646.673,438.7,3.70244,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+106,34870,650,0,1,0,0,813.093,631.476,438.704,3.17465,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+107,34870,650,0,1,0,0,808.383,631.705,436.9,3.17465,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+108,34870,650,0,1,0,0,815.127,636.5,440.169,3.27833,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+109,34870,650,0,1,0,0,818.937,632.312,441.991,3.37257,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+110,34870,650,0,1,0,0,809.167,602.84,436.874,2.78274,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+111,34870,650,0,1,0,0,812.745,602.889,438.704,2.81651,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+112,34870,650,0,1,0,0,819.104,598.436,441.996,2.92254,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+113,34856,650,0,1,0,0,814.28,596.223,440.175,2.90212,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+114,34868,650,0,1,0,0,799.128,581.376,436.896,2.61309,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+115,34868,650,0,1,0,0,806.628,580.52,440.148,2.61309,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+116,34868,650,0,1,0,0,793.731,579.421,435.421,2.61309,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+117,34868,650,0,1,0,0,799.549,587.703,435.421,2.48743,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+118,34970,650,0,1,0,0,760.024,559.473,435.418,1.61249,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+119,34970,650,0,1,0,0,751.913,544.129,441.99,1.74051,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+120,34970,650,0,1,0,0,766.899,557.863,436.915,1.66197,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+121,34975,650,0,1,0,0,774.213,563.449,435.421,2.09472,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+122,34975,650,0,1,0,0,781.049,563.972,436.893,2.04367,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+123,34975,650,0,1,0,0,781.712,556.65,440.159,2.12535,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+124,34974,650,0,1,0,0,781.8,568.648,435.421,2.20939,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+125,34974,650,0,1,0,0,788.423,568.361,436.881,2.20389,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+126,34974,650,0,1,0,0,787.929,563.884,438.695,2.18504,300,0,0,42,0,0,0,0,0),
(@SPAWN_GUID+127,34857,650,1,1,0,0,689.623,598.045,435.503,0.331613,86400,0,0,1,0,0,0,0,0);
UPDATE `creature` SET `spawnMask` = 3, `spawntimesecs` = 86400 WHERE `map` = 650;

-- ----------------------
--       MONTURAS
-- ----------------------
-- Vehicleid para Warhorse, esto no trae TDB11.44
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry`=35644;
-- Spells de monturas
UPDATE `creature_template` SET `spell1` = 68505, `spell2` = 62575, `spell3` = 68282, `spell4` = 66482 WHERE `entry` IN (35644, 36558);
-- Faccion de monturas
UPDATE `creature_template` SET `faction_A` = 84, `faction_H` = 16 WHERE `entry` = 35644;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 83 WHERE `entry` = 36558;
-- Cero addons, las spells de escudo se aplican de otra forma
DELETE FROM `creature_template_addon` WHERE `entry` IN (35644, 36558);

-- ----------------------
--     GAMEOBJECTS
-- ----------------------
-- Adios puerta anterior
DELETE FROM `gameobject` WHERE `guid` = 150081;

-- ----------------------
--     MONTURAS NPCS
-- ----------------------
-- Monturas del evento Grand Faction Champions
UPDATE `creature_template` SET `type_flags` = 2048, `ScriptName` = 'generic_vehicleAI_toc5' WHERE `entry` IN (35328, 35329, 35331, 35332, 35330, 35314, 35325, 35327, 35323, 35326);
UPDATE `creature_template` SET `type_flags` = 2048,`mechanic_immune_mask` = 617299835 WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);
UPDATE `creature_template_addon` SET `auras` = LEFT(`auras`, 11) WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);
-- Monturas Hero
CREATE TABLE `entry_temp` (`id` INT);
INSERT INTO `entry_temp` SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);
UPDATE `creature_template` SET `type_flags` = 2048, `mechanic_immune_mask` = 617299835  WHERE `entry` IN (SELECT id FROM`entry_temp`);
UPDATE `creature_template_addon` SET `auras` = LEFT(`auras`, 11) WHERE `entry` IN (SELECT id FROM`entry_temp`);
DROP TABLE `entry_temp`;

-- ----------------------
--   EL CABALLERO NEGRO
-- ----------------------
-- Flags y configuracion de la montura
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` IN (35451, 35490);
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35491;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(35491,35451,0,0,'Trial of the Champion - Black Knight on his gryphon',6,30000);

-- -----------------------
-- MONTURA CABALLERO NEGRO
-- -----------------------
-- Black Knight Gryphon, faccion, unitflags y vehicleid basicamente
UPDATE `creature_template` SET
`faction_A`=35,
`faction_H`=35,
`mindmg`=0,
`maxdmg`=0,
`attackpower`=0,
`dmg_multiplier`=0,
`baseattacktime`=0,
`unit_flags`=33554432,
`dynamicflags`=0,
`minrangedmg`=0,
`maxrangedmg`=0,
`rangedattackpower`=0,
`VehicleId`=486 WHERE `entry`=35491;
-- Asignacion de nombre de script
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_black_knight_skeletal_gryphon' WHERE `entry` = 35491;-- S
-- Monta con spell
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35491;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(35491,46598,0,0,0,0,0,0,0);
-- Especificando que vuela y que tiene waypoints para efecto de vuelo
UPDATE `creature_template` SET `movementtype` = 2,`inhabittype` = 4 WHERE `entry` = 35491;
UPDATE `creature` SET `movementtype` = 2 WHERE `id` = 35491;
-- Waypoints (esto hay que retocar por si no queda bien)
DELETE FROM `script_waypoint` WHERE `entry` = 35491;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(35491,1,781.513,657.99,466.821,0,''),
(35491,2,759.005,665.142,462.541,0,''),
(35491,3,732.937,657.164,452.678,0,''),
(35491,4,717.491,646.009,440.137,0,''),
(35491,5,707.57,628.978,431.129,0,''),
(35491,6,705.164,603.628,422.957,0,''),
(35491,7,716.351,588.49,420.802,0,''),
(35491,8,741.703,580.168,420.523,0,''),
(35491,9,761.634,586.383,422.206,0,''),
(35491,10,775.983,601.992,423.606,0,''),
(35491,11,769.051,624.686,420.035,0,''),
(35491,12,756.582,631.692,412.53,0,''),
(35491,13,744.841,634.505,411.575,2000,''),
(35491,14,759.005,665.142,462.541,0,''),
(35491,15,747.127,813.51,460.707,0,'');

-- ----------------------
--   SOLDADOS ARGENTA
-- ----------------------
-- Configuraciones
-- -- Argent Lightwielder
UPDATE `creature_template` SET `modelid3` = 0 WHERE `entry` = 35309;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 420, `maxdmg` = 630, `attackpower` = 158, `mechanic_immune_mask` = 650854267 WHERE `entry` = 35310;
-- -- Argent Monk
UPDATE `creature_template` SET `modelid3` = 0 WHERE `entry` = 35305;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 420, `maxdmg` = 650, `attackpower` = 158, `mechanic_immune_mask` = 650854267 WHERE `entry` = 35306;
-- -- Argent Priestess
UPDATE `creature_template` SET `modelid3` = 0 WHERE `entry` = 35307;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 420, `maxdmg` = 630, `attackpower` = 158, `mechanic_immune_mask` = 650854267 WHERE `entry` = 35308;
-- Script Names de los Soldados Argenta
UPDATE creature_template SET ScriptName = 'npc_argent_monk' WHERE entry = 35305;
UPDATE creature_template SET ScriptName = 'npc_argent_lightwielder' WHERE entry = 35309;
UPDATE creature_template SET ScriptName = 'npc_argent_priest' WHERE entry = 35307;
-- Inmunidades de los Soldados Argenta
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854267' WHERE `entry` IN (35305, 35309, 35307, 12488, 12439, 12448);
-- Ajustes para los Soldados Argenta HERO
UPDATE `creature_template` SET `Health_mod` = 29.4806 WHERE `entry`IN  (35306, 35308, 35310);
UPDATE `creature_template` SET `Health_mod` = 51.8533 WHERE `entry` = 35490;
UPDATE `creature_template` SET `Health_mod` = 16.4286 WHERE `entry` = 35451;
-- Addons para los Soldados Argenta y varias auras
DELETE FROM `creature_template_addon` WHERE `entry` IN (35305, 35306, 35307, 35308, 35309, 35310);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(35305, 0, 0, 0, 1, 27, '63501'),
(35306, 0, 0, 0, 1, 27, '63501'),
(35307, 0, 0, 0, 1, 375, '63501'),
(35308, 0, 0, 0, 1, 375, '63501'),
(35309, 0, 0, 0, 1, 375, '63501'),
(35310, 0, 0, 0, 1, 375, '63501');
DELETE FROM `creature_template_addon` WHERE (`entry` IN (35614, 35311));
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(35614, 0, 0, 0, 0, 0, 67782), -- Desecration Stalker (Periodic Desecration)
(35311, 0, 0, 0, 0, 0, 67196); -- Fountain of Light (Periodic Light rain)
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 35614; -- Set Desecration Stalker as invisible passive trigger
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35311; -- Set Light Fountain as passive
DELETE FROM `smart_scripts` WHERE (`entryorguid`=35311 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35311, 0, 0, 0, 25, 0, 100, 7, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fountain of Light - Set passive');

-- ----------------------
--       MEMORIAS
-- ----------------------
-- Hero
UPDATE `creature_template` SET `mindmg` = 330, `maxdmg` = 495, `attackpower` = 124, `baseattacktime` = 2000, `mechanic_immune_mask` = 617297499 WHERE `name` LIKE 'Memory of%(1)';
-- Normal
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `rank`=1, `minlevel`=82, `maxlevel`=82, `exp`=2 WHERE `name` LIKE 'Memory of %';

-- ----------------------
--    RESURRECCIONES
-- ----------------------
-- Aqui estan Arelas y Jaeren en el caballero negro
UPDATE `creature_template` SET `mindmg` = 420, `maxdmg` = 630, `attackpower` = 158 WHERE `entry` = 35717;
UPDATE `creature_template` SET `difficulty_entry_1` = 35546 WHERE `entry` = 35545;
UPDATE `creature_template` SET `difficulty_entry_1` = 35568 WHERE `entry` = 35564;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 420, `maxdmg` = 630, `attackpower` = 158 WHERE `entry` IN (35568, 35546);
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `baseattacktime` = 2000, `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (35564, 35568, 35545, 35546, 35717, 35590);

-- ----------------------
--     EQUIPAMIENTOS
-- ----------------------
-- Memorias equip templates
UPDATE `creature_template` SET `equipment_id` = 22 WHERE `entry` IN  (34942, 35531);
UPDATE `creature_template` SET `equipment_id` = 1431 WHERE `entry` IN (35028, 35541);
UPDATE `creature_template` SET `equipment_id` = 1178 WHERE `entry` IN (35030, 35530);
UPDATE `creature_template` SET `equipment_id` = 1330 WHERE `entry` IN (35031, 35536);
UPDATE `creature_template` SET `equipment_id` = 1808 WHERE `entry` IN (35036, 35543);
UPDATE `creature_template` SET `equipment_id` = 1496 WHERE `entry` IN (35037, 35535);
UPDATE `creature_template` SET `equipment_id` = 2216 WHERE `entry` IN (35042, 35533);
UPDATE `creature_template` SET `equipment_id` = 714 WHERE `entry` IN (35045, 35534);
UPDATE `creature_template` SET `equipment_id` = 271 WHERE `entry` IN (35049, 35529);
-- Eadric
UPDATE `creature_template` SET `equipment_id` = 833 WHERE `entry` IN (35119, 35518);
-- Champions equip templates
UPDATE `creature_template` SET `equipment_id` = 1892 WHERE `entry` IN (35572, 36089);
UPDATE `creature_template` SET `equipment_id` = 1895 WHERE `entry` IN (35569, 36085);
UPDATE `creature_template` SET `equipment_id` = 1899 WHERE `entry` IN (35571, 36090);
UPDATE `creature_template` SET `equipment_id` = 1893 WHERE `entry` IN (35570, 36091);
UPDATE `creature_template` SET `equipment_id` = 1894 WHERE `entry` IN (35617, 36084);

UPDATE `creature_template` SET `equipment_id` = 1966 WHERE `entry` IN (34705, 36088);
UPDATE `creature_template` SET `equipment_id` = 1993 WHERE `entry` IN (36082, 34702);
UPDATE `creature_template` SET `equipment_id` = 1970 WHERE `entry` IN (36083, 34701);
UPDATE `creature_template` SET `equipment_id` = 1969 WHERE `entry` IN (36086, 34657);
UPDATE `creature_template` SET `equipment_id` = 1967 WHERE `entry` IN (34703, 36087);

-- ----------------------
--     INMUNIDADES
-- ----------------------
-- Los eadric, la chica y el caballero negro
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299835 WHERE `entry` IN (34928,35517,35119,35518,35451,35490);

-- ----------------------
--       SPELLS
-- ----------------------
DELETE FROM `spell_script_names` WHERE spell_id IN (66515, 66867, 67534, 67830, 66482);
INSERT INTO `spell_script_names` VALUES
(66867, 'spell_eadric_hammer_of_righteous'), -- Hammer can be picked by target if isn't under HoJ effect
(66515, 'spell_paletress_shield'),           -- Reflect 25% of abosorbed damage
(67534, 'spell_toc5_hex_mending'),           -- Hex of mending spell effect
(67830, 'spell_toc5_ride_mount'),            -- Allow ride only if a Lance is equiped
(66482, 'spell_toc5_defend');                -- Add visual shields depending on stack size
-- Trigger en eadric
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 66905;
INSERT INTO `spell_linked_spell` VALUES
(66905, -66904, 0, 'Eadric Hammer of Righteous');  -- Remove the Hammer of Righteous spell after using it
-- Condiciones en eventos en medio de la pelea
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (66905, 67705, 67715, 66798);
INSERT INTO `conditions` VALUES
(13, 0, 66905, 0, 18, 1, 35119, 0, 0, '', 'Eadric Hammer of Rigtheous'), -- Target Eadric with Hammer of Righteous
(13, 0, 66798, 0, 18, 1, 35005, 0, 0, '', 'The Black Kinght - Deaths Respite'),
(13, 0, 66798, 0, 18, 1, 35004, 0, 0, '', 'The Black Kinght - Deaths Respite'),
(13, 0, 67705, 0, 18, 2, 35005, 0, 0, '', 'The Black Kinght - Raise Arelas Brightstar'),
(13, 0, 67715, 0, 18, 2, 35004, 0, 0, '', 'The Black Kinght - Raise Arelas Brightstar');

-- ----------------------
--       TEXTOS
-- ----------------------
-- Aqui hubo que arreglar las tildes y demas
SET @TIRION       := 34996;
SET @THRALL       := 34994;
SET @GARROSH      := 34995;
SET @VARIAN       := 34990;
SET @JAINA        := 34992;

SET @EADRIC       := 35119;
SET @PALETRESS    := 34928;
SET @BLACK_KNIGHT := 35451;

SET @SCRIPT_TEXTS_ID := -1999900;

-- TEXTOS DEL PUBLICO Y VARIOS
DELETE FROM `script_texts` WHERE `entry` <= @SCRIPT_TEXTS_ID AND `entry` >= @SCRIPT_TEXTS_ID-24;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,@SCRIPT_TEXTS_ID-00, 'El publico anima a %s.',15882,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-01, 'Los humanos de Ventormenta animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-02, 'Los orcos de Orgrimmar animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-03, 'Los enanos de Forjaz animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-05, 'Los no-muertos de Entranas animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-04, 'Los elfos la noche de Darnassus animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-06, 'Los tauren de Cima del Trueno animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-07, 'Los gnomos de Gnomeregan animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-08, 'Los trol de Sen\'jin animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-10, 'Los elfos de la sangre de Lunargenta animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-11, 'Los draenei de Exodar animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-12, '%s comienza a lanzar Pesadilla Lucida!',0,3,0,0, 'Paletress - Memory warning.'),
(0,@SCRIPT_TEXTS_ID-13, '%s comienza a lanzar Martillo del Honrado sobre $N.',0,3,0,0, 'Eadric - Combat - Warning - Hammer'),
(0,@SCRIPT_TEXTS_ID-20, '$N se ha alzado hasta el rango de $Gcampeon:campeona; en nuestro torneo. Nos orgullecemos de $Gpresentarlo:presentarla; hoy.',0,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-21, '$GUn:Una; $Gpoderoso:poderosa; $Gcampeon:campeona;, $Gun:una; $Gcapacitado:capacitada; $c, $gun:una; honorable $r. Presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-22, 'Los campeones del torneo hablan muy bien de $Geste:esta; $c. Hoy presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-23, '$GUno:Una; de $glos:las; mas $gfieros:fieras; $cs en el campo de batalla, presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-24, 'Si aun no conoceis su nombre, estamos seguros de que lo hareis despues de este combate. Presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation');

-- INTROS
DELETE FROM creature_text WHERE entry IN (35004, 35005, @TIRION, @THRALL, @GARROSH , @VARIAN , @JAINA, @EADRIC, @PALETRESS, @BLACK_KNIGHT);
INSERT INTO creature_text (entry, groupid, id, TEXT, TYPE, LANGUAGE, probability, emote, duration, sound, COMMENT) VALUES
-- -- Presentacion
(35004,0,0,'Los Atracasol estan orgullosos de presentar a sus representantes en estas pruebas de combate.',14,0,100,1,0,0,'Announcer - Player Horde Champions - Intro'),
(35005,0,0,'El Pacto de Plata esta encantado de presentar a sus luchadores para este evento, Alto Senor.',14,0,100,1,0,0,'Announcer - Player Alliance Champions - Intro'),
(@TIRION,0,0,'Bienvenidos campeones. Hoy, ante los ojos de vuestros lideres y companeros os probareis como combatientes dignos.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- Horda
(@THRALL,0,0,'Luchad con fuerza, Horda! Lok\'tar Ogar!',14,0,100,1,0,0,'Thrall - Intro'),
(@GARROSH,0,0,'Por fin! Un combate digno de ser contemplado.',12,0,100,1,0,0,'Garrosh - Intro'),
(@VARIAN,0,0,'No he venido hasta aqui para ver animales despezandose entre ellos sin ningun criterio, Tirion.',12,0,100,1,0,0,'Varian - Intro'),
(@JAINA,0,0,'Son combatientes dignos, ya lo veras.',12,0,100,1,0,0,'Jaina - Intro'),
-- -- Ali
(@VARIAN,1,0,'No le veo la gracia a estos juegos, Tirion. Aun asi... Confio en que lo haran de una forma admirable.',12,0,100,1,0,0,'Thrall - Intro'),
(@JAINA,1,0,'Por supuesto que lo haran.',12,0,100,1,0,0,'Garrosh - Intro'),
(@GARROSH,1,0,'Admirable? Ja! Voy a disfrutar viendo a tus pequenos campeones fracasar, humano.',14,0,100,1,0,0,'Varian - Intro'),
(@THRALL,1,0,'Garrosh, es suficiente.',12,0,100,1,0,0,'Jaina - Intro'),
(@TIRION,1,0,'Primero os enfrentareis a tres de los Grandes Campeones del Torneo. Estos feroces contendientes han derrotado a todos los demas hasta alcanzar la maxima habilidad en la justa.',14,0,100,1,0,0,'Tirion - Intro'),

-- CAMPEONES
-- -- Horda
(35004,1,0,'Aqui llega el pequeno pero mortal Ambrose Chisparrayo, Gran Campeon de Gnomeregan.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Mage'),
(35004,2,0,'Colosos, el enorme Gran Campeon de El Exodar, esta saliendo por la puerta.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Shaman'),
(35004,3,0,'Esta entrando en la arena la Gran Campeona de Darnassus, la habil centinela Jaelyne Unicanto.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Hunter'),
(35004,4,0,'Fuerte y orgulloso, aclamad al mariscal Jacob Alerius, el Gran Campeon de Ventormenta!',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Warrior'),
(35004,5,0,'Hoy el poder de los enanos esta representado por la Gran Campeona de Forjaz, Lana Martillotenaz.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Rouge'),
-- -- Ali
(35005,1,0,'Saliendo por la puerta Eressea Cantoalba, habil maga y Gran Campeona de Lunargenta!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Mage'),
(35005,2,0,'En lo alto de su kodo, aqui esta el venerable Runok Ferocrin, Gran Campeon de Cima del Trueno!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Shaman'),
(35005,3,0,'Entrando en la arena el enjuto pero peligroso Zul\'tore, Campeon de los Sen\'jin!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Hunter'),
(35005,4,0,'Presentamos al Gran Campeon de Orgrimmar, Mokra el Trituracraneos!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Warrior'),
(35005,5,0,'Representando la tenacidad de los Renegados, aqui esta el Gran Campeon de Entranas, Mortacechador Visceri!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Rouge'),

-- ARGENTAS
(@TIRION,2,0,'Buen combate! Vuestro proximo reto viene de los mismisimos cargos de la Cruzada. Sereis puestos a prueba contra sus considerables habilidades.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- Eadric
(35004,11,0,'Entrando en la arena, tenemos a un paladin que no es un extrano para los campos de batalla, ni los Campos del Torneo. El gran campeon de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(35005,11,0,'Entrando en la arena, tenemos a un paladin que no es un extrano para los campos de batalla, ni los Campos del Torneo. El gran campeon de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(@EADRIC,10,0,'Aceptais el reto? No hay vuelta atras!',12,0,100,1,0,16134,'Eadric - Intro'),
-- -- Paletress
(35004,12,0,'La siguiente combatiente no tiene rival alguno en su pasion al apoyar a la Luz. Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(35005,12,0,'La siguiente combatiente no tiene rival alguno en su pasion al apoyar a la Luz. Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(@PALETRESS,10,0,'Gracias buen heraldo. Tus palabras son muy amables.',12,0,100,1,0,16245,'Paletress - Intro'),
(@PALETRESS,11,0,'Que la luz me de fuerzas para ser un reto digno.',12,0,100,1,0,16246,'Paletress - Intro'),
-- -- Tirion
(@TIRION,3,0,'Podeis comenzar!',14,0,100,1,0,0,'Tirion - Intro'),

-- CABALLERO NEGRO
(@TIRION,4,0,'Bien hecho. Habeis probado vuestra valia hoy...',14,0,100,1,0,0,'Tirion - Intro'),
(35004,13,0,'Que es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(35005,13,0,'Que es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(@BLACK_KNIGHT,10,0,'Has estropeado mi gran entrada, rata.',12,0,100,1,0,16256,'Black Knight - Intro'),
(@TIRION,5,0,'Que significa esto?',14,0,100,1,0,0,'Tirion - Intro'),
(@BLACK_KNIGHT,11,0,'Realmente pensabas que derrotarias a un agente del Rey Exanime en los campos de tu patetico torneo?',12,0,100,1,0,16257,'Black Knight - Intro'),
(@BLACK_KNIGHT,12,0,'He venido a terminar mi cometido.',12,0,100,1,0,16258,'Black Knight - Intro'),
(@GARROSH,10,0,'Hacedlo picadillo!',14,0,100,1,0,0,'Garrosh - Black Knight - Intro'),
(@VARIAN,10,0,'No os quedeis ahi mirando; matadlo!',14,0,100,1,0,0,'Varian - Black Knight - Intro'),

-- TEXTOS EN COMBATES
-- -- Eadric
(@EADRIC,1,0,'Preparaos!',14,0,100,0,0,16135,'Eadric - Combat - Aggro'),
(@EADRIC,2,0,'Martillo del honrado!',14,0,100,0,0,16136,'Eadric - Combat - Hammer'),
(@EADRIC,3,0,'Tu! Tienes que practicar mas!',14,0,100,0,0,16137,'Eadric - Combat - Slay 1'),
(@EADRIC,3,1,'No! No! Y otra vez no! No es suficiente!',14,0,100,0,0,16138,'Eadric - Combat - Slay 2'),
(@EADRIC,4,0,'Me rindo! Lo admito. Un trabajo excelente. Puedo escaparme ya?',14,0,100,0,0,16139,'Eadric - Combat - Death'),
(@EADRIC,5,0,'%s comienza a irradiar luz. Cubrios los ojos!',41,0,100,0,0,0,'Eadric - Combat - Warning - Radiance'),
-- -- Paletress
(@PALETRESS,1,0,'Bien entonces. Comencemos.',14,0,100,0,0,16247,'Paletress - Combat - Aggro'),
(@PALETRESS,2,0,'Aprovecha este tiempo para pensar en tus hazanas.',14,0,100,0,0,16248,'Paletress - Combat - Summon Memory'),
(@PALETRESS,3,0,'Descansa.',14,0,100,0,0,16250,'Paletress - Combat - Slay 1'),
(@PALETRESS,3,1,'Ve en paz.',14,0,100,0,0,16251,'Paletress - Combat - Slay 2'),
(@PALETRESS,4,0,'Un trabajo excelente!',14,0,100,0,0,16252,'Paletress - Combat - Death'),
(@PALETRESS,5,0,'Incluso el recuerdo mas oscuro se desvanece al afrontarlo.',14,0,100,0,0,16249,'Paletress - Combat - Memory dies'),
-- -- Black Knight
(@BLACK_KNIGHT,1,0,'Esta farsa acaba aqui!',14,0,100,0,0,16259,'Black Knight - Combat - Aggro'),
(@BLACK_KNIGHT,2,0,'Patetico.',14,0,100,0,0,16260,'Black Knight - Combat - Slay 1'),
(@BLACK_KNIGHT,2,1,'Que desperdicio!',14,0,100,0,0,16261,'Black Knight - Combat - Slay 2'),
(@BLACK_KNIGHT,3,0,'Me estorbaba esa carne putrefacta!',14,0,100,0,0,16262,'Black Knight - Combat - Skeleton Res'),
(@BLACK_KNIGHT,4,0,'No necesito huesos para vencerte.',14,0,100,0,0,16263,'Black Knight - Combat - Ghost Res'),
(@BLACK_KNIGHT,5,0,'No! No debo fallar... otra vez...',14,0,100,0,0,16264,'Black Knight - Combat - Death');

-- ----------------------
--        LOGROS
-- ----------------------
-- Achievements
DELETE FROM achievement_criteria_data WHERE criteria_id IN (11863, 11420, 12439, 11858);
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 12298 AND 12306;
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 12310 AND 12324;
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 11904 AND 11927;
INSERT INTO `achievement_criteria_data` VALUES
-- Champion achievements (Normal)
(11420, 18, 0, 0, ''),
(12298, 18, 0, 0, ''),
(12299, 18, 0, 0, ''),
(12300, 18, 0, 0, ''),
(12301, 18, 0, 0, ''),
(12302, 18, 0, 0, ''),
(12303, 18, 0, 0, ''),
(12304, 18, 0, 0, ''),
(12305, 18, 0, 0, ''),
(12306, 18, 0, 0, ''),
-- Champion achievements (Hero)
(12310, 18, 0, 0, ''),
(12311, 18, 0, 0, ''),
(12312, 18, 0, 0, ''),
(12313, 18, 0, 0, ''),
(12314, 18, 0, 0, ''),
(12318, 18, 0, 0, ''),
(12319, 18, 0, 0, ''),
(12320, 18, 0, 0, ''),
(12321, 18, 0, 0, ''),
(12322, 18, 0, 0, ''),
-- Memories achievment
(11863, 18, 0, 0, ''),
(11904, 18, 0, 0, ''),
(11905, 18, 0, 0, ''),
(11906, 18, 0, 0, ''),
(11907, 18, 0, 0, ''),
(11908, 18, 0, 0, ''),
(11909, 18, 0, 0, ''),
(11910, 18, 0, 0, ''),
(11911, 18, 0, 0, ''),
(11912, 18, 0, 0, ''),
(11913, 18, 0, 0, ''),
(11914, 18, 0, 0, ''),
(11915, 18, 0, 0, ''),
(11916, 18, 0, 0, ''),
(11917, 18, 0, 0, ''),
(11918, 18, 0, 0, ''),
(11919, 18, 0, 0, ''),
(11920, 18, 0, 0, ''),
(11921, 18, 0, 0, ''),
(11922, 18, 0, 0, ''),
(11923, 18, 0, 0, ''),
(11924, 18, 0, 0, ''),
(11925, 18, 0, 0, ''),
(11926, 18, 0, 0, ''),
(11927, 18, 0, 0, ''),
-- Champion achievements (Hero)
(12310, 12, 1, 0, ''),
(12311, 12, 1, 0, ''),
(12312, 12, 1, 0, ''),
(12313, 12, 1, 0, ''),
(12314, 12, 1, 0, ''),
(12315, 12, 1, 0, ''),
(12316, 12, 1, 0, ''),
(12317, 12, 1, 0, ''),
(12318, 12, 1, 0, ''),
(12319, 12, 1, 0, ''),
(12320, 12, 1, 0, ''),
(12321, 12, 1, 0, ''),
(12322, 12, 1, 0, ''),
(12323, 12, 1, 0, ''),
(12324, 12, 1, 0, ''),
(12439, 12, 1, 0, ''),
-- Faceroller achievement
(11858, 12, 1, 0, ''),
-- Memories achievement
(11863, 12, 1, 0, ''),
(11904, 12, 1, 0, ''),
(11905, 12, 1, 0, ''),
(11906, 12, 1, 0, ''),
(11907, 12, 1, 0, ''),
(11908, 12, 1, 0, ''),
(11909, 12, 1, 0, ''),
(11910, 12, 1, 0, ''),
(11911, 12, 1, 0, ''),
(11912, 12, 1, 0, ''),
(11913, 12, 1, 0, ''),
(11914, 12, 1, 0, ''),
(11915, 12, 1, 0, ''),
(11916, 12, 1, 0, ''),
(11917, 12, 1, 0, ''),
(11918, 12, 1, 0, ''),
(11919, 12, 1, 0, ''),
(11920, 12, 1, 0, ''),
(11921, 12, 1, 0, ''),
(11922, 12, 1, 0, ''),
(11923, 12, 1, 0, ''),
(11924, 12, 1, 0, ''),
(11925, 12, 1, 0, ''),
(11926, 12, 1, 0, ''),
(11927, 12, 1, 0, '');

-- ----------------------
--       AJUSTES
-- ----------------------
-- Basicamente dano y armor
-- Tial of the Champion (Normal)
UPDATE `creature_template`
    SET `dmg_multiplier` = CASE `entry`
        -- Faction Grand Champions
        WHEN 35572 THEN 11.2 -- Grand Champion Warrior
        WHEN 34705 THEN 11.2
        WHEN 35569 THEN 10.2 -- Grand Champion Mage
        WHEN 34702 THEN 10.2
        WHEN 34701 THEN 10.2 -- Grand Champion Shaman
        WHEN 35571 THEN 10.2
        WHEN 35570 THEN 10.2 -- Grand Champion Hunter
        WHEN 34657 THEN 10.2
        WHEN 35617 THEN 10.2 -- Grand Champion Rouge
        WHEN 34703 THEN 10.2
        -- Argent Challenge
        WHEN 35305 THEN 8    -- Argent Monk
        WHEN 35307 THEN 5.5  -- Argent Priestess
        WHEN 35309 THEN 8.4  -- Argent Lightwielder
        WHEN 35119 THEN 14.5 -- Eadric the Pure
        WHEN 34928 THEN 14.5 -- Argent Confessor Paletress
        -- Black Knight Encounter
        WHEN 35564 THEN 1.4  -- Risen Arelas Brightstar
        WHEN 35545 THEN 1.4  -- Risen Jaeren Sunsworn
        WHEN 35590 THEN 1.5  -- Risen Champion
        WHEN 35451 THEN 11.8 -- Black Knight
    END,
    `Armor_mod` = CASE `entry`
        -- Faction Grand Champions
        WHEN 35572 THEN 1    -- Grand Champion Warrior
        WHEN 34705 THEN 1
        WHEN 35569 THEN 1    -- Grand Champion Mage
        WHEN 34702 THEN 1
        WHEN 34701 THEN 1    -- Grand Champion Shaman
        WHEN 35571 THEN 1
        WHEN 35570 THEN 1    -- Grand Champion Hunter
        WHEN 34657 THEN 1
        WHEN 35617 THEN 1    -- Grand Champion Rouge
        WHEN 34703 THEN 1
        -- Argent Challenge
        WHEN 35305 THEN 1    -- Argent Monk
        WHEN 35307 THEN 1    -- Argent Priestess
        WHEN 35309 THEN 1    -- Argent Lightwielder
        WHEN 35119 THEN 1    -- Eadric the Pure
        WHEN 34928 THEN 1    -- Argent Confessor Paletress
        -- Black Knight Encounter
        WHEN 35564 THEN 1    -- Risen Arelas Brightstar
        WHEN 35545 THEN 1    -- Risen Jaeren Sunsworn
        WHEN 35590 THEN 1    -- Risen Champion
        WHEN 35451 THEN 1    -- Black Knight
    END
WHERE `entry` IN (35572, 34705, 35569, 34702, 34701, 35571, 35570, 34657, 35617, 34703, 35305, 35307, 35309, 35119, 34928, 35564, 35545, 35590, 35451);

-- Tial of the Champion (Heroic)
UPDATE `creature_template`
    SET `dmg_multiplier` = CASE `entry`
    -- Heroic difficult
        -- Faction Grand Champions
        WHEN 36088 THEN 13   -- Grand Champion Warrior
        WHEN 36089 THEN 13
        WHEN 36085 THEN 13   -- Grand Champion Mage
        WHEN 36082 THEN 13
        WHEN 36083 THEN 13   -- Grand Champon Shaman
        WHEN 36090 THEN 13
        WHEN 36091 THEN 13   -- Grand Champion Hunter
        WHEN 36086 THEN 13
        WHEN 36084 THEN 13   -- Grand Champion Rouge
        WHEN 36087 THEN 13
        -- Argent Challenge
        WHEN 35306 THEN 16   -- Argent Monk
        WHEN 35308 THEN 11   -- Argent Priestess
        WHEN 35310 THEN 16.8 -- Argent Lightwielder
        WHEN 35518 THEN 13   -- Eadric the Pure
        WHEN 35517 THEN 13   -- Argent Confessor Paletress
        -- Black Knight Encounter
        WHEN 35568 THEN 3    -- Risen Arelas Brightstar
        WHEN 35546 THEN 3    -- Risen Jaeren Sunsworn
        WHEN 35717 THEN 3    -- Risen Champion
        WHEN 35490 THEN 17.6 -- Black Knight (Heroic)
    END,
    `Armor_mod` = CASE `entry`
        -- Faction Grand Champions
        WHEN 36088 THEN 1    -- Grand Champion Warrior
        WHEN 36089 THEN 1
        WHEN 36085 THEN 1    -- Grand Champion Mage
        WHEN 36082 THEN 1
        WHEN 36083 THEN 1    -- Grand Champon Shaman
        WHEN 36090 THEN 1
        WHEN 36091 THEN 1    -- Grand Champion Hunter
        WHEN 36086 THEN 1
        WHEN 36084 THEN 1    -- Grand Champion Rouge
        WHEN 36087 THEN 1
        -- Argent Challenge
        WHEN 35306 THEN 1    -- Argent Monk
        WHEN 35308 THEN 1    -- Argent Priestess
        WHEN 35310 THEN 1    -- Argent Lightwielder
        WHEN 35518 THEN 1    -- Eadric the Pure
        WHEN 35517 THEN 1    -- Argent Confessor Paletress
        -- Black Knight Encounter
        WHEN 35568 THEN 1    -- Risen Arelas Brightstar
        WHEN 35546 THEN 1    -- Risen Jaeren Sunsworn
        WHEN 35717 THEN 1    -- Risen Champion
        WHEN 35490 THEN 1    -- Black Knight (Heroic)
    END
WHERE `entry` IN (36088, 36089, 36085, 36082, 36083, 36090, 36091, 36086, 36084, 36087, 35306, 35308, 35310, 35518, 35517, 35568, 35546, 35717, 35490);