/* World trinity_string */
SET NAMES 'utf8';
DELETE FROM trinity_string WHERE `entry` IN (950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983);

INSERT INTO `trinity_string` VALUES 
('950', 'Has sido encarcelado por %s durante %u minuto(s)!', null, null, null, null, null, null, null, null),
('951', '%s escribio como razon: %s', null, null, null, null, null, null, null, null),
('952', '%s encarcelado por %u minuto(s).', null, null, null, null, null, null, null, null),
('953', 'Has sido liberado de la carcel por %s.', null, null, null, null, null, null, null, null),
('954', 'Has liberado a %s de la carcel.', null, null, null, null, null, null, null, null),
('955', 'Razon no ingresada o %u caracteres escritos!', null, null, null, null, null, null, null, null),
('956', 'Nombre no ingresado!', null, null, null, null, null, null, null, null),
('957', 'Tiempo no ingresado!', null, null, null, null, null, null, null, null),
('958', 'El tiempo en carcel debe estar entre 1 y %u minutos!', null, null, null, null, null, null, null, null),
('959', 'Pj %s no encarcelado!', null, null, null, null, null, null, null, null),
('960', 'Comando prohibido para pjs encarcelados!', null, null, null, null, null, null, null, null),
('961', 'Te queda %u minuto(s) restantes en la carcel.', null, null, null, null, null, null, null, null),
('962', 'Te queda %u segundo(s) restantes en la carcel.', null, null, null, null, null, null, null, null),
('963', 'Eres libre! Evita ser encarcelado otra vez! ;-)', null, null, null, null, null, null, null, null),
('964', '%s ha sido %u veces encarcelado y tiene %u minuto(s) restantes. Ultima vez encarcelado el %s. Razon: %s', null, null, null, null, null, null, null, null),
('965', '%s nunca ha sido encarcelado.', null, null, null, null, null, null, null, null),
('966', 'No puedes encarcelarte a ti mismo!', null, null, null, null, null, null, null, null),
('967', 'No puedes liberarte a ti mismo!', null, null, null, null, null, null, null, null),
('968', '|cffff0000[!!! ATENCION !!!\r\n Has estado %u veces en la carcel. Si llegas a estar encarcelado un total de %u veces, tu pj sera borrado automaticamente\r\n|cffff0000!!! ATENCION !!!]', null, null, null, null, null, null, null, null),
('969', 'El pj ', null, null, null, null, null, null, null, null),
('970', ' ha sido encarcelado por ', null, null, null, null, null, null, null, null),
('971', ' minuto(s) por ', null, null, null, null, null, null, null, null),
('972', '. Razon: ', null, null, null, null, null, null, null, null),
('973', 'Configuracion del sistema Jail actualizada.', null, null, null, null, null, null, null, null),
('974', '>> Trinity Jail configuracion cargada.', null, null, null, null, null, null, null, null),
('975', 'No se puede cargar la config! Tabla vacia o no existente! Usar characters_jail.sql!', null, null, null, null, null, null, null, null),
('976', 'Configurado sistema Jail con valores por defecto...', null, null, null, null, null, null, null, null),
('977', 'El pj \'%s\'  es encarcelado y teleportado a la carcel.', null, null, null, null, null, null, null, null),
('978', 'El pj \'%s\'  ha sido liberado de la carcel.', null, null, null, null, null, null, null, null),
('979', 'No existe un pj con ese nombre!', null, null, null, null, null, null, null, null),
('980', '|cffff0000[!!! ATENCION !!!\r\n Has estado %u veces en la carcel. Si llegas a estar un total de %u veces, tu cuenta sera baneada automaticamente!\r\n|cffff0000!!! ATENCION !!!]', null, null, null, null, null, null, null, null),
('981', 'Maximo de veces en carcel alcanzado!', null, null, null, null, null, null, null, null),
('982', 'Sistema Jail', null, null, null, null, null, null, null, null),
('983', 'Estado de Jail reseteado a 0', null, null, null, null, null, null, null, null);

/* World Command English */
DELETE FROM `command` WHERE name IN ('jail','jailinfo','unjail','jailreload');
INSERT INTO `command` (name, security, help) VALUES
('jail', 1, 'Sintaxis: .jail nombre_pj minutos razon\nEncarcelar al \'nombre_pj\' durante \'minutos\' con la razon \'razon\'.'),
('jailinfo', 0, 'Sntaxis: .jailinfo\nMuestra estado de Jail del pj seleccionado.'),
('unjail', 1, 'Sintaxis: .unjail nombre_pj\nLibera al \'nombre_pj\' fuera de la carcel.'),
('jailreload', 3, 'Sintaxis: .jailreload\nRecarca la config del Sistema Jail.');

