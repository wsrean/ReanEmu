/*#########################################################
###########################################################
##       WS script 2011 -- BOSS Brutalius & WoW Rean     ##
##                    ..:::::::::..                      ##
##                ..:::aad8888888baa:::..                ##
##             .::::d:?88888888888?::8b::::.             ##
##           .:::d8888:?88888888??a888888b:::.           ##
##         .:::d8888888a8888888aa8888888888b:::.         ##
##        ::::dP::::::::88--WS--888::::::::Yb::::        ##
##       ::::dP:::::::::Y888888888P:::::::::Yb::::       ##
##      ::::d8:::::::::::Y8888888P:::::::::::8b::::      ##
##     .::::88::::::::::::Y88888P::::::::::::88::::.     ##
##     :::::Y8baaaaaaaaaa88P:T:Y88aaaaaaaaaad8P:::::     ##
##     :::::::Y88888888888P::|::Y88888888888P:::::::     ##
##     ::::::::::::::::888:::|:::888::::::::::::::::     ##
##     .:::::::::::::::8888888888888b::::::::::::::.     ##
##      :::::::::::::::88888888888888::::::::::::::      ##
##       :::::::::::::d88888888888888:::::::::::::'      ##
##        ::::::::::::88::88::88:::88::::::::::::'       ##
##         `::::::::::88::88::88:::88::::::::::'         ##
##           `::::::::88::88::P::::88::::::::'           ##
##             `::::::88::88:::::::88::::::'             ##
##                ``:::::::::::::::::::''                ##
##                     `:::::::::''                      ##
##                                                       ##
###########################################################
#########################################################*/
#include "ScriptPCH.h"

enum
{
	DATA_TEAM,
    DATA_ATTEMPTS,
	UPDATE_DEATHS_COUNT,
    DATA_DEATHS_COUNT,
};

struct Locations
{
    float x, y, z;
};

#define ANGEL  5000020
#define	ANGEL2 5000021
#define NPC_SOLDADO  5000015
#define BOSS_LISA_ALI   5000022
#define BOSS_LISA_HORDA 5000023
#define BOSS_BRUTALLUS2         5000014

enum eYell
{
    //me->SetInCombatWithZone(); = -1760035,
    SAY_VARIAN_KILL_HORDE_PLAYER4     = -1760039,
    SAY_WIN_A                         = -1760040,
    SAY_WIN_H                         = -1760041
};

enum eAIs
{
    AI_MELEE    = 0,
    AI_RANGED   = 1,
    AI_HEALER   = 2,
    AI_PET      = 3
};

/*-----------------------------------------------------------------------------------------------*
*       spell           ||       ID          ||       Definición          || SPELL+ID+DEFINICIÓN *
*------------------------------------------------------------------------------------------------*
*  - Todas las spell definidas para los npc.                                                     *
*------------------------------------------------------------------------------------------------*
*  - Npc para diferentes eventos soportados:                                                     *
*------------------------------------------------------------------------------------------------*
*  - Npc evento soportado: ASIRIUS EVENT by WS (evento 1)                                        *
*------------------------------------------------------------------------------------------------*
*  - Npc evento soportado:                       (evento 2)                                      *
*------------------------------------------------------------------------------------------------*/
enum Spells {
	SPELL_HAZ_PECAMINOSO        = 40827,     // Haz pecaminoso: Golpea a un enemigo con energía de las Sombras que salta a otro enemigo cercano. El hechizo afecta a un máximo de 10 objetivos.
    SPELL_ANTI_AOE              = 68595,     // Égida de Campeón: Reduce el daño de fuentes de área de efecto un 75%.
    SPELL_PVP_TRINKET           = 65547,     // Abalorio JcJ: Disipa todos los efectos de merma de movimiento y todos los efectos que provocan pérdida de control de tu personaje.
    SPELL_LIFEBLOOM             = 66093,     // Flor de vida: Sana 1885 to 2115 p. cada segundo y 9250 to 10750 p. cuando el efecto se acaba o se disipa.
    SPELL_NOURISH               = 66066,     // Nutrir: Sana a un objetivo amistoso 27750 to 32250 p.
    SPELL_REGROWTH              = 66067,     // Recrecimiento: Sana a un objetivo amistoso 18900 to 21100 p. y otros 32375 to 37625 p. durante 21 s.
    SPELL_REJUVENATION          = 66065,     // Rejuvenecimiento: Sana al objetivo 92500 to 107500 p. durante 15 s.
    SPELL_TRANQUILITY           = 66086,     // Tranquilidad: Regenera a todos los miembros del grupo cercanos 37000 to 43000 p. cada 2 s durante 10 s. Canalizado.
    SPELL_BARKSKIN              = 65860,     // Piel de corteza: La piel del druida se endurece como la corteza de un árbol. Todo el daño recibido se reduce un 40%. Se puede usar mientras se está aturdido, congelado, incapacitado, asustado o dormido. Se puede usar bajo todas las formas. Dura 12 s.
    SPELL_THORNS                = 66068,     // Espinas: Hace que salgan espinas del objetivo amistoso que infligen 463 to 537 p. de daño de Naturaleza cuando los atacantes golpean. Dura 10 min.
    SPELL_NATURE_GRASP          = 66071,     // Trabazón con la Naturaleza: Mientras esté activo, cada vez que un enemigo ataque al taumaturgo tendrá un 100% de probabilidad de ser afligido por Raíces enredadoras. 1 cargas. Dura 45 s.
    SPELL_HEALING_WAVE          = 66055,     // Ola de sanación inferior: Sana a un objetivo amistoso 18670 to 21330 p
    SPELL_RIPTIDE               = 66053,     // Mareas Vivas: Sana a un objetivo amistoso 9600 to 10400 p. y otros 20815 to 24185 p. durante 15 s.
    SPELL_SPIRIT_CLEANSE        = 66056,     // Limpiar espíritu: Limpia el espíritu de un objetivo amistoso, disipando 1 efecto de veneno, 1 efecto de enfermedad y 1 efecto de maldición.
    SPELL_HEROISM               = 65983,     // Heroísmo: Aumenta la velocidad cuerpo a cuerpo, a distancia y de lanzamiento de hechizos de todos los miembros del grupo y banda un 30%. Dura 40 s.
    SPELL_BLOODLUST             = 65980,     // Ansia de sangre: Aumenta la velocidad cuerpo a cuerpo, a distancia y de lanzamiento de hechizos de todos los miembros del grupo un 30%. Dura 40 s.
    SPELL_HEX                   = 66054,     // Maleficio: Transforma al enemigo en una rana. Mientras esté bajo el maleficio, el objetivo hechizado no puede ni atacar ni lanzar hechizos. Si se le inflige daño, se puede interrumpir el efecto. Dura 8 s. Solo se puede echar un maleficio a un objetivo a la vez. Solo funciona con humanoides y bestias.
    SPELL_EARTH_SHIELD          = 66063,     // Escudo de tierra: Protege al objetivo con un escudo de tierra que hace que los ataques sanen al objetivo protegido. Este efecto solo ocurre una vez cada pocos segundos. 6 cargas. Dura 2 min. 
    SPELL_EARTH_SHOCK           = 65973,     // Choque de tierra: Choque instantáneo con fuerza de conmoción que inflige 2142 to 2258 p. de daño de Naturaleza al objetivo. También interrumpe el lanzamiento de hechizos e impide que se lance cualquier hechizo de esa misma escuela durante 2 s.
    AURA_EXHAUSTION             = 57723,     // Agotamiento: No puede beneficiarse de Heroísmo. 
    AURA_SATED                  = 57724,     // Saciado: No puede beneficiarse de Ansia de sangre. 
    SPELL_HAND_OF_FREEDOM       = 68757,     // Mano de libertad: Da a un objetivo amistoso una Mano que le concede inmunidad a los efectos que impiden el movimiento durante 10 s. Los jugadores solo pueden tener una Mano activa por paladín a la vez.
    SPELL_BUBBLE                = 66010,     // Escudo divino: Protege al paladín de todo el daño y hechizos durante 12 s pero reduce el daño que inflijas un 50%. Una vez protegido, Escudo divino, Protección divina y Mano de protección no pueden proteger al objetivo de nuevo durante 1 min. No se puede usar a menos de <Un % viva indefinido> de haber usado Cólera vengativa.
    SPELL_CLEANSE               = 66116,     // Limpiar: Purga a un objetivo amistoso, lo que elimina 1 efecto de envenenamiento, 1 efecto de enfermedad y 1 efecto de magia.
    SPELL_FLASH_OF_LIGHT        = 66113,     // Destello de Luz: Sana a un objetivo amistoso 18850 to 21150 p.
    SPELL_HOLY_LIGHT            = 66112,     // Luz Sagrada: Sana a un objetivo amistoso 28380 to 31620 p. 
    SPELL_HOLY_SHOCK            = 66114,     // Choque Sagrado: Golpea al objetivo con energía Sagrada, inflige <Unknown value - The spell referenced no longer exists> p. de daño Sagrado a un enemigo o sana <Un % indefinido> p. a un aliado. 
    SPELL_HAND_OF_PROTECTION    = 66009,     // Mano de protección: Protege a un miembro aliado seleccionado de todos los ataques físicos durante 10 s.
    SPELL_HAMMER_OF_JUSTICE     = 66613,     //Martillo de Justicia:Aturde al objetivo durante 6 s. 
    SPELL_RENEW                 = 66177,     //Renovar:Sana al objetivo 46250 to 53750 p. durante 15 s. 
    SPELL_SHIELD                = 66099,     //Palabra de poder: escudo: Refuerza con un escudo el alma de un miembro del grupo, amortiguando 9713 to 11287 p. de daño. Dura 30 s. Mientras dura el escudo, el lanzamiento de hechizos no se verá interrumpido por el daño. Una vez protegido, el objetivo no puede recibir protección de nuevo hasta pasados 15 s. 
    SPELL_FLASH_HEAL            = 66104,     //Sanación relámpago: Sana a un objetivo amistoso 18500 to 21500 p.
    SPELL_DISPEL                = 65546,     //Disipar magia: Elimina la magia del objetivo, suprimiendo 2 efecto dañino de un amigo o 2 hechizo beneficioso de un enemigo.  
    SPELL_PSYCHIC_SCREAM        = 65543,     //Alarido psíquico: Emite un alarido psíquico que hace huir a los enemigos cercanos durante 8 s. 
    SPELL_MANA_BURN             = 66100,     //Quemadura de maná: Destruye 2246 to 2374 p. de maná de un objetivo. Por cada punto de maná destruido, el objetivo recibe 3 p. de daño de las Sombras. 
    SPELL_SILENCE               = 65542,     //Silencio: Silencia al objetivo impidiendo que lance hechizos durante 5 s. 
    SPELL_VAMPIRIC_TOUCH        = 65490,     //Toque vampírico: Inflige 12375 to 15125 p. de daño de las Sombras durante 15 s a tu objetivo. 
    SPELL_SW_PAIN               = 65541,     //Palabra de las Sombras: dolor: Pronuncia una palabra de oscuridad que inflige daño de las Sombras a un enemigo cada 3 s durante 15 s. 
    SPELL_MIND_FLAY             = 65488,     //Tortura mental: Inflige daño de las Sombras a un enemigo y reduce su velocidad de movimiento durante 3 s. 
    SPELL_MIND_BLAST            = 65492,     //Explosión mental: Golpea al objetivo y le inflige 5198 to 5802 p. de daño de las Sombras. 
    SPELL_HORROR                = 65545,     //Horror psíquico: Aterrorizas al objetivo y provocas que tiemble de horror durante 3 s y que tire las armas de mano principal y a distancia durante 10 s. 
    SPELL_DISPERSION            = 65544,     //Dispersión: Te conviertes en energía de las Sombras pura y reduces todo el daño recibido un 90%. No puedes atacar ni lanzar hechizos, pero regeneras un 6% de maná cada segundo durante 6 s. Dispersión se puede lanzar mientras estás aturdido, asustado o silenciado, quita todos los efectos de frenado y de reducción del movimiento al lanzarlo y te hace inmune a ellos mientras dura. 
    SPELL_SHADOWFORM            = 16592,     //Forma de las Sombras: Adoptas la forma de las Sombras, lo que aumenta el daño de las Sombras que infliges un 20% y reduce el daño cuerpo a cuerpo recibido un 20%. Forma de las Sombras dura hasta que se desactiva. 
    SPELL_HELLFIRE              = 65816,     //Llamas infernales: Prende el área que rodea al taumaturgo, infligiéndose 1500 p. de daño de Fuego a sí mismo y 2500 p. de daño de Fuego a todos los demás enemigos cercanos cada 1 s. Dura 15 s. 
    SPELL_CORRUPTION            = 65810,     //Corrupción: Corrompe al objetivo, inflige 18000 p. de daño de las Sombras durante 18 s. 
    SPELL_CURSE_OF_AGONY        = 65814,     //Maldición de agonía: Lanza sobre el objetivo una Maldición de agonía, lo que inflige 24000 p. de daño de las Sombras durante 24 s. El daño se inflige despacio al principio y aumenta progresivamente a medida que la maldición alcanza su duración completa. Un brujo solo puede tener una maldición activa a la vez sobre un mismo objetivo. 
    SPELL_CURSE_OF_EXHAUSTION   = 65815,     //Maldición de agotamiento: Reduce la velocidad de movimiento del objetivo un 50% durante 12 s. Cada brujo solo puede tener una maldición activa sobre cada objetivo. 
    SPELL_FEAR                  = 65809,     //Miedo: Provoca miedo en el enemigo y hace que huya durante un máximo de 10 s. El daño infligido puede interrumpir el efecto. Solo se puede asustar a 1 objetivo cada vez. 
    SPELL_SEARING_PAIN          = 65819,     //Dolor abrasador: Inflige un dolor abrasador al objetivo enemigo infligiendo 3660 to 4340 p. de daño de Fuego. 
    SPELL_SHADOW_BOLT           = 65821,     //Descarga de las Sombras: Lanza una descarga de Sombras al enemigo infligiéndole 7560 to 8440 p. de daño de las Sombras. 
    SPELL_UNSTABLE_AFFLICTION   = 65812,     //Aflicción inestable: La energía de las Sombras destruye poco a poco al objetivo e inflige 11565 to 13435 p. de daño durante 15 s. Además, si se disipa tu hechizo Aflicción inestable, el que lo haya disipado recibirá 9250 to 10750 p. de daño de las Sombras y quedará silenciado durante 4 s. 
    SPELL_SUMMON_FELHUNTER      = 67514,     //Invocar manáfago: Invoca a un manáfago para acompañar al taumaturgo hasta que lo retire. 
    H_SPELL_UNSTABLE_AFFLICTION = 68155,     //Aflicción inestable: La energía de las Sombras destruye poco a poco al objetivo e inflige 18500 to 21500 p. de daño durante 15 s. Además, si se disipa tu hechizo Aflicción inestable, el que lo haya disipado recibirá 11563 to 13437 p. de daño de las Sombras y quedará silenciado durante 4 s. 
    SPELL_ARCANE_BARRAGE        = 65799,     //Tromba Arcana: Lanza contra el objetivo enemigo varios misiles que le infligen 4750 to 5250 p. de daño Arcano.
    SPELL_ARCANE_BLAST          = 65791,     //Explosión Arcana: Golpea al objetivo con energía, lo que inflige 6013 to 6987 p. de daño Arcano. Cada vez que lances el hechizo Explosión Arcana, el daño de todos tus hechizos Arcanos aumentará un 10% y el coste de maná de Explosión Arcana aumentará un 150%. El efecto se acumula hasta 4 veces y dura 6 s o hasta que se lance un hechizo que inflija daño Arcano, excepto Explosión Arcana. 
    SPELL_ARCANE_EXPLOSION      = 65800,     //Deflagración Arcana: Provoca una explosión de magia Arcana alrededor del taumaturgo, que inflige 5280 to 5720 p. de daño Arcano a todos los objetivos en un radio de 10 m. 
    SPELL_REFLEJO               = 5143,      //Crea 3 copias del taumaturgo que lanzan hechizos y atacan a los enemigos del mago. Dura 30 s.
    SPELL_COUNTERSPELL          = 65790,     //Contrahechizo: Contrarresta el lanzamiento de hechizos del enemigo, evitando que lance hechizos de esa escuela de magia durante 8 s. Genera una gran cantidad de amenaza.
    SPELL_FROST_NOVA            = 65792,     // Nova de Escarcha: Golpea a los enemigos situados cerca del taumaturgo, lo que inflige 365 to 415 p. de daño de Escarcha y los congela durante un máximo de 8 s. Cualquier daño infligido puede interrumpir su efecto.
    SPELL_FROSTBOLT             = 65807,     // Descarga de Escarcha: Lanza una descarga de Escarcha al enemigo que inflige 7863 to 9137 p. de daño de Escarcha y ralentiza su velocidad de movimiento un 40% durante 9 s.
    SPELL_MISILES               = 5143,      // Lanza contra el enemigo $?[cinco]?[cuatro][tres] oleadas de Misiles Arcanos durante 2 s que infligen 404 p. de daño Arcano por oleada. Cada hechizo ofensivo que lances tiene un 100% de probabilidad de activar Misiles Arcanos.
    SPELL_VENTISCA              = 58693,     // Fragmentos de hielo que acribillan el área objetivo e infligen 508*8*1*1 p. de daño de Escarcha durante 8 s
    SPELL_AIMED_SHOT            = 65883,     // Disparo de puntería: Un disparo de puntería que aumenta el daño a distancia 1750 p. y reduce la sanación del objetivo un 50%. Dura 10 s.
    SPELL_DETERRENCE            = 65871,     // Disuasión: Cuando se activa, aumenta la probabilidad de parar un 100% y otorga una probabilidad de un 100% de desviar los hechizos lanzados por objetivos que estén frente a ti. Dura 5 s.
    SPELL_DISENGAGE             = 65869,     // Separación: Intentas retirarte del combate y saltas hacia atrás.
    SPELL_EXPLOSIVE_SHOT        = 65866,     // Disparo explosivo: Lanzas una carga explosiva al objetivo, que inflige 1813 to 2187 p. de daño de Fuego. La carga golpeará al objetivo cada segundo durante 2 s adicionales.
    SPELL_FROST_TRAP            = 65880,     // Trampa de Escarcha: Coloca una trampa de Escarcha que crea una mancha de hielo durante 30 s cuando el primer enemigo se acerca. Todos los enemigos en un radio de 10 m se ralentizarán un 50% mientras estén en el área de efecto. La trampa dura 1 min. Solo puede haber 1 trampa activa a la vez.
    SPELL_SHOOT                 = 65868,     // Disparar: Dispara a un enemigo y le inflige daño físico
    SPELL_STEADY_SHOT           = 65867,     // Disparo firme: Un disparo firme que provoca daño con arma a un objetivo.
    SPELL_WING_CLIP             = 66207,     // Cortar alas: Mutila al enemigo y reduce la velocidad de movimiento del objetivo un 50% durante 10 s.
    SPELL_WYVERN_STING          = 65877,     // Picadura de dracoleón: Un disparo punzante que duerme al objetivo durante 8 s. Cualquier daño infligido con posterioridad anulará su efecto. Cuando el objetivo se despierta, la picadura inflige <Unknown value - The spell referenced no longer exists> p. de daño de Naturaleza durante <Unknown value - The spell referenced no longer exists>. Un cazador solo puede tener una picadura activa a la vez sobre un mismo objetivo.
    SPELL_CALL_PET              = 67777,     // Llamar mascota: Invoca a tu mascota
    SPELL_CYCLONE               = 65859,     // Ciclón: Lanza al objetivo enemigo por los aires, lo que evita que pueda realizar ninguna acción pero lo hace invulnerable durante 6 s. Ciclón solo puede afectar a un objetivo a la vez.
    SPELL_ENTANGLING_ROOTS      = 65857,     // Raíces enredadoras: Enraíza al enemigo e inflige 1577 to 1757 p. de daño de Naturaleza durante 10 s. El daño infligido puede interrumpir el efecto.
    SPELL_FAERIE_FIRE           = 65863,     // Fuego feérico: Reduce la armadura del objetivo un 15% durante 40 s. Mientras dura su efecto, el objetivo no puede utilizar el sigilo ni hacerse invisible.
    SPELL_FORCE_OF_NATURE       = 65861,     // Fuerza de la Naturaleza: Invoca a 3 antárboles que atacan objetivos enemigos durante 30 s.
    SPELL_INSECT_SWARM          = 65855,     // Enjambre de insectos: El objetivo enemigo es rodeado de insectos, lo que reduce su probabilidad de golpear con ataques cuerpo a cuerpo y a distancia un 3% e inflige 13878 to 16122 p. de daño de Naturaleza durante 12 s.
    SPELL_MOONFIRE              = 65856,     // Fuego lunar: Quema al enemigo, inflige 2300 to 2700 p. de daño Arcano y 4000 p. de daño Arcano extra durante 12 s.
    SPELL_STARFIRE              = 65854,     // Fuego estelar: Inflige 6882 to 8118 p. de daño Arcano al objetivo.
    SPELL_WRATH                 = 65862,     // Cólera: Inflige 5170 to 5830 p. de daño de Naturaleza al objetivo.
    SPELL_BLADESTORM            = 65947,     // Filotormenta: Lanza un Torbellino instantáneamente a todos los objetivos cercanos y durante los siguientes 8 s realizarás un ataque con Torbellino cada 1 s. Mientras estés bajo los efectos de Filotormenta te podrás mover pero no ejecutar otras facultades, sentir piedad, remordimiento o miedo y no podrán detenerte a no ser que te maten.
    SPELL_WAR_STOMP             = 20549,     // Pisotón de guerra: Aturde a un máximo de 5 enemigos en un radio de 8 m durante 2 s.
    SPELL_MORTAL_STRIKE         = 65926,     // Golpe mortal: Un golpe sanguinario que inflige daño con arma más 380 p. y hiere al objetivo, lo que reduce la eficacia de cualquier sanación un 50% durante 10 s.
    SPELL_CHARGE                = 68764,     // Bloquear con escudo: Aumenta tu probabilidad de bloqueo un 25% durante 10 s. Además, si tu probabilidad total de bloquear o evitar un ataque supera el 100%, tu probabilidad de bloqueo crítico aumenta la cantidad sobrante.
    SPELL_DISARM                = 65935,     // Desarmar: Desarma el arma a distancia y principal del enemigo durante 10 s.
    SPELL_OVERPOWER             = 65924,     // Abrumar: Abruma al enemigo instantáneamente y le inflige daño con arma más 35 p. Solo se puede utilizar después de que el objetivo esquive. El Abrumar no se puede bloquear, ni esquivar ni parar. 
    SPELL_SUNDER_ARMOR          = 65936,     // Hender armadura: Hiende la armadura del objetivo, lo que la reduce un 4% por cada uso de Hender armadura y genera una gran cantidad de amenaza. Amenaza aumentada con el poder de ataque. Se puede usar un máximo de 5 veces. Dura 20 s.
    SPELL_SHATTERING_THROW      = 65940,     // Lanzamiento destrozador: Lanza tu arma a un enemigo e inflige daño con arma. Reduce la armadura del objetivo un 20% durante 10 s o elimina cualquier invulnerabilidad.
    SPELL_RETALIATION           = 65932,     // Represalias: Contraataca instantáneamente a cualquier enemigo que te ataque cuerpo a cuerpo durante 12 s. No se puede contraatacar si el ataque cuerpo a cuerpo llega por la espalda. Un máximo de 20 ataques provocarán Represalias. 
    SPELL_CHAINS_OF_ICE         = 66020,     // Cadenas de hielo: Encadena al objetivo con cadenas heladas, lo que reduce su velocidad de movimiento a un 5% de lo normal. El objetivo recupera un 10% de su velocidad de movimiento cada segundo durante 10 s.
    SPELL_DEATH_COIL            = 66019,     // Espiral de la muerte: Dispara una oleada de energía profana, que inflige 4625 to 5375 p. de daño de las Sombras a un enemigo o sana 6937.5 p. de daño a un objetivo no-muerto amistoso.
    SPELL_DEATH_GRIP            = 66017,     // Atracción letal: Reúne la energía profana que rodea y vincula toda materia, acercando al objetivo hacia el caballero de la Muerte y obligando al enemigo a atacar al caballero de la Muerte durante 3 s.
    SPELL_FROST_STRIKE          = 66047,     // Golpe de Escarcha: Golpea instantáneamente al enemigo y le inflige un 60% de daño con arma más 150 p. de daño de Escarcha. No se puede esquivar, bloquear o parar.  
    SPELL_ICEBOUND_FORTITUDE    = 66023,     // Entereza ligada al hielo: El caballero de la Muerte congela su sangre para hacerse inmune a los efectos de aturdir y reduce todo el daño recibido un 45% durante 12 s.
    SPELL_ICY_TOUCH             = 66021,     // Toque helado: Enfría al objetivo e inflige 3355 - 3645 p. de daño de Escarcha y lo contagia con Fiebre de Escarcha, una enfermedad que inflige daño periódico y reduce la velocidad de ataque a distancia y cuerpo a cuerpo un 20% durante 21 s. 
    SPELL_STRANGULATE           = 66018,     // Estrangular: Estrangula al enemigo, le silencia durante 5 s e inflige 180 p. de daño de las Sombras al final del efecto.
    SPELL_FAN_OF_KNIVES         = 65955,     // Abanico de cuchillos: Lanza instantáneamente las dos armas a todos los objetivos que se encuentren en un radio de 10 m, lo que inflige un 90% de daño con arma.
    SPELL_BLIND                 = 65960,     // Ceguera: Ciega al objetivo, provocando que deambule sin rumbo durante un máximo de 10 s. Cualquier daño infligido con posterioridad anulará su efecto.
    SPELL_CLOAK                 = 65961,     // Capa de las Sombras: Elimina instantáneamente todos los efectos negativos de hechizos y aumenta tu probabilidad de resistir todos los hechizos un 90% durante 5 s. No elimina los efectos que te impiden usar la Capa de las Sombras.
    SPELL_BLADE_FLURRY          = 65956,     // Aluvión de acero: Aumenta tu velocidad de ataque un 20%. Además, los ataques alcanzan a un enemigo cercano extra. Dura 15 s.
    SPELL_SHADOWSTEP            = 66178,     // Paso de las Sombras: Intenta dar un paso en las sombras y reaparecer detrás de tu enemigo.
    SPELL_HEMORRHAGE            = 65954,     // Hemorragia: Un golpe instantáneo que inflige un 110% de daño con arma y le provoca al objetivo una hemorragia, aumentando cualquier daño físico infligido al objetivo hasta 75 p. Dura 15 s o hasta que se utilizan 10 cargas. Otorga 1 p. de combo.
    SPELL_EVISCERATE            = 65957,     // Evicerar: Remate que causa 4375 to 5625 p. de daño físico.
    SPELL_LAVA_LASH             = 65974,     // Latigazo de lava: Cargas con lava el arma de tu mano izquierda e infliges instantáneamente un 100% de daño con arma con tu mano izquierda. El daño aumenta un 25% si tu arma de mano izquierda está encantada con Lengua de Fuego.
    SPELL_STORMSTRIKE           = 65970,     // Golpe de tormenta: Ataque instantáneo con ambas armas. Además, las 4 fuentes siguientes de daño de Naturaleza infligidas al objetivo aumentan un 20%. Dura 12 s.
    SPELL_CRUSADER_STRIKE       = 66003,     // Golpe de cruzado: Un golpe instantáneo que inflige un 110% de daño con arma.
    SPELL_AVENGING_WRATH        = 66011,     // Cólera vengativa: Aumenta todo el daño infligido y toda la sanación realizada un 20% durante 20 s. No se puede usar durante los <Unknown value - The spell referenced no longer exists> posteriores a haber sido el objetivo de Escudo divino, Protección divina o Mano de protección.
    SPELL_DIVINE_SHIELD         = 66010,     // Escudo divino: Protege al paladín de todo el daño y hechizos durante 12 s pero reduce el daño que inflijas un 50%. Una vez protegido, Escudo divino, Protección divina y Mano de protección no pueden proteger al objetivo de nuevo durante 1 min. No se puede usar a menos de <%> de haber usado Cólera vengativa.
    SPELL_DIVINE_STORM          = 66006,     // Tormenta divina: Un ataque instantáneo con arma que inflige un 110% del daño con arma hasta un total de 5 enemigos que se encuentren en un radio de 8 m.
    SPELL_JUDGEMENT_OF_COMMAND  = 66005,     // Sentencia de orden: Juzga al enemigo y le inflige 3325 to 3675 p. de daño Sagrado.
    SPELL_REPENTANCE            = 66008,     // Arrepentimiento: Pone al objetivo enemigo en estado de meditación, lo que lo incapacita durante un máximo de 10 s. Cualquier daño despertará al objetivo. Solo funciona contra demonios, dragonantes, gigantes, humanoides y no-muertos. 
    SPELL_SEAL_OF_COMMAND       = 66004,     // Sello de orden:Todos los ataques cuerpo a cuerpo tienen una probabilidad de infligir daño Sagrado extra. 
    SPELL_DEVOUR_MAGIC          = 67518,     // Devorar magia: Purga <Unknown value - The spell referenced no longer exists> efecto mágico dañino de un amigo o <Unknown value - The spell referenced no longer exists> efecto mágico beneficioso de un enemigo. Si se devora un efecto, el manáfago se sana 1150 p.
    SPELL_SPELL_LOCK            = 67519,     // Bloqueo de hechizo: Silencia al enemigo durante 3 s. Si el objetivo está lanzando hechizos, contrarrestará el lanzamiento de hechizos del enemigo y evitará que se lancen hechizos de ese tipo de magia durante 6 s.
    SPELL_CLAW                  = 67793,      // Zarpa: Da un zarpazo al enemigo, inflige 1238 to 1762 p. de daño.
	SPELL_BOOM_VISUAL           = 72726,
	SPELL_SUMMON                = 74398,
	SPELL_SUMMON2               = 55873,
	SPELL_CHAIN_LIGHTNING       = 61879,
	SPELL_ELECTRICIDAD          = 61883,
	SPELL_FIREBALL              = 66042,
	SPELL_BLAST_WAVE            = 66044,
};

struct boss_lisa_eventAI : public ScriptedAI
{
    boss_lisa_eventAI(Creature* pCreature, uint32 aitype) : ScriptedAI(pCreature)
    {
        m_pInstance = (InstanceScript *) pCreature->GetInstanceScript();
        mAIType = aitype;
    }

    InstanceScript* m_pInstance;

    uint64 championControllerGUID;
    uint32 mAIType;
    uint32 ThreatTimer;
    uint32 CCTimer;

    void Reset()
    {
        championControllerGUID = 0;
        CCTimer = rand()%10000;
        ThreatTimer = 5000;
    }

    void JustReachedHome()
    {

    }

    float CalculateThreat(float distance, float armor, uint32 health)
    {
        float dist_mod = (mAIType == AI_MELEE || mAIType == AI_PET) ? 15.0f/(15.0f + distance) : 1.0f;
        float armor_mod = (mAIType == AI_MELEE || mAIType == AI_PET) ? armor / 16635.0f : 0.0f;
        float eh = (health+1) * (1.0f + armor_mod);
        return dist_mod * 30000.0f / eh;
    }

    void UpdateThreat()
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator itr;
        bool empty = true;
        for(itr = tList.begin(); itr!=tList.end(); ++itr)
        {
            Unit* pUnit = Unit::GetUnit((*me), (*itr)->getUnitGuid());
            if (pUnit && me->getThreatManager().getThreat(pUnit))
            {
                if(pUnit->GetTypeId()==TYPEID_PLAYER)
                {
                    float threat = CalculateThreat(me->GetDistance2d(pUnit), (float)pUnit->GetArmor(), pUnit->GetHealth());
                    me->getThreatManager().modifyThreatPercent(pUnit, -100);
                    me->AddThreat(pUnit, 1000000.0f * threat);
                    empty = false;
                }
            }
        }
    }

    void UpdatePower()
    {
        if(me->getPowerType() == POWER_MANA)
            me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA) / 3);
    }

    void RemoveCC()
    {
        me->RemoveAurasByType(SPELL_AURA_MOD_STUN);
        me->RemoveAurasByType(SPELL_AURA_MOD_FEAR);
        me->RemoveAurasByType(SPELL_AURA_MOD_ROOT);
        me->RemoveAurasByType(SPELL_AURA_MOD_PACIFY);
        me->RemoveAurasByType(SPELL_AURA_MOD_CONFUSE);
    }



    void EnterCombat(Unit *who)
    {
        DoCast(me, SPELL_ANTI_AOE, true);
    }

    void KilledUnit(Unit* who)
    {
        if (who->GetTypeId() == TYPEID_PLAYER)
        {
            if (m_pInstance)
            {
                uint32 TeamInInstance = m_pInstance->GetData(DATA_TEAM);
                m_pInstance->SetData(UPDATE_DEATHS_COUNT, 0);
            }
        }
    }

    Creature* SelectRandomFriendlyMissingBuff(uint32 spell)
    {
        std::list<Creature *> lst = DoFindFriendlyMissingBuff(40.0f, spell);
        std::list<Creature *>::const_iterator itr = lst.begin();
        if(lst.empty())
            return NULL;
        advance(itr, rand()%lst.size());
        return (*itr);
    }

    Unit* SelectEnemyCaster(bool casting)
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator iter;
        for(iter = tList.begin(); iter!=tList.end(); ++iter)
        {
            Unit *target;
            if(target = Unit::GetUnit((*me),(*iter)->getUnitGuid()))
                if(target->getPowerType() == POWER_MANA)
                    return target;
        }
        return NULL;
    }

    uint32 EnemiesInRange(float distance)
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator iter;
        uint32 count = 0;
        for(iter = tList.begin(); iter!=tList.end(); ++iter)
        {
            Unit *target;
            if(target = Unit::GetUnit((*me),(*iter)->getUnitGuid()))
                if(me->GetDistance2d(target) < distance)
                    ++count;
        }
        return count;
    }

    void AttackStart(Unit* pWho)
    {
        if (!pWho) return;

        if (me->Attack(pWho, true))
        {
            me->AddThreat(pWho, 10.0f);
            me->SetInCombatWith(pWho);
            pWho->SetInCombatWith(me);

            if(mAIType == AI_MELEE || mAIType == AI_PET)
                DoStartMovement(pWho);
            else
                DoStartMovement(pWho, 20.0f);
            SetCombatMovement(true);
        }
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if(ThreatTimer < uiDiff)
        {
            UpdatePower();
            UpdateThreat();
            ThreatTimer = 4000;
        }
        else ThreatTimer -= uiDiff;

        if(mAIType != AI_PET)
            if(CCTimer < uiDiff)
            {
                RemoveCC();
                CCTimer = 8000+rand()%2000;
            }
            else CCTimer -= uiDiff;

        if(mAIType == AI_MELEE || mAIType == AI_PET) DoMeleeAttackIfReady();
    }
};

//###****************************************************************************** NPC LISA ALI ****###

class boss_lisa_ali : public CreatureScript
{
public:
    boss_lisa_ali() : CreatureScript("boss_lisa_ali") { }

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_lisa_aliAI (pCreature);
    }

    struct boss_lisa_aliAI : public boss_lisa_eventAI
    {
        boss_lisa_aliAI(Creature *pCreature) : boss_lisa_eventAI(pCreature, AI_RANGED) {}

        uint32 m_uiRayoTimer;
        uint32 m_uiReflejoTimer;
        uint32 m_uiMisilesTimer;
        uint32 m_uiVentiscaTimer;
        uint32 m_uiCommonTimer;
		uint32 m_uiSummonTimer;
		uint32 m_uiMoverTimer;

        void Reset()
        {
            boss_lisa_eventAI::Reset();
			me->Attack(me, BOSS_BRUTALLUS2);
			me->FindNearestCreature(BOSS_BRUTALLUS2, 7.0f, true);
            m_uiRayoTimer = urand(5*IN_MILLISECONDS,15*IN_MILLISECONDS);
            m_uiReflejoTimer = urand(7*IN_MILLISECONDS,16*IN_MILLISECONDS);
            m_uiMisilesTimer = urand(25*IN_MILLISECONDS,50*IN_MILLISECONDS);
            m_uiVentiscaTimer = urand(15*IN_MILLISECONDS,40*IN_MILLISECONDS);
            m_uiCommonTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47524, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
			m_uiSummonTimer = 100*IN_MILLISECONDS;
			m_uiMoverTimer = 90*IN_MILLISECONDS;
        }
		
		void JustSummoned(Creature* summoned)
        {
            boss_lisa_eventAI::Reset();

            summoned->SetInCombatWithZone();
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
            {
                summoned->AddThreat(pTarget, 100.0f);
                summoned->GetMotionMaster()->MoveChase(pTarget);
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim()) return;

            if (m_uiRayoTimer <= uiDiff)
            {
                DoCast(SPELL_CHAIN_LIGHTNING);
                m_uiRayoTimer = urand(5*IN_MILLISECONDS,15*IN_MILLISECONDS);
            } else m_uiRayoTimer -= uiDiff;

            if (m_uiReflejoTimer <= uiDiff)
            { 
                DoCast(SPELL_REFLEJO);
                m_uiReflejoTimer = urand(7*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiReflejoTimer -= uiDiff;

            if (m_uiMisilesTimer <= uiDiff)
            {
                DoCast(me,SPELL_MISILES);
                m_uiMisilesTimer = urand(25*IN_MILLISECONDS,50*IN_MILLISECONDS);
            } else m_uiMisilesTimer -= uiDiff;

            if (m_uiVentiscaTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget,SPELL_VENTISCA);
                m_uiVentiscaTimer = urand(15*IN_MILLISECONDS,40*IN_MILLISECONDS);
            } else m_uiVentiscaTimer -= uiDiff;

            if (m_uiCommonTimer <= uiDiff)
            {
                switch(urand(0,2))
                {
                    case 0:
                        DoCast(me,SPELL_ARCANE_BARRAGE);
                        break;
                    case 1:
                        DoCastVictim(SPELL_ARCANE_BLAST);
                        break;
                    case 2:
                        DoCastVictim(SPELL_FROSTBOLT);
                        break;
                }
                m_uiCommonTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            } else m_uiCommonTimer -= uiDiff;

            if (m_uiMoverTimer <= uiDiff)
            {
                DoCast(SPELL_ELECTRICIDAD);
				me->AttackStop();
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
				me->SetSpeed(MOVE_RUN, 2.0f);
                me->GetMotionMaster()->MovePoint(0,-10263.3955f, 1405.933f, -6.97495f);
                m_uiMoverTimer = 90*IN_MILLISECONDS;
            } else m_uiMoverTimer -= uiDiff;
			
			if (m_uiSummonTimer <= uiDiff)
			{
				DoCast(SPELL_SUMMON);
				me->RemoveAurasDueToSpell(SPELL_ELECTRICIDAD);
				me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
				me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
				me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->SummonCreature(ANGEL, -10266.2958f, 1380.17f, -0.825f);
				me->SummonCreature(ANGEL, -10277.1259f, 1391.52f, -1.666f);
				me->SummonCreature(ANGEL, -10255.5039f, 1422.08f, -1.632f);
				me->SummonCreature(ANGEL, -10244.5253f, 1412.00f, -1.632f);
				DoCast(SPELL_SUMMON2);
				m_uiSummonTimer = 100*IN_MILLISECONDS;
			} else m_uiSummonTimer -= uiDiff;

            boss_lisa_eventAI::UpdateAI(uiDiff);
        }
    };

};

//###****************************************************************************** NPC LISA HORDA ****###

class boss_lisa_horda : public CreatureScript
{
public:
    boss_lisa_horda() : CreatureScript("boss_lisa_horda") { }

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_lisa_hordaAI (pCreature);
    }

    struct boss_lisa_hordaAI : public boss_lisa_eventAI
    {
        boss_lisa_hordaAI(Creature *pCreature) : boss_lisa_eventAI(pCreature, AI_RANGED) {}

        uint32 m_uiRayoTimer;
        uint32 m_uiReflejoTimer;
        uint32 m_uiMisilesTimer;
        uint32 m_uiVentiscaTimer;
        uint32 m_uiCommonTimer;
		uint32 m_uiSummonTimer;
		uint32 m_uiMoverTimer;

        void Reset()
        {
            boss_lisa_eventAI::Reset();
			me->Attack(me, BOSS_BRUTALLUS2);
			me->FindNearestCreature(BOSS_BRUTALLUS2, 7.0f, true);
            m_uiRayoTimer = urand(5*IN_MILLISECONDS,15*IN_MILLISECONDS);
            m_uiReflejoTimer = urand(7*IN_MILLISECONDS,25*IN_MILLISECONDS);
            m_uiMisilesTimer = urand(25*IN_MILLISECONDS,50*IN_MILLISECONDS);
            m_uiVentiscaTimer = urand(15*IN_MILLISECONDS,40*IN_MILLISECONDS);
            m_uiCommonTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47524, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
			m_uiSummonTimer = 100*IN_MILLISECONDS;
			m_uiMoverTimer = 90*IN_MILLISECONDS;
        }
		
		void JustSummoned(Creature* summoned)
        {
            boss_lisa_eventAI::Reset();

            summoned->SetInCombatWithZone();
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
            {
                summoned->AddThreat(pTarget, 100.0f);
                summoned->GetMotionMaster()->MoveChase(pTarget);
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim()) return;

            if (m_uiRayoTimer <= uiDiff)
            {
                DoCast(SPELL_CHAIN_LIGHTNING);
                m_uiRayoTimer = urand(5*IN_MILLISECONDS,15*IN_MILLISECONDS);
            } else m_uiRayoTimer -= uiDiff;

            if (m_uiReflejoTimer <= uiDiff)
            { 
                DoCast(SPELL_REFLEJO);
                m_uiReflejoTimer = urand(7*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiReflejoTimer -= uiDiff;

            if (m_uiMisilesTimer <= uiDiff)
            {
                DoCast(me,SPELL_MISILES);
                m_uiMisilesTimer = urand(25*IN_MILLISECONDS,50*IN_MILLISECONDS);
            } else m_uiMisilesTimer -= uiDiff;

            if (m_uiVentiscaTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget,SPELL_VENTISCA);
                m_uiVentiscaTimer = urand(15*IN_MILLISECONDS,40*IN_MILLISECONDS);
            } else m_uiVentiscaTimer -= uiDiff;

            if (m_uiCommonTimer <= uiDiff)
            {
                switch(urand(0,2))
                {
                    case 0:
                        DoCast(me,SPELL_ARCANE_BARRAGE);
                        break;
                    case 1:
                        DoCastVictim(SPELL_ARCANE_BLAST);
                        break;
                    case 2:
                        DoCastVictim(SPELL_FROSTBOLT);
                        break;
                }
                m_uiCommonTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            } else m_uiCommonTimer -= uiDiff;

            if (m_uiMoverTimer <= uiDiff)
            {
                DoCast(SPELL_ELECTRICIDAD);
				me->AttackStop();
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
				me->SetSpeed(MOVE_RUN, 2.0f);
                me->GetMotionMaster()->MovePoint(0,-10263.3955f, 1405.933f, -6.97495f);
                m_uiMoverTimer = 90*IN_MILLISECONDS;
            } else m_uiMoverTimer -= uiDiff;
			
			if (m_uiSummonTimer <= uiDiff)
			{
				DoCast(SPELL_SUMMON);
				me->RemoveAurasDueToSpell(SPELL_ELECTRICIDAD);
				me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
				me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
				me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->SummonCreature(ANGEL2, -10266.2958f, 1380.17f, -0.825f);
				me->SummonCreature(ANGEL2, -10277.1259f, 1391.52f, -1.666f);
				me->SummonCreature(ANGEL2, -10255.5039f, 1422.08f, -1.632f);
				me->SummonCreature(ANGEL2, -10244.5253f, 1412.00f, -1.632f);
				DoCast(SPELL_SUMMON2);
				m_uiSummonTimer = 100*IN_MILLISECONDS;
			} else m_uiSummonTimer -= uiDiff;

            boss_lisa_eventAI::UpdateAI(uiDiff);
        }
    };

};
//###****************************************************************************** ANGELES ****###
class mob_angeles_lisa : public CreatureScript
{
public:
    mob_angeles_lisa() : CreatureScript("mob_angeles_lisa") { }

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new mob_angeles_lisaAI (pCreature);
    }

    struct mob_angeles_lisaAI : public boss_lisa_eventAI
    {
        mob_angeles_lisaAI(Creature *pCreature) : boss_lisa_eventAI(pCreature, AI_RANGED) {}

        uint32 uiFireBallTimer;
        uint32 uiBlastWaveTimer;
        uint32 uiMisiles2Timer;
        uint32 uiPecaminosoTimer;

        void Reset()
        {
			me->Attack(me, NPC_SOLDADO);
			me->FindNearestCreature(NPC_SOLDADO, 7.0f, true);
            uiFireBallTimer = 1700;
            uiPecaminosoTimer  = 2200;
            uiBlastWaveTimer = 3000;
            uiMisiles2Timer = 4000;
            me->setActive(true);              
			me->SetFlying(true);
            SetEquipmentSlots(false, 35514, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (uiFireBallTimer <= uiDiff)
            {
                DoCastVictim(SPELL_FIREBALL);
                uiFireBallTimer = 1700;
            } else uiFireBallTimer -= uiDiff;

            if (uiPecaminosoTimer <= uiDiff)
            {
                DoCast(SPELL_HAZ_PECAMINOSO);
                uiPecaminosoTimer = 2200;
            } else uiPecaminosoTimer -= uiDiff;

            if (uiBlastWaveTimer <= uiDiff)
            {
                DoCastAOE(SPELL_BLAST_WAVE,false);
                uiBlastWaveTimer = 3000;
            } else uiBlastWaveTimer -= uiDiff;

            if (uiMisiles2Timer <= uiDiff)
            {
                DoCast(me,SPELL_MISILES);
                uiMisiles2Timer = 4000;
            } else uiMisiles2Timer -= uiDiff;

            boss_lisa_eventAI::UpdateAI(uiDiff);
        }
    };

};

void AddSC_event_asirius()
{
    new boss_lisa_ali();
	new boss_lisa_horda();
	new mob_angeles_lisa();
}