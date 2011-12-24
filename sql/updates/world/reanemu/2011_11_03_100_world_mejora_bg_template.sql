-- Pesos en bg para mejor jugabilidad y cambio de minimo maximo por faccion
-- Alterac 10%
UPDATE battleground_template SET MinPlayersPerTeam=20,MaxPlayersPerTeam=25,Weight=1 WHERE `id`=1;
-- Grito de Guerra 80%
UPDATE battleground_template SET MinPlayersPerTeam=8,MaxPlayersPerTeam=10,Weight=8 WHERE `id`=2;
-- Arathi 60%
UPDATE battleground_template SET MinPlayersPerTeam=8,MaxPlayersPerTeam=15,Weight=6 WHERE `id`=3;
-- Ojo de tormenta 70%
UPDATE battleground_template SET MinPlayersPerTeam=8,MaxPlayersPerTeam=15,Weight=7 WHERE `id`=7;
-- Playa de ancestros 20%
UPDATE battleground_template SET MinPlayersPerTeam=7,MaxPlayersPerTeam=15,Weight=2 WHERE `id`=9;
-- Isla de conquista 30%
UPDATE battleground_template SET MinPlayersPerTeam=20,MaxPlayersPerTeam=25,Weight=3 WHERE `id`=30;