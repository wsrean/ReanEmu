-- Reset del logro "Haz que cuente"
UPDATE worldstates SET value=256 WHERE entry=20004;
INSERT INTO stored_db_queries VALUES
(2, 'Borrado del logro "Haz que cuente"', 0, 'DELETE FROM `character_achievement` WHERE achievement = 1868;');