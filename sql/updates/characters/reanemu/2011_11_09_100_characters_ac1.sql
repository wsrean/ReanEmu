CREATE TABLE `cheaters` (
  `entry` bigint(20) NOT NULL AUTO_INCREMENT,
  `player` varchar(255) NOT NULL,
  `acctid` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT 'unknown',
  `speed` float NOT NULL DEFAULT '0',
  `Val1` float NOT NULL DEFAULT '0',
  `Val2` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `Map` smallint(5) NOT NULL DEFAULT '-1',
  `mapEntry` varchar(255) NOT NULL DEFAULT '0',
  `zone_id` smallint(5) NOT NULL,
  `zoneEntry` varchar(255) NOT NULL DEFAULT '0',
  `area_id` smallint(5) NOT NULL,
  `areaEntry` varchar(255) NOT NULL DEFAULT '0',
  `Level` mediumint(9) NOT NULL DEFAULT '0',
  `first_date` datetime NOT NULL,
  `last_date` datetime NOT NULL,
  `Op` varchar(255) NOT NULL DEFAULT 'unknown',
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `t_guid` int(11) NOT NULL,
  `flags` int(11) NOT NULL,
  `falltime` smallint(5) NOT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_Count` (`count`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

ALTER TABLE `cheaters`
   ADD COLUMN `zone_id` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `Map`,
   ADD COLUMN `area_id` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `zone_id`,
   ADD COLUMN `mapEntry` VARCHAR(255) NOT NULL DEFAULT '0' AFTER `Map`,
   ADD COLUMN `zoneEntry` VARCHAR(255) NOT NULL DEFAULT '0' AFTER `zone_id`,
   ADD COLUMN `areaEntry` VARCHAR(255) NOT NULL DEFAULT '0' AFTER `area_id`,
   ADD COLUMN `startX` FLOAT NOT NULL AFTER `Op`,
   ADD COLUMN `startY` FLOAT NOT NULL AFTER `startX`,
   ADD COLUMN `startZ` FLOAT NOT NULL AFTER `startY`,
   ADD COLUMN `endX` FLOAT NOT NULL AFTER `startZ`,
   ADD COLUMN `endY` FLOAT NOT NULL AFTER `endX`,
   ADD COLUMN `endZ` FLOAT NOT NULL AFTER `endY`,
   ADD COLUMN `t_guid` INT(11) NOT NULL DEFAULT '0' AFTER `endZ`,
   ADD COLUMN `flags` INT(11) NOT NULL DEFAULT '0' AFTER `t_guid`,
   ADD COLUMN `falltime` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `flags`;

-- Procedure to import pos data to new columns thx to Spp.
DELIMITER //
DROP PROCEDURE IF EXISTS ac1Update//
CREATE PROCEDURE ac1Update()
BEGIN
    DECLARE Entry1 varchar(255);
    DECLARE Pos1 varchar(255);
    DECLARE done int DEFAULT 0;
    DECLARE cur1 CURSOR FOR SELECT entry, pos FROM cheaters;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur1;

    read_loop: LOOP
        FETCH cur1 INTO Entry1, Pos1;
        IF done THEN
            LEAVE read_loop;
        END IF;

        IF CHAR_LENGTH(Pos1) > 1 THEN
            SET @StartX   = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 2), ' ', -1);
            SET @StartY   = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 3), ' ', -1);
            SET @StartZ   = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 4), ' ', -1);
            SET @EndX     = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 6), ' ', -1);
            SET @EndY     = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 7), ' ', -1);
            SET @EndZ     = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 8), ' ', -1);
            SET @Flags    = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 10), ' ', -1);
            SET @TGuid    = SUBSTRING_INDEX(SUBSTRING_INDEX(Pos1, ' ', 12), ' ', -1);
            SET @FallTime = SUBSTRING_INDEX(Pos1, ' ', -1);
            UPDATE cheaters SET startX = @StartX, startY = @StartY, startZ = @StartZ, endX = @EndX, endY = @EndY, endZ = @EndZ, flags = @Flags, falltime = @Falltime WHERE entry = Entry1;
        END IF;
    END LOOP;
    CLOSE cur1;
END; //

DELIMITER ;
call ac1Update();

ALTER TABLE `cheaters` DROP COLUMN `Pos`;