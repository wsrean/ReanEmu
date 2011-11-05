-- ########################## Citadel Footsteps #########################
-- ############# Complete Questlinking ##################################
-- Blackwatch ... Prev: The Shadow Vault Allianz OR The Shadow Vault Horde
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13106;
DELETE FROM conditions WHERE SourceEntry = 13106 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13106,0,8,12898,0,0,0,'',''),
(19,0,13106,0,8,12898,0,0,0,'',''),
(20,0,13106,1,8,12899,0,0,0,'',''),
(19,0,13106,1,8,12899,0,0,0,'','');
-- Where Are They Coming From? ... Prev: Blackwatch
UPDATE quest_template SET PrevQuestId = 13106, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13117;
-- Death's Gaze ... Prev: Where Are They Coming From?
UPDATE quest_template SET PrevQuestId = 13117, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13120;
-- Destroying the Altars ... Prev: Where Are They Coming From?
UPDATE quest_template SET PrevQuestId = 13117, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13119;
-- I'm Not Dead Yet! H ... Prev: Death's Gaze AND Destroying the Altars
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13229;
DELETE FROM conditions WHERE SourceEntry = 13229 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13229,0,8,13120,0,0,0,'',''),
(19,0,13229,0,8,13120,0,0,0,'',''),
(20,0,13229,0,8,13119,0,0,0,'',''),
(19,0,13229,0,8,13119,0,0,0,'','');
-- I'm Not Dead Yet! A ... Prev: Death's Gaze AND Destroying the Altars
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13221;
DELETE FROM conditions WHERE SourceEntry = 13221 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13221,0,8,13120,0,0,0,'',''),
(19,0,13221,0,8,13120,0,0,0,'',''),
(20,0,13221,0,8,13119,0,0,0,'',''),
(19,0,13221,0,8,13119,0,0,0,'','');
-- Spill Their Blood ... Prev: Death's Gaze AND Destroying the Altars
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13134;
DELETE FROM conditions WHERE SourceEntry = 13134 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13134,0,8,13120,0,0,0,'',''),
(19,0,13134,0,8,13120,0,0,0,'',''),
(20,0,13134,0,8,13119,0,0,0,'',''),
(19,0,13134,0,8,13119,0,0,0,'','');
-- Jagged Shards ... Prev: Death's Gaze AND Destroying the Altars
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13136;
DELETE FROM conditions WHERE SourceEntry = 13136 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13136,0,8,13120,0,0,0,'',''),
(19,0,13136,0,8,13120,0,0,0,'',''),
(20,0,13136,0,8,13119,0,0,0,'',''),
(19,0,13136,0,8,13119,0,0,0,'','');
-- The Runesmiths of Malykriss ... Prev: Jagged Shards     
UPDATE quest_template SET PrevQuestId = 13136, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13140;
-- I'm Smelting... Smelting! ... Prev: Jagged Shards
UPDATE quest_template SET PrevQuestId = 13136, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13138;
-- By Fire Be Purged ... Prev: I'm Smelting... Smelting! AND The Runesmiths of Malykriss AND Spill Their Blood 
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13211;
DELETE FROM conditions WHERE SourceEntry = 13211 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13211,0,8,13140,0,0,0,'',''),
(19,0,13211,0,8,13140,0,0,0,'',''),
(20,0,13211,0,8,13134,0,0,0,'',''),
(19,0,13211,0,8,13134,0,0,0,'',''),
(20,0,13211,0,8,13138,0,0,0,'',''),
(19,0,13211,0,8,13138,0,0,0,'','');
-- A Visit to the Doctor ... Prev: I'm Smelting... Smelting! AND The Runesmiths of Malykriss AND Spill Their Blood 
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13152;
DELETE FROM conditions WHERE SourceEntry = 13152 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13152,0,8,13140,0,0,0,'',''),
(19,0,13152,0,8,13140,0,0,0,'',''),
(20,0,13152,0,8,13134,0,0,0,'',''),
(19,0,13152,0,8,13134,0,0,0,'',''),
(20,0,13152,0,8,13138,0,0,0,'',''),
(19,0,13152,0,8,13138,0,0,0,'','');
-- Killing Two Scourge With One Skeleton ... Prev: A Visit to the Doctor AND By Fire Be Purged
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13144;
DELETE FROM conditions WHERE SourceEntry = 13144 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13144,0,8,13152,0,0,0,'',''),
(19,0,13144,0,8,13152,0,0,0,'',''),
(20,0,13144,0,8,13211,0,0,0,'',''),
(19,0,13144,0,8,13211,0,0,0,'','');
-- Let's Get Out of Here A ... Prev: Killing Two Scourge With One Skeleton 
UPDATE quest_template SET PrevQuestId = 13144, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13482;
-- Let's Get Out of Here H ... Prev: Killing Two Scourge With One Skeleton
UPDATE quest_template SET PrevQuestId = 13144, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13481;
-- He's Gone to Pieces ... Prev: Killing Two Scourge With One Skeleton ... NextQuestInChain: Putting Olakin Back Together Again
UPDATE quest_template SET PrevQuestId = 13144, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13220 WHERE entry = 13212;
-- Putting Olakin Back Together Again ... Prev: He's Gone to Pieces ... NextQuestInChain: The Flesh Giant Champion
UPDATE quest_template SET PrevQuestId = 13212, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13235 WHERE entry = 13220;
-- The Flesh Giant Champion ... Prev: Putting Olakin Back Together Again
UPDATE quest_template SET PrevQuestId = 13220, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13235;
-- ####################################################
-- Exploiting an Opening(A) ... Prev: The SkyBreaker AND The ShadowVault ... NextQuestInChain: Securing the Perimeter
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13387 WHERE entry = 13386;
DELETE FROM conditions WHERE SourceEntry = 13386 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13386,0,8,12898,0,0,0,'',''),
(19,0,13386,0,8,12898,0,0,0,'',''),
(20,0,13386,0,8,13225,0,0,0,'',''),
(19,0,13386,0,8,13225,0,0,0,'','');
-- Securing the Perimeter ... Prev: Exploiting an Opening ... NextQuestInChain: Set it Off!
UPDATE quest_template SET PrevQuestId = 13386, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13388 WHERE entry = 13387;
-- Set it Off! ... Prev: Securing the Perimeter ... NextQuestInChain: A Short Fuse
UPDATE quest_template SET PrevQuestId = 13387, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13389 WHERE entry = 13388;
-- A Short Fuse ... Prev: Set it Off! ... NextQuestInChain: A Voice in the Dark
UPDATE quest_template SET PrevQuestId = 13388, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13390 WHERE entry = 13389;
-- A Voice in the Dark ... Prev: A Short Fuse ... NextQuestInChain: Time to Hide
UPDATE quest_template SET PrevQuestId = 13389, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13391 WHERE entry = 13390;
--  Time to Hide ... Prev:  A Voice in the Dark ... NextQuestInChain: Return to the Surface
UPDATE quest_template SET PrevQuestId = 13390, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13392 WHERE entry = 13391;
-- Return to the Surface ... Prev: Time to Hide ... NextQuestInChain: Field Repairs
UPDATE quest_template SET PrevQuestId = 13391, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13393 WHERE entry = 13392;
-- Field Repairs ... Prev: Return to the Surface 
UPDATE quest_template SET PrevQuestId = 13392, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13393;
-- Do Your Worst ... Prev: Field Repairs ... NextQuestInChain: Army of the Damned
UPDATE quest_template SET PrevQuestId = 13393, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13395 WHERE entry = 13394;
-- Army of the Damned ... Prev: Do Your Worst ... NextQuestInChain: Futility
UPDATE quest_template SET PrevQuestId = 13394, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13396 WHERE entry = 13395;
-- Futility ... Prev: Army of the Damned ... NextQuestInChain: Sindragosa's Fall
UPDATE quest_template SET PrevQuestId = 13395, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13397 WHERE entry = 13396;
-- Sindragosa's Fall ... Prev: Futility 
UPDATE quest_template SET PrevQuestId = 13396, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13397;
-- Where Dragons Fell ... Prev: Futility ... NextQuestInChain:	Time for Answers	
UPDATE quest_template SET PrevQuestId = 13396, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13399 WHERE entry = 13398;
-- Time for Answers ... Prev: Where Dragons Fell ... NextQuestInChain: The Hunter and the Prince
UPDATE quest_template SET PrevQuestId = 13398, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13400 WHERE entry = 13399;
-- The Hunter and the Prince ... Prev: Time for Answers ... NextQuestInChain: Knowledge is a Terrible Burden
UPDATE quest_template SET PrevQuestId = 13399, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13401 WHERE entry = 13400;
-- Knowledge is a Terrible Burden ... Prev: The Hunter and the Prince ... NextQuestInChain: Tirion's Help
UPDATE quest_template SET PrevQuestId = 13400, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13402 WHERE entry = 13401;
-- Tirion's Help ... Prev: Knowledge is a Terrible Burden ... NextQuestInChain: Tirion's Gambit
UPDATE quest_template SET PrevQuestId = 13401, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13403 WHERE entry = 13402;
-- Tirion's Gambit ... Prev: Tirion's Help
UPDATE quest_template SET PrevQuestId = 13402, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13403;
-- ####################################################
-- Opportunity ... Prev: Orgrim's Hammer AND The ShadowVault ... NextQuestInChain: Establishing Superiority
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13259 WHERE entry = 13258;
DELETE FROM conditions WHERE SourceEntry = 13258 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13258,0,8,13224,0,0,0,'',''),
(19,0,13258,0,8,13224,0,0,0,'',''),
(20,0,13258,0,8,12899,0,0,0,'',''),
(19,0,13258,0,8,12899,0,0,0,'','');
-- Establishing Superiority ... Prev: Opportunity ... NextQuestInChain: Blow it Up!
UPDATE quest_template SET PrevQuestId = 13258, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13262 WHERE entry = 13259;
-- Blow it Up! ... Prev:  Establishing Superiority ... NextQuestInChain: A Short Fuse
UPDATE quest_template SET PrevQuestId = 13259, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13263 WHERE entry = 13262;
-- A Short Fuse ... Prev: Blow it Up! ... NextQuestInChain: A Voice in the Dark
UPDATE quest_template SET PrevQuestId = 13262, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13271 WHERE entry = 13263;
-- A Voice in the Dark ... Prev: A Short Fuse ... NextQuestInChain: Time to Hide
UPDATE quest_template SET PrevQuestId = 13263, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13275 WHERE entry = 13271;
-- Time to Hide ... Prev: A Voice in the Dark ... NextQuestInChain: Return to the Surface
UPDATE quest_template SET PrevQuestId = 13271, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13282 WHERE entry = 13275;
-- Return to the Surface ... Prev: Time to Hide ... NextQuestInChain: Field Repairs
UPDATE quest_template SET PrevQuestId = 13275, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13304 WHERE entry = 13282;
-- Field Repairs ... Prev: Return to the Surface
UPDATE quest_template SET PrevQuestId = 13282, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13304;
-- Do Your Worst ... Prev: Field Repairs ... NextQuestInChain: Army of the Damned
UPDATE quest_template SET PrevQuestId = 13304, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13236 WHERE entry = 13305;
-- Army of the Damned ... Prev: Do Your Worst ... NextQuestInChain: Futility
UPDATE quest_template SET PrevQuestId = 13305, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13348 WHERE entry = 13236;
-- Futility ... Prev: Army of the Damned ... NextQuestInChain: Cradle of the Frostbrood
UPDATE quest_template SET PrevQuestId = 13236, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13349 WHERE entry = 13348;
-- Cradle of the Frostbrood ... Prev: Futility
UPDATE quest_template SET PrevQuestId = 13348, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13349;
-- Where Dragons Fell ... Prev: Futility
UPDATE quest_template SET PrevQuestId = 13349, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13359;
-- Time for Answers ... Prev: Where Dragons Fell ... NextQuestInChain: The Hunter and the Prince
UPDATE quest_template SET PrevQuestId = 13359, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13361 WHERE entry = 13360;
-- The Hunter and the Prince ... Prev: Time for Answers ... NextQuestInChain: Knowledge is a Terrible Burden
UPDATE quest_template SET PrevQuestId = 13360, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13362 WHERE entry = 13361;
-- Knowledge is a Terrible Burden ... Prev: The Hunter and the Prince
UPDATE quest_template SET PrevQuestId = 13361, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13362;

-- Argent Aid ... Prev: Knowledge is a Terrible Burden ... NextQuestInChain: Tirion's Gambit
UPDATE quest_template SET PrevQuestId = 13362, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13364 WHERE entry = 13363;
-- Tirion's Gambit ... Prev: Argent Aid
UPDATE quest_template SET PrevQuestId = 13363, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13364;
-- ###############################
-- Parting Gifts ... Prev: A Short Fuse A OR A Short Fuse H
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13168;
DELETE FROM conditions WHERE SourceEntry = 13168 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13168,0,8,13263,0,0,0,'',''),
(19,0,13168,0,8,13263,0,0,0,'',''),
(20,0,13168,1,8,13389,0,0,0,'',''),
(19,0,13168,1,8,13389,0,0,0,'','');
-- An Undead's Best Friend ... Prev: Parting Gifts
UPDATE quest_template SET PrevQuestId = 13168, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13169;
-- Honor is for the Weak ... Prev: Parting Gifts
UPDATE quest_template SET PrevQuestId = 13168, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13170;
-- From Whence They Came ... Prev: Parting Gifts
UPDATE quest_template SET PrevQuestId = 13168, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13171;
-- Seeds of Chaos ... Prev: An Undead's Best Friend AND Honor is for the Weak AND From Whence They Came
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13172;
DELETE FROM conditions WHERE SourceEntry = 13172 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13172,0,8,13169,0,0,0,'',''),
(19,0,13172,0,8,13169,0,0,0,'',''),
(20,0,13172,0,8,13170,0,0,0,'',''),
(19,0,13172,0,8,13170,0,0,0,'',''),
(20,0,13172,0,8,13171,0,0,0,'',''),
(19,0,13172,0,8,13171,0,0,0,'','');
-- Amidst the Confusion ... Prev: An Undead's Best Friend AND Honor is for the Weak AND From Whence They Came
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13174;
DELETE FROM conditions WHERE SourceEntry = 13174 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13174,0,8,13169,0,0,0,'',''),
(19,0,13174,0,8,13169,0,0,0,'',''),
(20,0,13174,0,8,13170,0,0,0,'',''),
(19,0,13174,0,8,13170,0,0,0,'',''),
(20,0,13174,0,8,13171,0,0,0,'',''),
(19,0,13174,0,8,13171,0,0,0,'','');
-- Vereth the Cunning ... Prev: Amidst the Confusion AND Seeds of Chaos ... NextQuestInChain: New Recruit
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13143 WHERE entry = 13155;
DELETE FROM conditions WHERE SourceEntry = 13155 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13155,0,8,13174,0,0,0,'',''),
(19,0,13155,0,8,13174,0,0,0,'',''),
(20,0,13155,0,8,13172,0,0,0,'',''),
(19,0,13155,0,8,13172,0,0,0,'','');
-- New Recruit ... Prev: Vereth the Cunning ... NextQuestInChain: The Vile Hold
UPDATE quest_template SET PrevQuestId = 13155, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13145 WHERE entry = 13143;
-- The Vile Hold ... Prev: New Recruit
UPDATE quest_template SET PrevQuestId = 13143, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13145;
-- Generosity Abounds ... Prev: The Vile Hold
UPDATE quest_template SET PrevQuestId = 13145, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13146;
-- Stunning View ... Prev: The Vile Hold
UPDATE quest_template SET PrevQuestId = 13145, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13160;
-- Matchmaker ... Prev: The Vile Hold
UPDATE quest_template SET PrevQuestId = 13145, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13147;
-- The Rider of the Unholy ... Prev: Generosity Abounds AND Stunning View AND Matchmaker
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13161;
DELETE FROM conditions WHERE SourceEntry = 13161 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13161,0,8,13146,0,0,0,'',''),
(19,0,13161,0,8,13146,0,0,0,'',''),
(20,0,13161,0,8,13160,0,0,0,'',''),
(19,0,13161,0,8,13160,0,0,0,'',''),
(20,0,13161,0,8,13147,0,0,0,'',''),
(19,0,13161,0,8,13147,0,0,0,'','');
-- The Rider of the Frost ... Prev: Generosity Abounds AND Stunning View AND Matchmaker
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13162;
DELETE FROM conditions WHERE SourceEntry = 13162 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13162,0,8,13146,0,0,0,'',''),
(19,0,13162,0,8,13146,0,0,0,'',''),
(20,0,13162,0,8,13160,0,0,0,'',''),
(19,0,13162,0,8,13160,0,0,0,'',''),
(20,0,13162,0,8,13147,0,0,0,'',''),
(19,0,13162,0,8,13147,0,0,0,'','');
-- The Rider of the Blood ... Prev: Generosity Abounds AND Stunning View AND Matchmaker
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13163;
DELETE FROM conditions WHERE SourceEntry = 13163 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13163,0,8,13146,0,0,0,'',''),
(19,0,13163,0,8,13146,0,0,0,'',''),
(20,0,13163,0,8,13160,0,0,0,'',''),
(19,0,13163,0,8,13160,0,0,0,'',''),
(20,0,13163,0,8,13147,0,0,0,'',''),
(19,0,13163,0,8,13147,0,0,0,'','');
-- The Fate of Bloodbane ... Prev: The Rider of the Blood AND Frost AND Unholy
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13164;
DELETE FROM conditions WHERE SourceEntry = 13164 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13164,0,8,13161,0,0,0,'',''),
(19,0,13164,0,8,13161,0,0,0,'',''),
(20,0,13164,0,8,13162,0,0,0,'',''),
(19,0,13164,0,8,13162,0,0,0,'',''),
(20,0,13164,0,8,13163,0,0,0,'',''),
(19,0,13164,0,8,13163,0,0,0,'','');


-- ##########################  Crusaders' Pinnacle ##########################
-- Judgment Day Comes! Allianz ... Next Quest: Honor Above All Else
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 13036, ExclusiveGroup = 13226, NextQuestInChain = 0 WHERE entry = 13226;
-- Judgment Day Comes! Horde ... Next Quest: Honor Above All Else
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 13036, ExclusiveGroup = 13226, NextQuestInChain = 0 WHERE entry = 13227;
-- Wenn das nicht funktioniert:
-- Honor Above All Else ... Prev: Judgment Day Comes! Allianz ODER Judgment Day Comes! Horde ... NextInChain: Scourge Tactics
-- DELETE FROM conditions WHERE SourceEntry = 13036 AND SourceTypeOrReferenceId IN (20,19);
-- INSERT INTO conditions VALUES
-- (20,0,13036,0,8,13226,0,0,0,'',''),
-- (19,0,13036,0,8,13226,0,0,0,'',''),
-- (20,0,13036,1,8,13227,0,0,0,'',''),
-- (19,0,13036,1,8,13227,0,0,0,'','');
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13008 WHERE entry = 13036;
-- Scourge Tactics ... Prev: Honor Above All Else
UPDATE quest_template SET PrevQuestId = 13036, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13008;
-- Defending The Vanguard ... Prev: Honor Above All Else
UPDATE quest_template SET PrevQuestId = 13036, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13039;
-- Curing The Incurable ... Prev: Honor Above All Else
UPDATE quest_template SET PrevQuestId = 13036, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13040;
-- If There Are Survivors... Prev: Scourge Tactics AND Defending The Vanguard AND Curing The Incurable
-- NextInChain: Into The Wild Green Yonder
UPDATE quest_template SET ExclusiveGroup = -13008 WHERE entry = 13008;
UPDATE quest_template SET ExclusiveGroup = -13008 WHERE entry = 13039;
UPDATE quest_template SET ExclusiveGroup = -13008 WHERE entry = 13040;
UPDATE quest_template SET PrevQuestId = 13008, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13045 WHERE entry = 13044;
-- Into The Wild Green Yonder ... Prev:  If There Are Survivors ... NextInChain: A Cold Front Approaches
UPDATE quest_template SET PrevQuestId = 13044, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13070 WHERE entry = 13045;
-- A Cold Front Approaches ... Prev: Into The Wild Green Yonder ... NextInChain: The Last Line Of Defense
UPDATE quest_template SET PrevQuestId = 13045, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13086 WHERE entry = 13070;
-- The Last Line Of Defense ... Prev: A Cold Front Approaches
UPDATE quest_template SET PrevQuestId = 13070, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13086;
-- Once More Unto The Breach, Hero
-- Once More Unto The Breach, Hero  DK only
UPDATE quest_template SET PrevQuestId = 13086, NextQuestId = 0, ExclusiveGroup = 13104, NextQuestInChain = 0 WHERE entry = 13104;
UPDATE quest_template SET PrevQuestId = 13086, NextQuestId = 0, ExclusiveGroup = 13104, NextQuestInChain = 0 WHERE entry = 13105;
-- The Scourgestone ... Prev: Once More Unto The Breach, Hero ODER Once More Unto The Breach, Hero DK only
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13122;
DELETE FROM conditions WHERE SourceEntry = 13122 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13122,0,8,13104,0,0,0,'',''),
(19,0,13122,0,8,13104,0,0,0,'',''),
(20,0,13122,1,8,13105,0,0,0,'',''),
(19,0,13122,1,8,13105,0,0,0,'','');
-- The Purging Of Scourgeholme ... Prev: Once More Unto The Breach, Hero ODER Once More Unto The Breach, Hero DK only
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13118;
DELETE FROM conditions WHERE SourceEntry = 13118 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13118,0,8,13104,0,0,0,'',''),
(19,0,13118,0,8,13104,0,0,0,'',''),
(20,0,13118,1,8,13105,0,0,0,'',''),
(19,0,13118,1,8,13105,0,0,0,'','');
-- The Restless Dead ... Prev: Once More Unto The Breach, Hero ODER Once More Unto The Breach, Hero DK only
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13110;
DELETE FROM conditions WHERE SourceEntry = 13110 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13110,0,8,13104,0,0,0,'',''),
(19,0,13110,0,8,13104,0,0,0,'',''),
(20,0,13110,1,8,13105,0,0,0,'',''),
(19,0,13110,1,8,13105,0,0,0,'','');
-- It Could Kill Us All ... Prev: Once More Unto The Breach, Hero ODER Once More Unto The Breach, Hero DK only
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13135;
DELETE FROM conditions WHERE SourceEntry = 13135 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13135,0,8,13104,0,0,0,'',''),
(19,0,13135,0,8,13104,0,0,0,'',''),
(20,0,13135,1,8,13105,0,0,0,'',''),
(19,0,13135,1,8,13105,0,0,0,'','');
-- The Stone That Started A Revolution ... Prev: Once More Unto The Breach, Hero ODER Once More Unto The Breach, Hero DK only
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13130;
DELETE FROM conditions WHERE SourceEntry = 13130 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13130,0,8,13104,0,0,0,'',''),
(19,0,13130,0,8,13104,0,0,0,'',''),
(20,0,13130,1,8,13105,0,0,0,'',''),
(19,0,13130,1,8,13105,0,0,0,'','');
-- The Air Stands Still ... Prev: The Scourgestone UND The Purging Of Scourgeholme
UPDATE quest_template SET NextQuestId = 13125, ExclusiveGroup = -13122 WHERE entry = 13122;
UPDATE quest_template SET NextQuestId = 13125, ExclusiveGroup = -13122 WHERE entry = 13118;
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13125;
-- Into The Frozen Heart Of Northrend ... Prev: The Air Stands Still AND The Restless Dead AND The Stone That Started A Revolution AND It Could Kill Us All
-- NextQuestInChain: The Battle For Crusaders' Pinnacle
UPDATE quest_template SET NextQuestId = 13139, ExclusiveGroup = -13135 WHERE entry = 13135;
UPDATE quest_template SET NextQuestId = 13139, ExclusiveGroup = -13135 WHERE entry = 13110;
UPDATE quest_template SET NextQuestId = 13139, ExclusiveGroup = -13135 WHERE entry = 13130;
UPDATE quest_template SET NextQuestId = 13139, ExclusiveGroup = -13135 WHERE entry = 13125;
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13141 WHERE entry = 13139;
-- The Battle For Crusaders' Pinnacle ... Prev: Into The Frozen Heart Of Northrend ... NextQuestInChain: The Crusaders' Pinnacle
UPDATE quest_template SET PrevQuestId = 13139, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13157 WHERE entry = 13141;
-- The Crusaders' Pinnacle ... PRev: The Battle For Crusaders' Pinnacle
UPDATE quest_template SET PrevQuestId = 13141, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13157;


-- ##########################  Orgrim's Hammer ##########################
-- ############# Complete Questlinking ##################################
--
-- DELETE FROM `creature_transport` WHERE `guid`=77 AND `transport_entry`=192241 AND `npc_entry`=31261;
-- INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
-- (77,192241,31261,52.5,5.3,30.5268,3.94314,0);
-- Orgrim's Hammer ... Prequest Crusader Pinacle
UPDATE quest_template SET PrevQuestId = 13157, NextQuestId = 0, ExclusiveGroup = 13225, NextQuestInChain = 0 WHERE entry = 13224;
-- Expoiting a Openinig ... Prev: Orgrim's Hammer AND The Shadow Vault - Next in Chain: Securing the Perimeter
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13224;
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13259 WHERE entry = 13258;
DELETE FROM conditions WHERE SourceEntry = 13258 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13258,0,8,12899,0,0,0,'',''),
(19,0,13258,0,8,12899,0,0,0,'',''),
(20,0,13258,0,8,13224,0,0,0,'',''),
(19,0,13258,0,8,13224,0,0,0,'','');
-- Blood of the Choosen ... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13330;
-- Joining the Assault ... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13340;
-- -- Assault by ... Prev: Joining the Assault
UPDATE quest_template SET PrevQuestId = 13340, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13310;
UPDATE quest_template SET PrevQuestId = 13340, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13301;
-- Mind Tricks ... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13308;
DELETE FROM conditions WHERE SourceEntry = 13308 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13308,0,8,13225,0,0,0,'',''),
(19,0,13308,0,8,13225,0,0,0,'',''),
(20,0,13308,1,8,13224,0,0,0,'',''),
(19,0,13308,1,8,13224,0,0,0,'','');
-- Slaves to Saronite ... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13302;
-- Get to Ymirheim! ... Prev: Orgrim's Hammer ... NextChain: King of the Mountain
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13283 WHERE entry = 13293;
-- -- King of the Mountain ... Prev Get to Ymirheim
UPDATE quest_template SET PrevQuestId = 13293, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13283;
-- The Broken Front ... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13228;
-- -- Avenge me... Prev: Orgrim's Hammer
UPDATE quest_template SET PrevQuestId = 13224, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13230;
-- Make Them Pay! ... Prev: The Broken Front
UPDATE quest_template SET PrevQuestId = 13228, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13234;
-- Good For Something? ... Prev: The Broken Front ... Next in Chain: Volatility
UPDATE quest_template SET PrevQuestId = 13228, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13239 WHERE entry = 13238;
-- -- Volatility
UPDATE quest_template SET PrevQuestId = 13238, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13239;
-- -- -- Volatility Daily ... Prev: Volatility
UPDATE quest_template SET PrevQuestId = 13239, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13261;
-- -- Green Technology ... Prev: Volatility ... NextinChain: Fringe Science Benefits
UPDATE quest_template SET PrevQuestId = 13239, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13373 WHERE entry = 13379;
-- -- -- Fringe Science Benefits
UPDATE quest_template SET PrevQuestId = 13379, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13373;
-- -- -- -- Riding the Wavelength: The Bombardment ... Prev: Fringe Science Benefits
UPDATE quest_template SET PrevQuestId = 13373, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13406;
-- -- -- -- Total Ohmage: The Valley of Lost Hope! ... Prev: Fringe Science Benefits
UPDATE quest_template SET PrevQuestId = 13373, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13376;
-- Takes One to Know One ... Prev: The Broken Front ... NextInChain: Poke and Prod
UPDATE quest_template SET PrevQuestId = 13228, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13237 WHERE entry = 13260;
-- Poke and Prod ... Prev: Takes One to Know One
UPDATE quest_template SET PrevQuestId =  13260, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13237;
-- Against the Giants ... Prev: Poke and Prod ... Next in Chain: Basic Chemistry
UPDATE quest_template SET PrevQuestId = 13237, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13279 WHERE entry = 13277;
-- Coprous the Defiled ... Prev: Against the Giants
UPDATE quest_template SET PrevQuestId = 13277, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13278;
-- Basic Chemistry ... Prev: Against the Giants
UPDATE quest_template SET PrevQuestId = 13277, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13279;
-- -- Neutralizing the Plague ... Prev: Basic Chemistry
UPDATE quest_template SET PrevQuestId = 13279, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13281;
-- That's Abominable! ... Prev: Poke and Prod 
UPDATE quest_template SET PrevQuestId = 13237, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13264;
-- -- That's Abominable! Daily ... Prev: That's Abominable!
UPDATE quest_template SET PrevQuestId = 13264, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13276;
-- Sneak Preview ... Prev: That's Abominable!
UPDATE quest_template SET PrevQuestId = 13264, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13351;
-- Chain of Command ... Prev: Sneak Preview
UPDATE quest_template SET PrevQuestId = 13351, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13354;
-- Cannot Reproduce ... Prev: Sneak Preview ... Next In Chain: Retest Now
UPDATE quest_template SET PrevQuestId = 13351, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13356 WHERE entry = 13355;
-- -- Retest Now ... Prev: Cannot Reproduce
UPDATE quest_template SET PrevQuestId = 13355, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13356;
-- -- Retest Now Daily ... Prev: Retest Now
UPDATE quest_template SET PrevQuestId = 13356, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13357;
-- Drag and Drop ... Prev: Sneak Preview  
UPDATE quest_template SET PrevQuestId = 13351, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13352;
-- -- Drag and Drop Daily ... Prev: Drag and Drop
UPDATE quest_template SET PrevQuestId = 13352, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13353;
-- -- Not a Bug ... Prev: Drag and Drop
UPDATE quest_template SET PrevQuestId = 13352, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13358;
-- -- -- Not a Bug Daily ... Prev: Not a Bug
UPDATE quest_template SET PrevQuestId = 13358, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13365;
-- Need more Info ... Prev: Drag and Drop ... Next in Chain: No Rest For The Wicked
UPDATE quest_template SET PrevQuestId = 13352, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13367 WHERE entry = 13366;
-- No Rest For the Wicked ... Prev: Need more Info 
UPDATE quest_template SET PrevQuestId = 13366, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13367;
-- -- No Rest For the Wicked Daily ... Prev: No Rest For the Wicked
UPDATE quest_template SET PrevQuestId = 13367, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13368;
-- Raise the Barricades ... Prev: Need more Info 
UPDATE quest_template SET PrevQuestId = 13366, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13306;
-- The Ironwall Rampart ... Prev: Raise the Barricades AND No Rest For the Wicked
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13312;
-- * NextQuestId not used yet so:
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13306;
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13367;
DELETE FROM conditions WHERE SourceEntry = 13312 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13312,0,8,13306,0,0,0,'',''),
(19,0,13312,0,8,13306,0,0,0,'',''),
(20,0,13312,0,8,13367,0,0,0,'',''),
(19,0,13312,0,8,13367,0,0,0,'','');
-- Blinding the Eyes in the Sky ... Prev: Raise the Barricades
UPDATE quest_template SET PrevQuestId = 13306, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13313;
-- -- Keeping the Alliance Blind ... Prev: Blinding the Eyes in the Sky
UPDATE quest_template SET PrevQuestId = 13313, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13331;
-- Bloodspattered Banners ... Prev: Raise the Barricades
UPDATE quest_template SET PrevQuestId = 13306, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13307;
-- Before the Gate of Horror ... Prev:  Bloodspattered Banners AND The Ironwall Rampart
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13329;
-- * NextQuestId not used yet so:
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13307;
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13312;
DELETE FROM conditions WHERE SourceEntry = 13329 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13329,0,8,13307,0,0,0,'',''),
(19,0,13329,0,8,13307,0,0,0,'',''),
(20,0,13329,0,8,13312,0,0,0,'',''),
(19,0,13329,0,8,13312,0,0,0,'','');
-- Shatter the Shards ... Prev: Before the Gate of Horror
UPDATE quest_template SET PrevQuestId = 13329, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13328;
-- The Guardians of Corp'rethar ... Prev: Before the Gate of Horror
UPDATE quest_template SET PrevQuestId = 13329, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13316;

-- ##########################  The Shadow Vault #########################
-- ############# Complete Questlinking ##################################

-- If He Cannot Be Turned Alliance ... Prev: Non ... NextInChain: The Shadow Vault
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12898 WHERE entry = 12896;
-- If He Cannot Be Turned Horde ... Prev: Non ... NextInChain: The Shadow Vault
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12899 WHERE entry = 12897;
-- The Shadow Vault Alliance... Prev: If He Cannot Be Turned Alliance ... NextInChain: The Duke
UPDATE quest_template SET PrevQuestId = 12896, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12938 WHERE entry = 12898;
-- The Shadow Vault Horde... Prev: If He Cannot Be Turned Alliance ... NextInChain: The Duke
UPDATE quest_template SET PrevQuestId = 12897, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12938 WHERE entry = 12899;
-- The Duke... Prev: The Shadow Vault Alliance OR Horde ... NextInChain: Honor Challenge
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12939 WHERE entry = 12938;
DELETE FROM conditions WHERE SourceEntry = 12938 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,12938,0,8,12898,0,0,0,'',''),
(19,0,12938,0,8,12898,0,0,0,'',''),
(20,0,12938,1,8,12899,0,0,0,'',''),
(19,0,12938,1,8,12899,0,0,0,'','');
-- Honor Challenge ... Prev: The Duke ... NextInChain: Shadow Vault Decree
UPDATE quest_template SET PrevQuestId = 12938, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12943 WHERE entry = 12939;
-- Shadow Vault Decree ... Prev: Honor Challenge
UPDATE quest_template SET PrevQuestId = 12939, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12943;
-- Get the Key ... Prev: Honor Challenge ... NextInChain: Let the Baron Know
UPDATE quest_template SET PrevQuestId = 12938, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12951 WHERE entry = 12949;
-- Let the Baron Know ... Prev: Get the Key 
UPDATE quest_template SET PrevQuestId = 12949, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12951;
-- Vandalizing Jotunheim ... Prev: Let the Baron Know AND Shadow Vault Decree 
UPDATE quest_template SET PrevQuestId = 12943, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13084;
DELETE FROM conditions WHERE SourceEntry = 13084 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13084,0,8,12951,0,0,0,'',''),
(19,0,13084,0,8,12951,0,0,0,'',''),
(20,0,13084,0,8,12943,0,0,0,'',''),
(19,0,13084,0,8,12943,0,0,0,'','');
-- Leave Our Mark ... Prev: Let the Baron Know AND Shadow Vault Decree 
UPDATE quest_template SET PrevQuestId = 12943, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12995;
DELETE FROM conditions WHERE SourceEntry = 12995 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,12995,0,8,12951,0,0,0,'',''),
(19,0,12995,0,8,12951,0,0,0,'',''),
(20,0,12995,0,8,12943,0,0,0,'',''),
(19,0,12995,0,8,12943,0,0,0,'','');
/*
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry = 23301;
INSERT INTO conditions VALUES
(13,0,23301,0,18,2,29880,0,0,'',''),
(13,0,23301,0,18,2,30243,0,0,'',''),
(13,0,23301,0,18,2,30632,0,0,'',''),
(13,0,23301,0,18,2,30725,0,0,'','');*/
-- Crush Dem Vrykuls! ... Prev: Let the Baron Know AND Shadow Vault Decree ... NextInChain: Vile Like Fire!
UPDATE quest_template SET PrevQuestId = 12943, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13071 WHERE entry = 12992;
DELETE FROM conditions WHERE SourceEntry = 12992 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,12992,0,8,12951,0,0,0,'',''),
(19,0,12992,0,8,12951,0,0,0,'',''),
(20,0,12992,0,8,12943,0,0,0,'',''),
(19,0,12992,0,8,12943,0,0,0,'','');
-- -- Vile Like Fire! ... Prev: Crush Dem Vrykuls!
UPDATE quest_template SET PrevQuestId = 12992, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13071;
-- Vaelen Has Returned ... Prev: Let the Baron Know AND Shadow Vault Decree ... NextInChain: Ebon Blade Prisoners
UPDATE quest_template SET PrevQuestId = 12943, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12982 WHERE entry = 13085;
-- Ebon Blade Prisoners ... Prev: Vaelen Has Returned
UPDATE quest_template SET PrevQuestId = 13085, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12982;
-- -- Shoot 'Em Up ... Prev: Ebon Blade Prisoners
UPDATE quest_template SET PrevQuestId = 12982, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13069;
-- To the Rise with all Due Haste! ... Prev: Ebon Blade Prisoners ... NextInChain: The Story Thus Far...
UPDATE quest_template SET PrevQuestId = 12982, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12807 WHERE entry = 12806;
-- The Story Thus Far... ... Prev: To the Rise with all Due Haste! ... NextInChain: Blood in the Water 
UPDATE quest_template SET PrevQuestId = 12806, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12810 WHERE entry = 12807;
-- Blood in the Water ... Prev: The Story Thus Far... ... NextInChain: You'll Need a Gryphon
UPDATE quest_template SET PrevQuestId = 12807, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12814 WHERE entry = 12810;
-- You'll Need a Gryphon
UPDATE quest_template SET PrevQuestId = 12810, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12814;
-- -- From Their Corpses, Rise! ... Prev: The Story Thus Far...
UPDATE quest_template SET PrevQuestId = 12807, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12813;
-- -- No Fly Zone ... Prev: You'll Need a Gryphon
UPDATE quest_template SET PrevQuestId = 12814, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12815;
-- -- Intelligence Gathering ... Prev: The Story Thus Far...
UPDATE quest_template SET PrevQuestId = 12807, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12838;
-- -- -- The Grand (Admiral's) Plan ... Prev:  The Story Thus Far... ... NextInChain: In Strict Confidence
UPDATE quest_template SET PrevQuestId = 12807, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12840 WHERE entry = 12839;
-- -- -- In Strict Confidence ... Prev: The Grand (Admiral's) Plan ... NextInChain: Second Chances
UPDATE quest_template SET PrevQuestId = 12839, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12847 WHERE entry = 12840;
-- -- -- Second Chances ... Prev: In Strict Confidence ... NextInChain: The Admiral Revealed
UPDATE quest_template SET PrevQuestId = 12840, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12852 WHERE entry = 12847;
-- -- -- The Admiral Revealed ... Prev: Second Chances
UPDATE quest_template SET PrevQuestId = 12847, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12852;

-- Eliminate the Competition ... Prev: The Duke ... NextInChain: The Bone Witch
UPDATE quest_template SET PrevQuestId = 12938, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12999 WHERE entry = 12955;
-- The Bone Witch ... Prev: Eliminate the Competition
UPDATE quest_template SET PrevQuestId = 12955, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12999;
-- -- Reading the Bones ... Prev: The Bone Witch
UPDATE quest_template SET PrevQuestId = 12999, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13092;
-- -- Reading the Bones Repeatable ... Prev: Reading the Bones
UPDATE quest_template SET PrevQuestId = 13092, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13093;
-- Deep in the Bowels of The Underhalls ... Prev: The Bone Witch
UPDATE quest_template SET PrevQuestId = 12999, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13042;
-- Revenge for the Vargul ... Prev: The Bone Witch
UPDATE quest_template SET PrevQuestId = 12999, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13059;
-- The Sum is Greater than the Parts ... Prev: The Bone Witch ... NextInChain: The Art of Being a Water Terror
UPDATE quest_template SET PrevQuestId = 12999, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13091 WHERE entry = 13043;
-- The Art of Being a Water Terror ... Prev: The Sum is Greater than the Parts ... NextInChain: Through the Eye
UPDATE quest_template SET PrevQuestId = 13043, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13121 WHERE entry = 13091;
--  Through the Eye ... Prev: The Art of Being a Water Terror ... NextInChain: Find the Ancient Hero
UPDATE quest_template SET PrevQuestId = 13091, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13133 WHERE entry = 13121;
-- Find the Ancient Hero ... Prev: Through the Eye  ... NextInChain: Not-So-Honorable Combat
UPDATE quest_template SET PrevQuestId = 13121, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13137 WHERE entry = 13133;
-- Not-So-Honorable Combat ... Prev: Find the Ancient Hero  ... NextInChain: Banshee's Revenge
UPDATE quest_template SET PrevQuestId = 13133, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13142 WHERE entry =13137;
-- Banshee's Revenge ... Prev: Not-So-Honorable Combat ... NextInChain: Battle at Valhalas
UPDATE quest_template SET PrevQuestId = 13137, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13213 WHERE entry = 13142;
-- Battle at Valhalas ... Prev: Banshee's Revenge
UPDATE quest_template SET PrevQuestId = 13142, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13213;
-- Battle at Valhalas: Fallen Heroes ... Prev: Battle at Valhalas
UPDATE quest_template SET PrevQuestId = 13213, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13214;
-- Battle at Valhalas: Khit'rix the Dark Master ... Prev: Battle at Valhalas: Fallen Heroes
UPDATE quest_template SET PrevQuestId = 13214, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13215;
-- Battle at Valhalas: The Return of Sigrid Iceborn ... Prev: Battle at Valhalas: Khit'rix the Dark Master
UPDATE quest_template SET PrevQuestId = 13215, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13216;
-- Battle at Valhalas: Carnage! ... Prev: Battle at Valhalas: The Return of Sigrid Iceborn
UPDATE quest_template SET PrevQuestId = 13216, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13217;
-- Battle at Valhalas: Thane Deathblow ... Prev: Battle at Valhalas: Carnage!
UPDATE quest_template SET PrevQuestId = 13217, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13218;
-- Battle at Valhalas: Final Challenge ... Prev: Battle at Valhalas: Thane Deathblow
UPDATE quest_template SET PrevQuestId = 13217, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13219;

-- ##########################  The Skybreaker ###########################
-- ############# Complete Questlinking ##################################

-- The Skybreaker ... Prequest Crusader Pinacle
UPDATE quest_template SET PrevQuestId = 13157, NextQuestId = 0, ExclusiveGroup = 13225, NextQuestInChain = 0 WHERE entry = 13225;
-- Expoiting a Openinig ... Prev: The Skybreaker AND The Shadow Vault - Next in Chain: Securing the Perimeter
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13225;
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13387 WHERE entry = 13386;
DELETE FROM conditions WHERE SourceEntry = 13386 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13386,0,8,12898,0,0,0,'',''),
(19,0,13386,0,8,12898,0,0,0,'',''),
(20,0,13386,0,8,13225,0,0,0,'',''),
(19,0,13386,0,8,13225,0,0,0,'','');
-- Blood of the Choosen ... Prev: The Skybreaker
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13336;
-- Joining the Assault ... Prev: The Skybreaker
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13341;
-- -- Assault by ... Prev: Joining the Assault
UPDATE quest_template SET PrevQuestId = 13341, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13309;
UPDATE quest_template SET PrevQuestId = 13341, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13284;
-- Mind Tricks ... Prev: Skybreaker OR Orgrims Hammer
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13308;
DELETE FROM conditions WHERE SourceEntry = 13308 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13308,0,8,13225,0,0,0,'',''),
(19,0,13308,0,8,13225,0,0,0,'',''),
(20,0,13308,1,8,13224,0,0,0,'',''),
(19,0,13308,1,8,13224,0,0,0,'','');
-- Slaves to Saronite ... Prev: Skybreaker
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13300;
-- Get to Ymirheim! ... Prev: Skybreaker ... NextChain: King of the Mountain
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13280 WHERE entry = 13296;
-- -- King of the Mountain ... Prev Get to Ymirheim
UPDATE quest_template SET PrevQuestId = 13296, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13280;
-- The Broken Front ... Prev: Skybreaker
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13231;
-- -- Finish Me ... Prev: Skybreaker
UPDATE quest_template SET PrevQuestId = 13225, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13232;
-- No Mercy ... Prev: The Broken Front
UPDATE quest_template SET PrevQuestId = 13231, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13233;
-- Your Attention, Please ... Prev: The Broken Front ... Next in Chain: Borrowed Technology
UPDATE quest_template SET PrevQuestId = 13231, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13291 WHERE entry = 13290;
-- -- Borrowed Technology
UPDATE quest_template SET PrevQuestId = 13290, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13291;
-- -- -- The Solution Solution Prev: Borrowed Technology
UPDATE quest_template SET PrevQuestId = 13291, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13292;
-- -- Killohertz ... Prev: Borrowed Technology ... NextinChain: Leading the Charge
UPDATE quest_template SET PrevQuestId = 13291, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13380 WHERE entry = 13383;
-- -- -- Leading the Charge
UPDATE quest_template SET PrevQuestId = 13383, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13380;
-- -- -- -- Static Shock Troops: the Bombardment Prev: Leading the Charge
UPDATE quest_template SET PrevQuestId = 13380, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13404;
-- -- -- -- Putting the Hertz: The Valley of Lost Hope Prev: Leading the Charge
UPDATE quest_template SET PrevQuestId = 13380, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13382;
-- ...All the Help We Can Get. ... Prev: The Broken Front ... NextInChain: Poke and Prod
UPDATE quest_template SET PrevQuestId = 13231, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13287 WHERE entry = 13286;
-- Poke and Prod ... Prev: ...All the Help We Can Get.
UPDATE quest_template SET PrevQuestId = 13286, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13287;
-- Against the Giants ... Prev: Poke and Prod ... Next in Chain: Basic Chemistry
UPDATE quest_template SET PrevQuestId = 13287, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13295 WHERE entry = 13294;
-- Coprous the Defiled ... Prev: Against the Giants
UPDATE quest_template SET PrevQuestId = 13294, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13298;
-- Basic Chemistry ... Prev: Against the Giants
UPDATE quest_template SET PrevQuestId = 13294, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13295;
-- -- Neutralizing the Plague ... Prev: Basic Chemistry
UPDATE quest_template SET PrevQuestId = 13295, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13297;
-- That's Abominable! ... Prev: Poke and Prod 
UPDATE quest_template SET PrevQuestId = 13287, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13288;
-- -- That's Abominable! Daily ... Prev: That's Abominable!
UPDATE quest_template SET PrevQuestId = 13288, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13289;
-- Sneak Preview ... Prev: That's Abominable!
UPDATE quest_template SET PrevQuestId = 13288, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13315;
-- Chain of Command ... Prev: Sneak Preview
UPDATE quest_template SET PrevQuestId = 13315, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13319;
-- Cannot Reproduce ... Prev: Sneak Preview ... Next In Chain: Retest Now
UPDATE quest_template SET PrevQuestId = 13315, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13321 WHERE entry = 13320;
-- -- Retest Now ... Prev: Cannot Reproduce
UPDATE quest_template SET PrevQuestId = 13320, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13321;
-- -- Retest Now Daily ... Prev: Retest Now
UPDATE quest_template SET PrevQuestId = 13321, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13322;
-- Drag and Drop ... Prev: Sneak Preview  
UPDATE quest_template SET PrevQuestId = 13315, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13318;
-- -- Drag and Drop Daily ... Prev: Drag and Drop
UPDATE quest_template SET PrevQuestId = 13318, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13323;
-- -- Not a Bug ... Prev: Drag and Drop
UPDATE quest_template SET PrevQuestId = 13318, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13342;
-- -- -- Not a Bug Daily ... Prev: Not a Bug
UPDATE quest_template SET PrevQuestId = 13342, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13344;
-- Need more Info ... Prev: Drag and Drop ... Next in Chain: No Rest For The Wicked
UPDATE quest_template SET PrevQuestId = 13318, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 13346 WHERE entry = 13345;
-- No Rest For the Wicked ... Prev: Need more Info 
UPDATE quest_template SET PrevQuestId = 13345, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13346;
-- -- No Rest For the Wicked Daily ... Prev: No Rest For the Wicked
UPDATE quest_template SET PrevQuestId = 13346, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13350;
-- Raise the Barricades ... Prev: Need more Info 
UPDATE quest_template SET PrevQuestId = 13345, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13332;
-- The Ironwall Rampart ... Prev: Raise the Barricades AND No Rest For the Wicked
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13337;
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13346;
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13332;
DELETE FROM conditions WHERE SourceEntry = 13337 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13337,0,8,13346,0,0,0,'',''),
(19,0,13337,0,8,13346,0,0,0,'',''),
(20,0,13337,0,8,13332,0,0,0,'',''),
(19,0,13337,0,8,13332,0,0,0,'','');
-- Get the Message ... Prev: Raise the Barricades
UPDATE quest_template SET PrevQuestId = 13332, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13314;
-- -- Capture More Dispatches ... Prev: Get the Message
UPDATE quest_template SET PrevQuestId = 13314, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13333;
-- Bloodspattered Banners ... Prev: Raise the Barricades
UPDATE quest_template SET PrevQuestId = 13332, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13334;
-- Before the Gate of Horror ... Prev:  Bloodspattered Banners AND The Ironwall Rampart
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13335;
-- * NextQuestId not used yet so:
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13334;
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 13337;
DELETE FROM conditions WHERE SourceEntry = 13335 AND SourceTypeOrReferenceId IN (20,19);
INSERT INTO conditions VALUES
(20,0,13335,0,8,13334,0,0,0,'',''),
(19,0,13335,0,8,13334,0,0,0,'',''),
(20,0,13335,0,8,13337,0,0,0,'',''),
(19,0,13335,0,8,13337,0,0,0,'','');
-- Shatter the Shards ... Prev: Before the Gate of Horror
UPDATE quest_template SET PrevQuestId = 13335, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13339;
-- The Guardians of Corp'rethar ... Prev: Before the Gate of Horror
UPDATE quest_template SET PrevQuestId = 13335, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 13338;


-- Scripts
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=29747;
DELETE FROM `smart_scripts` WHERE `entryorguid`=29747;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|268435456,`AIName`='',`InhabitType`=`InhabitType`|4,`ScriptName`='npc_the_ocular' WHERE `entry`=29747;
UPDATE `creature_model_info` SET `combat_reach`=100 WHERE `modelid`=26533;
DELETE FROM `creature_template_addon` WHERE `entry`=29747;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(29747,0,0,0,0,0,'55162'); -- The Ocular: Transform
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2|33554432 WHERE `entry`=29790;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=30740;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,30740,0,18,1,29747,0,63,'','Eyesore Blaster only target The Oculus');
UPDATE `creature_template` SET faction_A = 2050, faction_H = 2050 WHERE `entry` in (29860,29859,29858);
UPDATE `creature_template` SET AIName='', `ScriptName`='npc_general_lightsbane' WHERE `entry` = 29851;
UPDATE `creature_template` SET `dmg_multiplier`=2 WHERE `entry` = 29851;
UPDATE `creature_template` SET ScriptName = 'npc_saronite_mine_slave' WHERE `entry` = 31397;
UPDATE `creature_template` SET ScriptName = 'npc_free_your_mind' WHERE `entry` IN (29769,29770,29840);