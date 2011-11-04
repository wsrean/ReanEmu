#include "ScriptPCH.h"

/* SQL IR AGREGANDO LOS ENTRY.
UPDATE `creature_template` SET `ScriptName` = 'mobs_icecrown_citadel' 
WHERE `entry` IN 
(37007,36724,37012,36725,
 36805,36808,36807,36811,36829,
 37022,37038,10404,37023,36880, 
 37664,37595,37663,37901,37571,37662,37666,37665,
 38125,37127,37132,37134,37133);

 */
// Añadir las spells de los trash.
// porfavor realizarlo de forma ordenanda y con su corespondiente nombre si es posible comentar
// de que trash son las spells.
// Referencias
// http://www.youtube.com/watch?v=dYXY7QsAI98 Valithria Dreamwalker Trash
// http://www.youtube.com/watch?v=-y1jiiaUfC8 Crimson Halls Trash

enum spells
{
    SPELL_SOUL_FEAST_ALL          = 71203, // http://old.wowhead.com/spell=71203
    // Npc Deathbound Ward                  
    SPELL_SABER_LASH_ALL          = 71021, // http://old.wowhead.com/spell=71021
    SPELL_DISRUPTING_SHOUT_ALL    = 71022, // http://old.wowhead.com/spell=71022
    // Npc Servant of the Throne
    SPELL_GLACIAL_BLAST           = 71029, // http://old.wowhead.com/spell=71029
    // Npc Ancient Skeletal Soldier
    SPELL_SHIELD_BASH             = 70964, // http://old.wowhead.com/spell=70964
    // Npc Nerub'ar Broodkeeper
    SPELL_CRYPT_SCARABS           = 70965, // http://old.wowhead.com/spell=70965
    SPELL_DARK_MENDING            = 71020, // http://old.wowhead.com/spell=71020
    SPELL_WEB_WRAP                = 70980, // http://old.wowhead.com/spell=70980
    // Npc Deathspeaker Servant
    SPELL_CHAOS_BOLT              = 69576, // http://old.wowhead.com/spell=69576
    SPELL_CURSE_OF_AGONY          = 69404, // http://old.wowhead.com/spell=69404
    SPELL_CONSUMING_SHADOWS       = 69405, // http://old.wowhead.com/spell=69405
    // Npc Deathspeaker Zealot
    SPELL_SHADOW_CLEAVE           = 69492, // http://old.wowhead.com/spell=69492
    // Npc Deathspeaker Disciple
    SPELL_DARK_BLESSING           = 69391, // http://old.wowhead.com/spell=69391
    SPELL_SHADOW_MEND             = 69389, // http://old.wowhead.com/spell=69389
    // Npc Deathspeaker Attendant
    SPELL_SHADOW_NOVA             = 69355, // http://old.wowhead.com/spell=69355
    // Npc Deathspeaker Attendant y Deathspeaker Disciple
    SPELL_SHADOW_BOLT             = 69387, // http://old.wowhead.com/spell=69387
    // Npc Deathspeaker High Priest
    SPELL_AURA_OF_DARKNESS        = 69491, // http://old.wowhead.com/spell=69491
    SPELL_DARK_RECKONING          = 69483, // http://old.wowhead.com/spell=69483
    // Npc Val'kyr Herald
    SPELL_SEVERED_ESSENCE         = 71906, // http://old.wowhead.com/spell=71906
    // Npc Blighted Abomination
    SPELL_CLEAVE                  = 40504, // http://old.wowhead.com/spell=40504
    SPELL_PLAGUE_CLOUD            = 71150, // http://old.wowhead.com/spell=71150
    SPELL_SCOURGE_HOOK            = 71140, // http://old.wowhead.com/spell=71140
    // Npc Vengeful Fleshreaper
    SPELL_LEAPING_FACE_MAUL       = 71164, // http://old.wowhead.com/spell=71164
    // Npc Pustulating Horror
    SPELL_BUBBLING_PUS            = 71089, // http://old.wowhead.com/spell=71089
    SPELL_BLIGHT_BOMB             = 71088, // http://old.wowhead.com/spell=71088
    // Npc Plague Scientist
    SPELL_COMBOBULATING_SPRAY     = 71103, // http://old.wowhead.com/spell=71103
    SPELL_PLAGUE_BLAST            = 73079, // http://old.wowhead.com/spell=73079 
    SPELL_PLAGUE_STREAM           = 69871, // http://old.wowhead.com/spell=69871
    // Npc Decaying Colossus
    SPELL_MASSIVE_STOMP           = 71114, // http://old.wowhead.com/spell=71114
    // Npc Darkfallen Archmage, Darkfallen Blood Knight, Darkfallen Noble
    SPELL_SIPHON_ESSENCE          = 70299, // http://old.wowhead.com/spell=70299
    //Npc Darkfallen Archmage
    SPELL_AMPLIFY_MAGIC           = 70408, // http://old.wowhead.com/spell=70408
    SPELL_BLAST_WAVE              = 70407, // http://old.wowhead.com/spell=70407
    SPELL_FIREBALL                = 70409, // http://old.wowhead.com/spell=70409
    SPELL_POLYMORPH_SPIDER        = 70410, // http://old.wowhead.com/spell=70410
    // Npc Darkfallen Blood Knight y Darkfallen Tactician
    SPELL_UNHOLY_STRIKE           = 70437, // http://old.wowhead.com/spell=70437
    // Npc Darkfallen Blood Knight
    SPELL_VAMPIRIC_AURA           = 71736, // http://old.wowhead.com/spell=71736
    SPELL_BLOOD_MIRROR_DAMAGE     = 70445, // http://old.wowhead.com/spell=70445
    SPELL_BLOOD_MIRROR_BUFF       = 70451, // http://old.wowhead.com/spell=70451
    SPELL_BLOOD_MIRROR_DUMMY      = 70450, // http://old.wowhead.com/spell=70450
    // Npc Darkfallen Noble
    SPELL_SHADOW_BOLT_1           = 72960, // http://old.wowhead.com/spell=72960
    SPELL_CHAINS_OF_SHADOW        = 70645, // http://old.wowhead.com/spell=70645
    // Npc Vampiric Fiend
    SPELL_DISEASE_CLOUD           = 41290, // http://old.wowhead.com/spell=41290
    SPELL_LEECHING_ROT            = 70671, // http://old.wowhead.com/spell=70671
    // Npc Darkfallen Advisor
    SPELL_SHROUD_OF_PROTECTION    = 72065, // http://old.wowhead.com/spell=72065
    SPELL_SHROUD_OF_SPELL_WARDING = 72066, // http://old.wowhead.com/spell=72066
    SPELL_LICH_SLAP               = 72057, // http://old.wowhead.com/spell=72057
    // Npc Darkfallen Commander
    SPELL_BATTLE_SHOUT            = 70750, // http://old.wowhead.com/spell=70750
    SPELL_VAMPIRE_RUSH            = 70449, // http://old.wowhead.com/spell=70449
    // Npc Darkfallen Tactician
    SPELL_SHADOWSTEP              = 70431, // http://old.wowhead.com/spell=70431
    SPELL_BLOOD_SAP               = 70432, // http://old.wowhead.com/spell=70432
    // Npc Darkfallen Lieutenant
    SPELL_REND_FLESH              = 70435, // http://old.wowhead.com/spell=70435
    SPELL_VAMPIRIC_CURSE          = 70423, // http://old.wowhead.com/spell=70423
    //Npc Ymirjar Frostbinder y Ymirjar Deathbringer
    SPELL_SPIRIT_STREAM           = 69929, // http://old.wowhead.com/spell=69929
    // Npc Ymirjar Deathbringer
    SPELL_BANISH                  = 71298, // http://old.wowhead.com/spell=71298
    SPELL_DEATHS_EMBRACE          = 71299, // http://old.wowhead.com/spell=71299
    SPELL_SHADOW_BOLT_2           = 71296, // http://old.wowhead.com/spell=71296
    SPELL_SUMMON_YMIRJAR          = 71303, // http://old.wowhead.com/spell=71303
    // Npc Ymirjar Frostbinder
    SPELL_ARCTIC_CHILL            = 71270, // http://old.wowhead.com/spell=71270
    SPELL_FROZEN_ORB              = 71274, // http://old.wowhead.com/spell=71274
    SPELL_TWISTED_WINDS           = 71306, // http://old.wowhead.com/spell=71306
    // Npc Ymirjar Battle-Maiden
    SPELL_ADRENALINE_RUSH         = 71258, // http://old.wowhead.com/spell=71258
    SPELL_BARBARIC_STRIKE         = 71257, // http://old.wowhead.com/spell=71257
    // Npc Ymirjar Huntress
    SPELL_ICE_TRAP                = 71249, // http://old.wowhead.com/spell=71249
    SPELL_RAPID_SHOT              = 71251, // http://old.wowhead.com/spell=71251
    SPELL_SHOOT                   = 71253, // http://old.wowhead.com/spell=71253
    SPELL_VOLLEY                  = 71252, // http://old.wowhead.com/spell=71252
    SPELL_SUMMON_WARHAWK          = 71705, // http://old.wowhead.com/spell=71705
    // Npc Ymirjar Warlord
    SPELL_WHIRLWIND               = 41056  // http://old.wowhead.com/spell=41056
    // Npc Empowering Orb Visual Stalker
};

enum npcs
{
    // Light's Hammer
    NPC_DEATHBOUND_WARD          = 37007, // http://old.wowhead.com/npc=37007
    NPC_SERVANT_OF_THE_THRONE    = 36724, // http://old.wowhead.com/npc=36724
    NPC_ANCIENT_SKELETAL_SOLDIER = 37012, // http://old.wowhead.com/npc=37012
    NPC_NERUBAR_BROODKEEPER      = 36725, // http://old.wowhead.com/npc=36725
    // Oratory of the Damned
    NPC_DEATHSPEAKER_SERVANT     = 36805, // http://old.wowhead.com/npc=36805
    NPC_DEATHSPEAKER_ZEALOT      = 36808, // http://old.wowhead.com/npc=36808
    NPC_DEATHSPEAKER_DISCIPLE    = 36807, // http://old.wowhead.com/npc=36807
    NPC_DEATHSPEAKER_ATTENDANT   = 36811, // http://old.wowhead.com/npc=36811
    NPC_DEATHSPEAKER_HIGH_PRIEST = 36829, // http://old.wowhead.com/npc=36829
    // The Spire
    NPC_VALKYR_HERALD            = 37098, // http://old.wowhead.com/npc=37098
    // The Plagueworks
    NPC_BLIGHTED_ABOMINATION     = 37022, // http://old.wowhead.com/npc=37022
    NPC_VENGEFUL_FLESHREAPER     = 37038, // http://old.wowhead.com/npc=37038
    NPC_PUSTULATING_HORROR       = 10404, // http://old.wowhead.com/npc=10404
    NPC_PLAGUE_SCIENTIST         = 37023, // http://old.wowhead.com/npc=37023
    NPC_DECAYING_COLOSSUS        = 36880, // http://old.wowhead.com/npc=36880
    // The Crimson Hall
    NPC_DARKFALLEN_ARCHMAGE      = 37664, // http://old.wowhead.com/npc=37664
    NPC_DARKFALLEN_BLOOD_KNIGHT  = 37595, // http://old.wowhead.com/npc=37595
    NPC_DARKFALLEN_NOBLE         = 37663, // http://old.wowhead.com/npc=37663
    NPC_VAMPIRIC_FIEND           = 37901, // http://old.wowhead.com/npc=37901
    NPC_DARKFALLEN_ADVISOR       = 37571, // http://old.wowhead.com/npc=37571
    NPC_DARKFALLEN_COMMANDER     = 37662, // http://old.wowhead.com/npc=37662
    NPC_DARKFALLEN_TACTICIAN     = 37666, // http://old.wowhead.com/npc=37666
    NPC_DARKFALLEN_LIEUTENANT    = 37665, // http://old.wowhead.com/npc=37665
    // The Frostwing Halls
    NPC_YMIRJAR_DEATHBRINGER     = 38125, // http://old.wowhead.com/npc=38125
    NPC_YMIRJAR_FROSTBINDER      = 37127, // http://old.wowhead.com/npc=37127
    NPC_YMIRJAR_BATTLE_MAIDEN    = 37132, // http://old.wowhead.com/npc=37132
    NPC_YMIRJAR_HUNTRESS         = 37134, // http://old.wowhead.com/npc=37134
    NPC_YMIRJAR_WARLORD          = 37133  // http://old.wowhead.com/npc=37133

    //Empowering Orb Visual Stalker 38463
};

struct mobs_icecrown_citadelAI : public ScriptedAI
{
    mobs_icecrown_citadelAI(Creature *c) : ScriptedAI(c)
    {
        if(c->GetMap()->IsDungeon())
            instance = c->GetInstanceScript();

        c->setActive(true);
    }

    void EnterCombat(Unit *who)
    {
        DoAttackerAreaInCombat(who, 100);
        Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0);
    }

    bool DoCastTry(Unit *victim, uint32 spellId, bool triggered = false)
    {
        if(me->IsNonMeleeSpellCasted(false) && !triggered) return false;

        DoCast(victim,spellId,triggered);
        return true;
    }

    bool DoCastTryAOE(uint32 spellId, bool triggered = false)
    {
        if(me->IsNonMeleeSpellCasted(false) && !triggered) return false;

        DoCastAOE(spellId,triggered);
        return true;
    }

    Creature* SelectRandomFriendlyMissingBuff(uint32 spell)
    {
        std::list<Creature*> lst = DoFindFriendlyMissingBuff(40.0f, spell);
        std::list<Creature*>::const_iterator itr = lst.begin();
        if (lst.empty())
            return NULL;
        advance(itr, rand()%lst.size());
        return (*itr);
    }

    uint32 EnemiesInRange(float distance)
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator iter;
        uint32 count = 0;
        Unit* target;
        for (iter = tList.begin(); iter!=tList.end(); ++iter)
        {
            target = Unit::GetUnit((*me), (*iter)->getUnitGuid());
                if (target && me->GetDistance2d(target) < distance)
                    ++count;
        }
        return count;
    }

    uint32 PlayersCountRange(float dist) const
    {
        std::list<Player*> players;
        Trinity::AnyPlayerInObjectRangeCheck checker(me, dist);
        Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
        me->VisitNearbyWorldObject(dist, searcher);

        return players.size();
    }

    InstanceScript* instance;
};

class mobs_icecrown_citadel : public CreatureScript
{
public:
    mobs_icecrown_citadel() : CreatureScript("mobs_icecrown_citadel") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        switch (creature->GetEntry())
        {
            case NPC_DEATHBOUND_WARD: 
                return new mob_icecrown_citadel_Deathbound_WardAI (creature);
            case NPC_SERVANT_OF_THE_THRONE: 
                return new mob_icecrown_citadel_Servant_of_the_ThroneAI (creature);
            case NPC_ANCIENT_SKELETAL_SOLDIER: 
                return new mob_icecrown_citadel_Ancient_Skeletal_SoldierAI (creature);
            case NPC_NERUBAR_BROODKEEPER: 
                return new mob_icecrown_citadel_Nerubar_BroodkeeperAI (creature);
            case NPC_DEATHSPEAKER_SERVANT: 
                return new mob_icecrown_citadel_Deathspeaker_ServantAI (creature);
            case NPC_DEATHSPEAKER_ZEALOT: 
                return new mob_icecrown_citadel_Deathspeaker_ZealotAI (creature);
            case NPC_DEATHSPEAKER_DISCIPLE: 
                return new mob_icecrown_citadel_Deathspeaker_DiscipleAI (creature);
            case NPC_DEATHSPEAKER_ATTENDANT: 
                return new mob_icecrown_citadel_Deathspeaker_AttendantAI (creature);
            case NPC_DEATHSPEAKER_HIGH_PRIEST:
                return new mob_icecrown_citadel_Deathspeaker_High_PriestAI (creature);
            case NPC_BLIGHTED_ABOMINATION:
                return new mob_icecrown_citadel_Blighted_AbominationAI (creature);
            case NPC_PUSTULATING_HORROR:
                return new mob_icecrown_citadel_Pustulating_HorrorAI (creature);
            case NPC_PLAGUE_SCIENTIST:
                return new mob_icecrown_citadel_Plague_ScientistAI (creature);
            case NPC_DARKFALLEN_ARCHMAGE:
                return new mob_icecrown_citadel_Darkfallen_ArchmageAI (creature);
            case NPC_DARKFALLEN_BLOOD_KNIGHT:
                return new mob_icecrown_citadel_Darkfallen_Blood_KnightAI (creature);
            case NPC_DARKFALLEN_NOBLE:
                return new mob_icecrown_citadel_Darkfallen_NobleAI (creature);
            case NPC_VAMPIRIC_FIEND:
                return new mob_icecrown_citadel_Vampiric_FiendAI (creature);
            case NPC_DARKFALLEN_ADVISOR:
                return new mob_icecrown_citadel_Darkfallen_AdvisorAI (creature);
            case NPC_DARKFALLEN_COMMANDER:
                return new mob_icecrown_citadel_Darkfallen_CommanderAI (creature);
            case NPC_DARKFALLEN_TACTICIAN:
                return new mob_icecrown_citadel_Darkfallen_TacticianAI (creature);
            case NPC_DARKFALLEN_LIEUTENANT:
                return new mob_icecrown_citadel_Darkfallen_LieutenantAI (creature);
            case NPC_YMIRJAR_DEATHBRINGER:
                return new mob_icecrown_citadel_Ymirjar_DeathbringerAI (creature);
            case NPC_YMIRJAR_FROSTBINDER:
                return new mob_icecrown_citadel_Ymirjar_FrostbinderAI (creature);
            case NPC_YMIRJAR_BATTLE_MAIDEN:
                return new mob_icecrown_citadel_Ymirjar_Battle_MaidenAI (creature);
            case NPC_YMIRJAR_HUNTRESS:
                return new mob_icecrown_citadel_Ymirjar_HuntressAI (creature);
            case NPC_YMIRJAR_WARLORD:
                return new mob_icecrown_citadel_Ymirjar_WarlordAI (creature);
            default:
                return new mob_icecrown_citadel_Ymirjar_WarlordAI (creature);
        }
    }

    struct mob_icecrown_citadel_Deathbound_WardAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathbound_WardAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { 
            // Estas flags en la DB
            me->RemoveFlag(UNIT_DYNAMIC_FLAGS, UNIT_FLAG_UNK_15 | UNIT_FLAG_UNK_6);
        }

        uint32 Disrupting_Shout;
        uint32 Saber_Lash;

        void Reset()
        {
            Disrupting_Shout    = 10*IN_MILLISECONDS;
            Saber_Lash          = 7*IN_MILLISECONDS;
        }

        /*void JustDied(Unit* killer)
        {
            // aca falta agregar 	50000 yards (Anywhere)
        }*/

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (Saber_Lash <= diff)
            {
                if (DoCastTry(me,SPELL_SABER_LASH_ALL))
                    Saber_Lash = 7*IN_MILLISECONDS;
            }else Saber_Lash -= diff;

            if (Disrupting_Shout <= diff)
            {
                // Random al interrumpir spells con Disrupting_Shout
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1,40,false))
                    if (DoCastTry(target,(SPELL_DISRUPTING_SHOUT_ALL)))
                        Disrupting_Shout = 10*IN_MILLISECONDS;
            }else Disrupting_Shout -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Servant_of_the_ThroneAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Servant_of_the_ThroneAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 Glacial_Blast;

        void Reset()
        {
            Glacial_Blast    = 1*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (Glacial_Blast <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_GLACIAL_BLAST))
                    Glacial_Blast = 6*IN_MILLISECONDS;
            }else Glacial_Blast -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ancient_Skeletal_SoldierAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ancient_Skeletal_SoldierAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHIELD_BASH;

        void Reset()
        {
            SHIELD_BASH    = 5*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SHIELD_BASH <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHIELD_BASH))
                    SHIELD_BASH = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            }else SHIELD_BASH -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Nerubar_BroodkeeperAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Nerubar_BroodkeeperAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 CRYPT_SCARABS;
        uint32 DARK_MENDING;
        uint32 WEB_WRAP;

        void Reset()
        {
            CRYPT_SCARABS  = 1*IN_MILLISECONDS;
            DARK_MENDING   = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            WEB_WRAP       = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (WEB_WRAP <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_WEB_WRAP))
                        WEB_WRAP = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            }else WEB_WRAP -= diff;

            if (DARK_MENDING <= diff)
            {
                if (Unit* target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : DoSelectLowestHpFriendly(40.0f))
                    if (DoCastTry(target,SPELL_DARK_MENDING))
                        DARK_MENDING = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            }else DARK_MENDING -= diff;

            if (CRYPT_SCARABS <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_CRYPT_SCARABS))
                    CRYPT_SCARABS = 2*IN_MILLISECONDS;
            }else CRYPT_SCARABS -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Deathspeaker_ServantAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathspeaker_ServantAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 CHAOS_BOLT;
        uint32 CURSE_OF_AGONY;
        uint32 CONSUMING_SHADOWS;
        
        void Reset()
        {
            CHAOS_BOLT         = 2*IN_MILLISECONDS;
            CURSE_OF_AGONY     = urand(3*IN_MILLISECONDS, 5*IN_MILLISECONDS);
            CONSUMING_SHADOWS  = urand(3*IN_MILLISECONDS, 5*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (CONSUMING_SHADOWS <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_CONSUMING_SHADOWS))
                        CONSUMING_SHADOWS = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            }else CONSUMING_SHADOWS -= diff;

            if (CURSE_OF_AGONY <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        if (DoCastTry(target,SPELL_CURSE_OF_AGONY))
                            CURSE_OF_AGONY = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            }else CURSE_OF_AGONY -= diff;

            if (CHAOS_BOLT <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_CHAOS_BOLT))
                    CHAOS_BOLT = urand(3*IN_MILLISECONDS, 4*IN_MILLISECONDS);

            }else CHAOS_BOLT -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Deathspeaker_ZealotAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathspeaker_ZealotAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHADOW_CLEAVE;

        void Reset()
        {
            SHADOW_CLEAVE    = 6*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SHADOW_CLEAVE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOW_CLEAVE))
                    SHADOW_CLEAVE = 6*IN_MILLISECONDS;

            }else SHADOW_CLEAVE -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Deathspeaker_DiscipleAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathspeaker_DiscipleAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 DARK_BLESSING;
        uint32 SHADOW_MEND;
        uint32 SHADOW_BOLT;
        
        void Reset()
        {
            SHADOW_BOLT      = 2*IN_MILLISECONDS;
            SHADOW_MEND      = urand(3*IN_MILLISECONDS, 5*IN_MILLISECONDS);
            DARK_BLESSING    = urand(3*IN_MILLISECONDS, 5*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (DARK_BLESSING <= diff)
            {
                if (Unit* target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : SelectRandomFriendlyMissingBuff(SPELL_DARK_BLESSING))
                    if (DoCastTry(target,SPELL_DARK_BLESSING))
                        DARK_BLESSING = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            }else DARK_BLESSING -= diff;

            if (SHADOW_MEND <= diff)
            {
                if (Unit* target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : DoSelectLowestHpFriendly(40.0f))
                    if (DoCastTry(target,SPELL_SHADOW_MEND))
                        SHADOW_MEND = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            }else SHADOW_MEND -= diff;

            if (SHADOW_BOLT <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOW_BOLT))
                    SHADOW_BOLT = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);

            }else SHADOW_BOLT -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Deathspeaker_AttendantAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathspeaker_AttendantAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHADOW_NOVA;
        uint32 SHADOW_BOLT;
        
        void Reset()
        {
            SHADOW_BOLT      = 2*IN_MILLISECONDS;
            SHADOW_NOVA      = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SHADOW_NOVA <= diff)
            {
                if (EnemiesInRange(10.0f) > 2)
                    if (DoCastTryAOE(SPELL_SHADOW_NOVA))
                        SHADOW_NOVA = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);

            }else SHADOW_NOVA -= diff;

            if (SHADOW_BOLT <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOW_BOLT))
                    SHADOW_BOLT = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);

            }else SHADOW_BOLT -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Deathspeaker_High_PriestAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Deathspeaker_High_PriestAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 DARK_RECKONING;
        
        void Reset()
        {
            DARK_RECKONING    = 2*IN_MILLISECONDS;
        }

        void EnterCombat(Unit* /*target*/)
        {
            DoCast(me, SPELL_AURA_OF_DARKNESS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (DARK_RECKONING <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_DARK_RECKONING))
                        DARK_RECKONING = urand(10*IN_MILLISECONDS, 12*IN_MILLISECONDS);

            }else DARK_RECKONING -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Blighted_AbominationAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Blighted_AbominationAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 CLEAVE;
        uint32 SCOURGE_HOOK;
        
        void Reset()
        {
            SCOURGE_HOOK    = 5*IN_MILLISECONDS;
            CLEAVE          = 4*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SCOURGE_HOOK <= diff)
            {
                if (DoCastTryAOE(SPELL_PLAGUE_CLOUD))
                {
                    Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0);
                    if (DoCastTry(target,SPELL_SCOURGE_HOOK))
                        SCOURGE_HOOK = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);
                }

            }else SCOURGE_HOOK -= diff;

            if (CLEAVE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_CLEAVE))
                    CLEAVE = 6*IN_MILLISECONDS;

            }else CLEAVE -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Pustulating_HorrorAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Pustulating_HorrorAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 BUBBLING_PUS;

        
        void Reset()
        {
            BUBBLING_PUS = 5*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (HealthBelowPct(15))
            {
                DoCastTryAOE(SPELL_BLIGHT_BOMB);
                BUBBLING_PUS = 15*IN_MILLISECONDS;
            }

            if (BUBBLING_PUS <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, 0))
                    if (DoCastTry(target,SPELL_BUBBLING_PUS))
                        BUBBLING_PUS = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else BUBBLING_PUS -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Plague_ScientistAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Plague_ScientistAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 COMBOBULATING_SPRAY;
        uint32 PLAGUE_BLAST;
        uint32 PLAGUE_STREAM;
        uint32 PLAGUE_STREAM_OUT;
        
        void Reset()
        {
            COMBOBULATING_SPRAY   = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            PLAGUE_BLAST          = 2*IN_MILLISECONDS;
            PLAGUE_STREAM         = urand(8*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            PLAGUE_STREAM_OUT     = 24*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (COMBOBULATING_SPRAY <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_COMBOBULATING_SPRAY))
                        COMBOBULATING_SPRAY = urand(8*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            }else COMBOBULATING_SPRAY -= diff;

            if (PLAGUE_STREAM <= diff)
            {
                if (PLAGUE_STREAM_OUT > diff)
                {
                    if (Unit* target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : SelectRandomFriendlyMissingBuff(SPELL_PLAGUE_STREAM))
                        if (DoCastTry(target,SPELL_PLAGUE_STREAM))
                            PLAGUE_STREAM_OUT = 5*IN_MILLISECONDS;
                }else
                {
                    me->CastStop(SPELL_PLAGUE_BLAST);
                    PLAGUE_STREAM = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
                }
            }else PLAGUE_STREAM -= diff;

            if (PLAGUE_BLAST <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_PLAGUE_BLAST))
                    PLAGUE_BLAST = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);

            }else PLAGUE_BLAST -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Decaying_ColossusAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Decaying_ColossusAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 MASSIVE_STOMP;

        
        void Reset()
        {
            MASSIVE_STOMP = 5*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);


        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (MASSIVE_STOMP <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_MASSIVE_STOMP))
                    MASSIVE_STOMP = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else MASSIVE_STOMP -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_ArchmageAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_ArchmageAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 AMPLIFY_MAGIC;
        uint32 BLAST_WAVE;
        uint32 POLYMORPH_SPIDER;
        uint32 FIREBALL;
        
        void Reset()
        {
            AMPLIFY_MAGIC    = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            BLAST_WAVE       = urand(10*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            POLYMORPH_SPIDER = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            FIREBALL         = 2*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (AMPLIFY_MAGIC <= diff)
            {
               if (DoCastTry(me->getVictim(),SPELL_AMPLIFY_MAGIC))
                        AMPLIFY_MAGIC = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else AMPLIFY_MAGIC -= diff;

            if (BLAST_WAVE <= diff)
            {
                if (EnemiesInRange(10.0f) > 2)
                    if (DoCastTryAOE(SPELL_BLAST_WAVE))
                        BLAST_WAVE = urand(10*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else BLAST_WAVE -= diff;

            if (POLYMORPH_SPIDER <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_POLYMORPH_SPIDER))
                        POLYMORPH_SPIDER = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else POLYMORPH_SPIDER -= diff;

            if (FIREBALL <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_FIREBALL))
                    FIREBALL = urand(3*IN_MILLISECONDS, 4*IN_MILLISECONDS);

            }else FIREBALL -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_Blood_KnightAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_Blood_KnightAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 UNHOLY_STRIKE;
        uint32 BLOOD_MIRROR;
        
        void Reset()
        {
            UNHOLY_STRIKE  = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            BLOOD_MIRROR   = urand(4*IN_MILLISECONDS, 5*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void EnterCombat(Unit* /*target*/)
        {
            DoCast(me, SPELL_VAMPIRIC_AURA);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (BLOOD_MIRROR <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(me->getVictim(),SPELL_BLOOD_MIRROR_DUMMY))
                    {
                        me->getVictim()->CastSpell(target,SPELL_BLOOD_MIRROR_DAMAGE,true);
                        me->CastSpell(me->getVictim(),SPELL_BLOOD_MIRROR_BUFF,true);
                        BLOOD_MIRROR = urand(32*IN_MILLISECONDS, 37*IN_MILLISECONDS);
                    }

            }else BLOOD_MIRROR -= diff;

            if (UNHOLY_STRIKE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_UNHOLY_STRIKE))
                    UNHOLY_STRIKE = urand(3*IN_MILLISECONDS, 4*IN_MILLISECONDS);

            }else UNHOLY_STRIKE -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_NobleAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_NobleAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHADOW_BOLT_1;
        uint32 CHAINS_OF_SHADOW;
        uint32 VAMPIRIC_FIEND;
        
        void Reset()
        {
            SHADOW_BOLT_1    = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            CHAINS_OF_SHADOW = urand(4*IN_MILLISECONDS, 5*IN_MILLISECONDS);
            VAMPIRIC_FIEND   = 15*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (CHAINS_OF_SHADOW <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_CHAINS_OF_SHADOW))
                        CHAINS_OF_SHADOW = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else CHAINS_OF_SHADOW -= diff;

            if (VAMPIRIC_FIEND <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (me->SummonCreature(NPC_VAMPIRIC_FIEND,target->GetPositionX(),target->GetPositionY(),target->GetPositionZ()))
                        VAMPIRIC_FIEND = 60*IN_MILLISECONDS;

            }else VAMPIRIC_FIEND -= diff;

            if (SHADOW_BOLT_1 <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOW_BOLT_1))
                    SHADOW_BOLT_1 = 3*IN_MILLISECONDS;

            }else SHADOW_BOLT_1 -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Vampiric_FiendAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Vampiric_FiendAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 LEECHING_ROT;
        
        void Reset()
        {
            LEECHING_ROT = 10*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void EnterCombat(Unit* /*target*/)
        {
            DoCast(me, SPELL_DISEASE_CLOUD);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (LEECHING_ROT <= diff)
            {
                if (DoCastTryAOE(SPELL_LEECHING_ROT))
                {
                    me->ForcedDespawn(3*IN_MILLISECONDS);
                    LEECHING_ROT = 10*IN_MILLISECONDS;
                }

            }else LEECHING_ROT -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_AdvisorAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_AdvisorAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHROUD_OF_PROTECTION;
        uint32 SHROUD_OF_SPELL_WARDING;
        uint32 LICH_SLAP;
        
        void Reset()
        {
            SHROUD_OF_PROTECTION    = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            LICH_SLAP               = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SHROUD_OF_PROTECTION <= diff)
            {
                if (Unit* target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : DoSelectLowestHpFriendly(40.0f))
                    if (DoCastTry(target,SPELL_SHROUD_OF_PROTECTION))
                        if (DoCastTry(target,SPELL_SHROUD_OF_SPELL_WARDING))
                            SHROUD_OF_PROTECTION = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else SHROUD_OF_PROTECTION -= diff;

            if (LICH_SLAP <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_LICH_SLAP))
                    LICH_SLAP = 10*IN_MILLISECONDS;

            }else LICH_SLAP -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_CommanderAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_CommanderAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 BATTLE_SHOUT;
        uint32 VAMPIRE_RUSH;
        
        void Reset()
        {
            BATTLE_SHOUT  = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            VAMPIRE_RUSH  = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (BATTLE_SHOUT <= diff)
            {
                if (DoCastTryAOE(SPELL_BATTLE_SHOUT))
                        BATTLE_SHOUT = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else BATTLE_SHOUT -= diff;

            if (VAMPIRE_RUSH <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_VAMPIRE_RUSH))
                        VAMPIRE_RUSH = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);

            }else VAMPIRE_RUSH -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_TacticianAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_TacticianAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 SHADOWSTEP;
        uint32 BLOOD_SAP;
        uint32 UNHOLY_STRIKE;
        
        void Reset()
        {
            SHADOWSTEP    = urand(1*IN_MILLISECONDS, 2*IN_MILLISECONDS);
            BLOOD_SAP     = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            UNHOLY_STRIKE = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (SHADOWSTEP <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOWSTEP))
                        SHADOWSTEP = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else SHADOWSTEP -= diff;

            if (BLOOD_SAP <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_BLOOD_SAP))
                        BLOOD_SAP = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else BLOOD_SAP -= diff;

            if (UNHOLY_STRIKE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_UNHOLY_STRIKE))
                    UNHOLY_STRIKE = 5*IN_MILLISECONDS;

            }else UNHOLY_STRIKE -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Darkfallen_LieutenantAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Darkfallen_LieutenantAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 REND_FLESH;
        uint32 VAMPIRIC_CURSE;
        
        void Reset()
        {
            REND_FLESH     = urand(1*IN_MILLISECONDS, 2*IN_MILLISECONDS);
            VAMPIRIC_CURSE = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (VAMPIRIC_CURSE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_VAMPIRIC_CURSE))
                    VAMPIRIC_CURSE = urand(10*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else REND_FLESH -= diff;

            if (REND_FLESH <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_REND_FLESH))
                    REND_FLESH = 25*IN_MILLISECONDS;

            }else REND_FLESH -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ymirjar_FrostbinderAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ymirjar_FrostbinderAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 FROZEN_ORB;
        
        void Reset()
        {
            FROZEN_ORB     = 1*IN_MILLISECONDS;
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void EnterCombat(Unit* /*target*/)
        {
            DoCast(me, SPELL_ARCTIC_CHILL);
        }
        
        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (FROZEN_ORB <= diff)
            {
                if (DoCastTryAOE(SPELL_FROZEN_ORB))
                    FROZEN_ORB = urand(3*IN_MILLISECONDS, 5*IN_MILLISECONDS);

            }else FROZEN_ORB -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ymirjar_DeathbringerAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ymirjar_DeathbringerAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 BANISH;
        uint32 DEATHS_EMBRACE;
        uint32 SHADOW_BOLT_2;
        
        void Reset()
        {
            BANISH         = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            DEATHS_EMBRACE = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            SHADOW_BOLT_2  = urand(1*IN_MILLISECONDS, 2*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (DEATHS_EMBRACE <= diff)
            {
                if (DoCastTry(me,SPELL_DEATHS_EMBRACE))
                    DEATHS_EMBRACE = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else DEATHS_EMBRACE -= diff;

            if (BANISH <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_BANISH))
                        BANISH = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else BANISH -= diff;

            if (SHADOW_BOLT_2 <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_SHADOW_BOLT_2))
                    SHADOW_BOLT_2 = 2*IN_MILLISECONDS;

            }else SHADOW_BOLT_2 -= diff;

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ymirjar_Battle_MaidenAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ymirjar_Battle_MaidenAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 ADRENALINE_RUSH;
        uint32 BARBARIC_STRIKE;
        
        void Reset()
        {
            ADRENALINE_RUSH = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            BARBARIC_STRIKE = urand(1*IN_MILLISECONDS, 5*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (ADRENALINE_RUSH <= diff)
            {
                if (DoCastTry(me,SPELL_ADRENALINE_RUSH))
                    ADRENALINE_RUSH = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else ADRENALINE_RUSH -= diff;

            if (BARBARIC_STRIKE <= diff)
            {
                if (DoCastTry(me->getVictim(),SPELL_BARBARIC_STRIKE))
                    BARBARIC_STRIKE = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);

            }else BARBARIC_STRIKE -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ymirjar_HuntressAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ymirjar_HuntressAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 ICE_TRAP;
        uint32 RAPID_SHOT;
        uint32 SHOOT;
        uint32 VOLLEY;
        
        void Reset()
        {
            ICE_TRAP   = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            RAPID_SHOT = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            SHOOT      = urand(1*IN_MILLISECONDS, 2*IN_MILLISECONDS);
            VOLLEY     = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void EnterCombat(Unit* /*target*/)
        {
            if (Is25ManRaid())
                DoCast(SPELL_SUMMON_WARHAWK);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (RAPID_SHOT <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_RAPID_SHOT))
                        RAPID_SHOT = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);

            }else RAPID_SHOT -= diff;

            if (VOLLEY <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_VOLLEY))
                        VOLLEY = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);

            }else VOLLEY -= diff;

            if (ICE_TRAP <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    if (DoCastTry(target,SPELL_ICE_TRAP))
                        ICE_TRAP = urand(30*IN_MILLISECONDS, 35*IN_MILLISECONDS);

            }else ICE_TRAP -= diff;

            if (me->isAttackReady())
            {
                if (me->IsWithinMeleeRange(me->getVictim()))
                    DoMeleeAttackIfReady();
                else if (SHOOT <= diff)
                {
                    if (DoCastTry(me->getVictim(),SPELL_SHOOT))
                        SHOOT = 1*IN_MILLISECONDS;
                }
                else SHOOT -= diff;
            }

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

    struct mob_icecrown_citadel_Ymirjar_WarlordAI: public mobs_icecrown_citadelAI
    {
        mob_icecrown_citadel_Ymirjar_WarlordAI(Creature *c) : mobs_icecrown_citadelAI(c) 
        { }

        uint32 WHIRLWIND;
        
        void Reset()
        {
            WHIRLWIND = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
        }

        void JustDied(Unit* killer)
        {
            if (PlayersCountRange(500.0f))// 500 yardas
                return;

            DoCast(me,SPELL_SOUL_FEAST_ALL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (WHIRLWIND <= diff)
            {
                if (DoCastTryAOE(SPELL_WHIRLWIND))
                    WHIRLWIND= urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);

            }else WHIRLWIND -= diff;

            DoMeleeAttackIfReady();

            mobs_icecrown_citadelAI::UpdateAI(diff);
        }
    };

};

void AddSC_mobs_icecrown_citadel()
{
    new mobs_icecrown_citadel();
}
