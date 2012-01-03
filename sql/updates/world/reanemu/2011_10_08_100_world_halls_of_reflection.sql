-- Eilo (https://github.com/eilo)
-- Recopilacion y adecuacion de querys originales de HyD y varios autores de scripts antiguas y raras
-- Algunas querys anadidas y ordenacion/comentarios del sql por Eilo

-- INSTANCE: Halls of Reflection
-- Creature Templates
SET @NPC_JAINA_OUTRO        := 36955;
SET @NPC_SYLVANA_OUTRO      := 37554;
SET @NPC_LICH_KING_BOSS     := 37226;

-- Unit flags de HoR (por Eilo)
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` IN (38112,38599,38113,38603,36954,38173,38525,38172,38524,38176,38544,38175,38563,38177,38564,36723,37720,37226,36940,37550,36941,37551,37069,37549,38567,38568);

-- Complementos Intro
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' WHERE `entry` IN (37221, @NPC_JAINA_OUTRO);
UPDATE `creature_template` SET `equipment_id`='1290' WHERE `entry` IN (37223, @NPC_SYLVANA_OUTRO);
UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`=36954;
UPDATE `creature_template` SET `scale`='0.8' WHERE `entry` IN (37225, 37223, @NPC_LICH_KING_BOSS, @NPC_SYLVANA_OUTRO);

-- Complementos Mini boss
UPDATE `creature_template` SET `speed_walk`='1.8', `speed_run`='2.0' WHERE `entry` IN (36954, @NPC_LICH_KING_BOSS);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=36723;
UPDATE `creature_template` SET `flags_extra` = 1 WHERE `entry` = 36723;
UPDATE `creature_template` SET `flags_extra` = 257 WHERE `entry` = 36723;

-- Complementos Segunda Parte
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_hor_part2' WHERE `entry` IN (@NPC_JAINA_OUTRO, @NPC_SYLVANA_OUTRO);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hor' WHERE `entry`=@NPC_LICH_KING_BOSS;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_raging_gnoul' WHERE `entry`=36940;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_risen_witch_doctor' WHERE `entry`=36941;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_abon' WHERE `entry`=37069;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_queldelar' WHERE `entry`=37158;

-- Complementos adicionales
UPDATE `creature_template` SET `unit_flags` = 32784, `AIName` = '', `ScriptName` = 'npc_spiritual_reflection', `difficulty_entry_1` = 37721 WHERE `entry` = 37107;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `unit_flags` = 32784, `mindmg` = '422', `maxdmg` = '586', `attackpower` = '642', `dmg_multiplier` = '13' WHERE `entry` = 37721;

-- Quitando a Uther visible
DELETE FROM `creature` WHERE `id` IN (37225) AND `map` = 668;

-- Quitando a Arthas visible
DELETE FROM `creature` WHERE `id` IN (37226) AND `map` = 668;

-- Spawn Quel'delar
DELETE FROM `creature` WHERE `id` IN (37158) AND `map` = 668;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES 
('37158', '668', '3', '2', '0', '0', '5304.5', '2001.35', '709.341', '4.15073', '7200', '0', '0', '214200', '0', '0', '0', '0', '0');

-- Spawn de Falric y Marwyn
DELETE FROM `creature` WHERE `id` IN (38112,38599,38113,38603);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES 
('38112','668','3','1','0','0','5271.65','2042.5','709.32','5.51217','604800','0','0','377468','0','0','0','0','0'),
('38599','668','3','1','0','0','5271.65','2042.5','709.32','5.51217','604800','0','0','377468','0','0','0','0','0'),
('38113','668','3','1','0','0','5344.75','1972.87','709.319','2.33445','604800','0','0','539240','0','0','0','0','0'),
('38603','668','3','1','0','0','5344.75','1972.87','709.319','2.33445','604800','0','0','539240','0','0','0','0','0');

-- Spawn de Frostsworn General
DELETE FROM `creature` WHERE `id` IN (36723);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES
('36723','668','3','1','0','2432','5413.9','2116.65','707.695','3.94765','604800','0','0','315000','0','0','0','0','0');

-- Facciones gameobjects
UPDATE `gameobject_template` SET `faction`='1375' WHERE `entry` IN (197341, 202302, 201385, 201596);

-- Textos
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1594540 AND -1594430;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`TYPE`,`LANGUAGE`,`emote`,`COMMENT`) VALUES
(-1594473, 'Insensata, buscas lo que asesine tiempo atras. Ahora no es mas que un fantasma, un eco lejano en mi mente.', '', 17229,1,0,0, '67234'),
(-1594474, 'No cometere el mismo error, Sylvanas. Esta vez no habra escapatoria. Fallaste al servirme como no muerta. Ahora lo que te queda es el olvido.', '', 17228,1,0,0, '67234'),
-- SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'Han llegado tus aliados, Jaina, como prometiste. Todos sereis poderosos agentes de la Plaga.', '', 17212,1,0,0, '67234'),
(-1594478, 'No cometere el mismo error, Sylvanas. Esta vez no habra escapatoria. Me servireis en la muerte!', '', 17213,1,0,0, '67234'),
(-1594479, 'Es demasiado poderoso, debemos abandonar este lugar ahora mismo! Mi magia podra inmovilizarlo brevemente! Vamos rapido, heroes!', '', 16644,0,0,1, '67234'),
(-1594480, 'Es demasiado poderoso! Heroes, rapido, venid! Debemos abandonar este lugar ahora mismo! Hare lo que pueda para inmovilizarlo mientras huimos.', '', 17058,0,0,1, '67234'),
-- SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'El frio abrazo de la muerte os aguarda!', '', 17221,1,0,0, '67234'),
(-1594482, 'Alzaos esbirros! Que no pasen!', '', 17216,1,0,0, '67234'),
(-1594483, 'Esbirros cojedlos. Traedme sus cadaveres!', '', 17222,1,0,0, '67234'),
(-1594484, 'Sin esperanza...', '!', 17214,1,0,0, '67234'),
(-1594485, 'Todo perdido!', '', 17215,1,0,0, '67234'),
(-1594486, 'No hay escapatoria!', '', 17217,1,0,0, '67234'),
(-1594487, 'Destruire esta barrera. Debeis mantener atras a los no muertos!', '', 16607,1,0,0, '67234'),
(-1594488, 'Ninguna pared detendre a la Reina Alma en Pena! Mantened a los no muertos a raya, heroes! Destruire esta barrera!', '', 17029,1,0,0, '67234'),
(-1594489, 'Otro muro de hielo! Evitad que los no muertos interrumpan mis conjuros para que pueda derribar este muro!', '', 16608,1,0,0, '67234'),
(-1594490, 'Otra barrera? Sed fuertes, campeones! Derrumbare el muro!', '', 17030,1,0,0, '67234'),
(-1594491, 'Sucumbid al frio de la tumba.', '', 17218,1,0,0, '67234'),
(-1594492, 'Otro final sin salida.', '', 17219,1,0,0, '67234'),
(-1594493, 'Cuanto vais a aguantar?', '', 17220,1,0,0, '67234'),
(-1594494, 'Esta jugando con nosotros. Le enseñare lo que le pasa al hielo cuando se junta con el fuego!', '', 16609,0,0,0, '67234'),
(-1594495, 'Tus muros no pueden detenernos, monstruo. Los destruire todos!', '', 16610,1,0,0, '67234'),
(-1594496, 'Me canso de estos juegos, Arthas! Tus muros no me detendran!', '', 17031,1,0,0, '67234'),
(-1594497, 'No impediras que escapemos, demonio. Acabad con los no muertos mientras derribo esta barrera!', '', 17032,1,0,0, '67234'),
(-1594498, 'Hay una salida ahi delante, vamos!', '', 16645,1,0,0, '67234'),
(-1594499, 'Casi estamos, no os rindais!', '', 16646,1,0,0, '67234'),
(-1594500, 'Hay una salida ahi delante, vamos!', '', 17059,1,0,0, '67234'),
(-1594501, 'Casi estamos, no os rindais!', '', 17060,1,0,0, '67234'),
(-1594502, 'No... No hay salida. No tenemos mas opcion que luchar. Armaos de valor heroes, pues esta sera nuestra ultima batalla!', '', 16647,1,0,0, '67234'),
(-1594503, 'Maldicion, no hay salida! Asi es como acaba. Preparaos heroes, hoy tendra lugar nuestra ultima batalla!', '', 17061,1,0,0, '67234'),
(-1594504, 'No corrais. Sois mios....', '', 17223,1,0,0, '67234'),
(-1594524,'Perdonadme heroes. Debi escuchar a Uther. Tenia que verlo por mi misma, poder mirarle a los ojos una ultima vez. Lo siento.', '','16648','0','0','0','67234'),
(-1594525,'Ahora sabemos que debemos hacer, les dare estas noticias al Rey Varian y al alto señor Vadin.','','16649','0','0','0','67234'),
(-1594522,'Fuego, fuego!','','16732','1','0','0','67234'),
(-1594523,'A bordo! Ya! La ladera de la montaña se derrumbara en cualquier momento!','','16733','1','0','0','67234'),
(-1594521,'Estamos a salvo por ahora. Su fuerza se ha multiplicado desde nuestra ultima batalla. Necesitamos un ejercito poderoso para destruir al Rey Exanime, mejor incluso que el que la Horda puede convocar.','','17062','0','0','0','67234'),
(-1594526,'Fuego, fuego!','','16721','1','0','0','67234'),
(-1594527,'Rapido! A bordo! No debemos entretenernos. La ladera de la montaña se derrumbara en cualquier momento!','','16722','1','0','0','67234'),
(-1594505, 'Soldados de Lordaeron, alzaos ante la llamada de vuestro maestro!', '', 16714,1,0,0, '67234'),
(-1594506, 'El maestro observo su reino, y lo encontro... incompleto. Su juicio fue rapido y despiado. Muerte a todos!', '', 16738,1,0,0, '67234'),
-- FrostWorn General
(-1594519, 'No sois dignos de enfrentaros al Rey Exanime!', '', 16921,1,0,0, '67234'),
(-1594520, 'Maestro, he fracasado...', '', 16922,1,0,0, '67234');

-- Waipoints
DELETE FROM script_waypoint WHERE entry IN (@NPC_JAINA_OUTRO,@NPC_LICH_KING_BOSS,@NPC_SYLVANA_OUTRO);
INSERT INTO script_waypoint VALUES
-- Jaina

   (@NPC_JAINA_OUTRO, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (@NPC_JAINA_OUTRO, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (@NPC_JAINA_OUTRO, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (@NPC_JAINA_OUTRO, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'),
   (@NPC_JAINA_OUTRO, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (@NPC_JAINA_OUTRO, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (@NPC_JAINA_OUTRO, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (@NPC_JAINA_OUTRO, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (@NPC_JAINA_OUTRO, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (@NPC_JAINA_OUTRO, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (@NPC_JAINA_OUTRO, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (@NPC_JAINA_OUTRO, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (@NPC_JAINA_OUTRO, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (@NPC_JAINA_OUTRO, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (@NPC_JAINA_OUTRO, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (@NPC_JAINA_OUTRO, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (@NPC_JAINA_OUTRO, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (@NPC_JAINA_OUTRO, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Sylvana

   (@NPC_SYLVANA_OUTRO, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (@NPC_SYLVANA_OUTRO, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (@NPC_SYLVANA_OUTRO, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (@NPC_SYLVANA_OUTRO, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'),
   (@NPC_SYLVANA_OUTRO, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (@NPC_SYLVANA_OUTRO, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (@NPC_SYLVANA_OUTRO, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (@NPC_SYLVANA_OUTRO, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (@NPC_SYLVANA_OUTRO, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (@NPC_SYLVANA_OUTRO, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (@NPC_SYLVANA_OUTRO, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (@NPC_SYLVANA_OUTRO, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (@NPC_SYLVANA_OUTRO, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (@NPC_SYLVANA_OUTRO, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (@NPC_SYLVANA_OUTRO, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (@NPC_SYLVANA_OUTRO, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (@NPC_SYLVANA_OUTRO, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (@NPC_SYLVANA_OUTRO, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

-- Lich King

   (@NPC_LICH_KING_BOSS, 1, 5577.19, 2236, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 2, 5580.57, 2232.22, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 3, 5586.67, 2225.54, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 4, 5590.45, 2221.41, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 5, 5595.75, 2215.62, 732.101, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 6, 5601.21, 2206.49, 731.54, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 7, 5605.01, 2197.9, 731.667, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 8, 5606.55, 2191.39, 730.977, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 9, 5604.68, 2186.11, 730.998, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 10, 5602.26, 2179.9, 730.967, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 11, 5600.06, 2174.38, 730.924, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 12, 5597.29, 2166.81, 730.924, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 13, 5596.25, 2160.36, 730.931, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 14, 5591.79, 2152.87, 731.008, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 15, 5585.47, 2146.63, 731.109, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 16, 5579.1, 2140.34, 731.18, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 17, 5572.56, 2134.21, 731.092, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 18, 5564.08, 2126.53, 730.816, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 19, 5559.04, 2117.64, 730.812, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 20, 5555.77, 2111.88, 730.995, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 21, 5550.82, 2103.14, 731.123, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 22, 5546.02, 2094.68, 731.16, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 23, 5541.53, 2084.42, 730.999, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 24, 5537.5, 2075.18, 730.901, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 25, 5533.76, 2063.84, 730.87, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 26, 5530.97, 2052.98, 730.981, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 27, 5526.75, 2041.73, 731.193, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 28, 5522.88, 2031.65, 731.7, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 29, 5521.01, 2023.02, 732.396, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 30, 5516.55, 2015.36, 733.12, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 31, 5513.06, 2007.33, 733.99, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 32, 5510.43, 1997.9, 735.016, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 33, 5504.53, 1990.39, 735.748, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 34, 5499.34, 1983.78, 736.29, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 35, 5493.11, 1975.86, 736.852, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 36, 5487.58, 1968.81, 737.394, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 37, 5483.12, 1961.78, 738.06, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 38, 5478.33, 1954.2, 739.343, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 39, 5475.2, 1945.84, 740.697, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 40, 5472.15, 1938.02, 741.884, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 41, 5469.26, 1931.34, 742.813, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 42, 5464.23, 1922.25, 744.055, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 43, 5458.43, 1912.96, 745.229, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 44, 5452.26, 1902.95, 747.091, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 45, 5442.44, 1892.51, 749.208, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 46, 5435.67, 1879.7, 751.776, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 47, 5429.03, 1870.73, 753.151, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 48, 5423.72, 1862.16, 754.263, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 49, 5417.21, 1851.7, 755.507, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 50, 5408.94, 1838.38, 757.002, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 51, 5398.8, 1829.61, 757.742, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 52, 5388.47, 1817.95, 759.285, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 53, 5378.23, 1808.5, 760.316, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 54, 5368.5, 1801.35, 760.845, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 55, 5360.86, 1793.16, 762.271, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 56, 5353.62, 1785.4, 763.868, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 57, 5344.78, 1776.09, 765.759, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 58, 5336.38, 1768.67, 767.324, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 59, 5327.56, 1760.12, 769.332, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 60, 5319.62, 1750.7, 771.487, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 61, 5313.12, 1742.99, 773.424, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 62, 5305.41, 1735.79, 775.473, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 63, 5298.93, 1728.16, 777.573, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 64, 5292.54, 1720.37, 779.862, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 65, 5287.11, 1713.96, 781.667, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 66, 5280.14, 1705.21, 784.65, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 67, 5277.98, 1701.28, 785.224, 0, 'HoR WP LichKing');

-- AreaTrigger for waves restarter
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5697;
INSERT INTO `areatrigger_scripts` VALUES
(5697, 'at_hor_waves_restarter');

-- GameObject Templates
DELETE FROM gameobject_template WHERE entry IN (201709, 202211, 190236, 196391, 196392, 197341, 197342, 197343, 201385, 201596, 201710, 201747, 201756, 201885, 201976, 202079, 202212, 202236, 202302, 202336, 202337, 202396, 500001, 500002, 500003);
INSERT INTO `gameobject_template` (`entry`, `TYPE`, `displayId`, `NAME`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('201596','0','9223','Cave In','','','','1375','4','2','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197342','0','9124','Doodad_IceCrown_Door_02','','','','1375','36','1','0','0','0','0','0','0','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197343','0','9124','Doodad_IceCrown_Door_03','','','','1375','36','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201976','0','9124','Doodad_IceCrown_Door_04','','','','114','32','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('196391','31','8196','Doodad_InstanceNewPortal_Purple01','','','','0','0','2.72','0','0','0','0','0','0','632','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201747','31','8196','Doodad_InstanceNewPortal_Purple01','','','','0','0','2.72','0','0','0','0','0','0','668','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('196392','31','8197','Doodad_InstanceNewPortal_Purple_Skull01','','','','0','0','2.72','0','0','0','0','0','0','632','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201756','31','8197','Doodad_InstanceNewPortal_Purple_Skull01','','','','0','0','2.72','0','0','0','0','0','0','668','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202302','0','9301','Frostmourne','','','','1375','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202236','0','9294','Frostmourne Altar','','','','114','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('190236','0','7876','Gate','','','','114','32','0.88','0','0','0','0','0','0','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201385','0','9214','Ice Wall','','','','1375','1','2.5','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('500001','0','9214','Ice Wall','','','','1375','1','2.5','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('201885','0','9214','Ice Wall','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202396','0','9214','Ice Wall','','','','114','33','2','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197341','0','9124','Impenetrable Door','','','','1375','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('500003','14','8253','Orgrim\'s Hammer','','','','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('202079','22','8111','Portal to Dalaran','','','','0','0','1','0','0','0','0','0','0','53141','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201710','3','9280','The Captain\'s Chest','','','','1732','0','1','0','0','0','0','0','0','57','27985','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202337','3','9281','The Captain\'s Chest','','','','1735','0','1','0','0','0','0','0','0','57','27993','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202336','3','9280','The Captain\'s Chest','','','','1732','0','1','0','0','0','0','0','0','57','27993','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202212','3','9281','The Captain\'s Chest','','','','1735','0','1','0','0','0','0','0','0','57','27985','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','11723'),
('500002','14','9150','The Skybreaker','','','','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('201709','5','9288','Gunship Stairs','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202211','5','9289','Gunship Stairs','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340');

-- Gameobject Spawns
DELETE FROM gameobject WHERE map = 668 AND id IN (190236, 196391, 196392, 197341, 197342, 197343, 201385, 201596, 201710, 201747, 201756, 201885, 201976, 202079, 202212, 202236, 202302, 202336, 202337, 202396, 500001, 500002, 500003);
SET @GUID_GO := 153000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_GO,201747,668,3,1,5231.04,1923.79,707.044,0.810935,0,0,-0.370856,0.928691,6000,100,1),
(@GUID_GO+1,201756,668,3,1,5231.04,1923.79,707.044,0.810935,0,0,-0.370856,0.928691,6000,100,1),
(@GUID_GO+2,190236,668,3,1,4926.09,1554.96,163.292,-2.26562,0,0,0.999999,-0.001655,6000,100,1),
(@GUID_GO+3,202302,668,3,1,5309.51,2006.64,709.341,5.50041,0,0,0.381473,-0.92438,604800,100,1),
(@GUID_GO+4,202236,668,3,1,5309.51,2006.64,709.341,5.53575,0,0,0.365077,-0.930977,604800,100,1),
(@GUID_GO+5,201596,668,3,1,5275.28,1694.23,786.147,0.981225,0,0,0.471166,0.882044,25,0,0),
(@GUID_GO+6,500001,668,3,1,5323.61,1755.85,770.305,0.784186,0,0,0.382124,0.924111,604800,100,0),
(@GUID_GO+7,196391,668,3,1,5232.31,1925.57,707.695,0.815481,0,0,0.396536,0.918019,300,0,1),
(@GUID_GO+8,196392,668,3,1,5232.31,1925.57,707.695,0.815481,0,0,0.396536,0.918019,300,0,1),
(@GUID_GO+9,202396,668,3,1,5434.27,1881.12,751.303,0.923328,0,0,0.445439,0.895312,604800,100,0),
(@GUID_GO+10,201885,668,3,1,5494.3,1978.27,736.689,1.0885,0,0,0.517777,0.855516,604800,100,0),
(@GUID_GO+11,197341,668,3,1,5359.24,2058.35,707.695,3.96022,0,0,0.917394,-0.397981,300,100,1),
(@GUID_GO+12,201976,668,3,1,5264.6,1959.55,707.695,0.736951,0,0,0.360194,0.932877,300,100,0),
(@GUID_GO+13,197342,668,3,1,5520.72,2228.89,733.011,0.778581,0,0,0.379532,0.925179,300,100,1),
(@GUID_GO+14,197343,668,3,1,5582.96,2230.59,733.011,5.49098,0,0,0.385827,-0.922571,300,100,1),
(@GUID_GO+15,201385,668,3,1,5540.39,2086.48,731.066,1.00057,0,0,0.479677,0.877445,604800,100,0),
(@GUID_GO+16,202337,668,2,1,5252.33,1585.36,796.062,2.80195,0,0,0.985615,0.169007,604800,100,1),
(@GUID_GO+17,202336,668,2,1,5264.22,1584.94,794.359,2.70142,0,0,0.975878,0.218315,604800,100,1),
(@GUID_GO+18,202079,668,3,1,5248.58,1574.22,795.209,0,0,0,0,1,604800,100,1),
(@GUID_GO+19,500002,668,3,1,5247.09,1586.39,773.922,5.86166,0,0,0.209207,-0.977871,300,0,1),
(@GUID_GO+20,500003,668,3,1,5245.17,1582.11,761.72,5.86166,0,0,0.209207,-0.977871,300,0,1),
(@GUID_GO+21,202212,668,1,1,5253.03,1585.13,796.089,2.75698,0,0,0.981566,0.191121,300,0,1),
(@GUID_GO+22,201710,668,1,1,5262.5,1582.41,794.342,2.75698,0,0,0.981566,0.191121,300,0,1);

-- Loot del Chest del final
DELETE FROM `gameobject_loot_template` WHERE (`entry`=27993);
INSERT INTO `gameobject_loot_template` VALUES 
(27993, 43102, 100, 1, 0, 1, 1),
(27993, 47241, 100, 1, 0, 1, 1),
(27993, 50302, 0, 1, 1, 1, 1),
(27993, 50303, 0, 1, 1, 1, 1),
(27993, 50304, 0, 1, 2, 1, 1),
(27993, 50305, 0, 1, 2, 1, 1),
(27993, 50306, 0, 1, 1, 1, 1),
(27993, 50308, 0, 1, 2, 1, 1),
(27993, 50309, 0, 1, 1, 1, 1),
(27993, 50310, 0, 1, 2, 1, 1),
(27993, 50311, 0, 1, 2, 1, 1),
(27993, 50312, 0, 1, 2, 1, 1),
(27993, 50313, 0, 1, 1, 1, 1),
(27993, 50314, 0, 1, 1, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`=27985);
INSERT INTO `gameobject_loot_template` VALUES 
(27985, 47241, 100, 1, 0, 1, 1),
(27985, 49839, 0, 1, 1, 1, 1),
(27985, 49840, 0, 1, 1, 1, 1),
(27985, 49841, 0, 1, 2, 1, 1),
(27985, 49842, 0, 1, 2, 1, 1),
(27985, 49843, 0, 1, 2, 1, 1),
(27985, 49844, 0, 1, 1, 1, 1),
(27985, 49845, 0, 1, 1, 1, 1),
(27985, 49846, 0, 1, 1, 1, 1),
(27985, 49847, 0, 1, 2, 1, 1),
(27985, 49848, 0, 1, 2, 1, 1),
(27985, 49849, 0, 1, 1, 1, 1),
(27985, 49851, 0, 1, 2, 1, 1);

-- Inmunidades.
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|536870912 WHERE `entry` IN (SELECT `id`  FROM `creature` WHERE map=668);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|536870912 WHERE `entry` IN 
(
38112,
38113,
36723,
37107,
36954,
37745,
37158,
37226,
37225,
37221,
36955,
37223,
37554,
37182,
37833,
38177,
38173,
38176,
38175,
38172,
37906,
37014,
36940,
36941,
37069);
