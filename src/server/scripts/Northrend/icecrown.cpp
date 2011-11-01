/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: Icecrown
SD%Complete: 100
SDComment: Quest support: 12807
SDCategory: Icecrown
EndScriptData */

/* ContentData
npc_arete
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_arete
######*/

#define GOSSIP_ARETE_ITEM1 "Lord-Commander, I would hear your tale."
#define GOSSIP_ARETE_ITEM2 "<You nod slightly but do not complete the motion as the Lord-Commander narrows his eyes before he continues.>"
#define GOSSIP_ARETE_ITEM3 "I thought that they now called themselves the Scarlet Onslaught?"
#define GOSSIP_ARETE_ITEM4 "Where did the grand admiral go?"
#define GOSSIP_ARETE_ITEM5 "That's fine. When do I start?"
#define GOSSIP_ARETE_ITEM6 "Let's finish this!"
#define GOSSIP_ARETE_ITEM7 "That's quite a tale, Lord-Commander."

enum eArete
{
    GOSSIP_TEXTID_ARETE1        = 13525,
    GOSSIP_TEXTID_ARETE2        = 13526,
    GOSSIP_TEXTID_ARETE3        = 13527,
    GOSSIP_TEXTID_ARETE4        = 13528,
    GOSSIP_TEXTID_ARETE5        = 13529,
    GOSSIP_TEXTID_ARETE6        = 13530,
    GOSSIP_TEXTID_ARETE7        = 13531,

    QUEST_THE_STORY_THUS_FAR    = 12807
};

class npc_arete : public CreatureScript
{
public:
    npc_arete() : CreatureScript("npc_arete") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(QUEST_THE_STORY_THUS_FAR) == QUEST_STATUS_INCOMPLETE)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
            return true;
        }

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        player->PlayerTalkClass->ClearMenus();
        switch (uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF+1:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE2, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE3, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+3:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE4, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+4:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE5, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+5:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM6, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE6, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+6:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARETE_ITEM7, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
                player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_ARETE7, creature->GetGUID());
                break;
            case GOSSIP_ACTION_INFO_DEF+7:
                player->CLOSE_GOSSIP_MENU();
                player->AreaExploredOrEventHappens(QUEST_THE_STORY_THUS_FAR);
                break;
        }

        return true;
    }
};

/*######
## npc_dame_evniki_kapsalis
######*/

enum eDameEnvikiKapsalis
{
    TITLE_CRUSADER    = 123
};

class npc_dame_evniki_kapsalis : public CreatureScript
{
public:
    npc_dame_evniki_kapsalis() : CreatureScript("npc_dame_evniki_kapsalis") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->HasTitle(TITLE_CRUSADER))
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_BROWSE_GOODS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);

        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        player->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_TRADE)
            player->GetSession()->SendListInventory(creature->GetGUID());
        return true;
    }
};

/*######
## npc_squire_david
######*/

enum eSquireDavid
{
    QUEST_THE_ASPIRANT_S_CHALLENGE_H                    = 13680,
    QUEST_THE_ASPIRANT_S_CHALLENGE_A                    = 13679,

    NPC_ARGENT_VALIANT                                  = 33448,

    GOSSIP_TEXTID_SQUIRE_DAVID                          = 14407
};

#define GOSSIP_SQUIRE_ITEM_1 "I am ready to fight!"
#define GOSSIP_SQUIRE_ITEM_2 "How do the Argent Crusader raiders fight?"

class npc_squire_david : public CreatureScript
{
public:
    npc_squire_david() : CreatureScript("npc_squire_david") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->GetQuestStatus(QUEST_THE_ASPIRANT_S_CHALLENGE_H) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_THE_ASPIRANT_S_CHALLENGE_A) == QUEST_STATUS_INCOMPLETE)//We need more info about it.
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SQUIRE_ITEM_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SQUIRE_ITEM_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
        }

        player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_SQUIRE_DAVID, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        player->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
        {
            player->CLOSE_GOSSIP_MENU();
            creature->SummonCreature(NPC_ARGENT_VALIANT, 8575.451f, 952.472f, 547.554f, 0.38f);
        }
        //else
        //player->SEND_GOSSIP_MENU(???, creature->GetGUID()); Missing text
        return true;
    }
};

/*######
## npc_argent_valiant
######*/

enum eArgentValiant
{
    SPELL_CHARGE                = 63010,
    SPELL_SHIELD_BREAKER        = 65147,
    SPELL_DEFEND                = 62719,
    SPELL_THRUST                = 62544,

    NPC_ARGENT_VALIANT_CREDIT   = 38595
};

enum eValiantText
{
    NPC_FACTION_VAILIANT_TEXT_SAY_START_1   = -1850004,//   Tenez-vous prêt !
    NPC_FACTION_VAILIANT_TEXT_SAY_START_2   = -1850005,//   Que le combat commence !
    NPC_FACTION_VAILIANT_TEXT_SAY_START_3   = -1850006,//   Préparez-vous !
    NPC_ARGENT_VAILIANT_TEXT_SAY_START      = -1850007,//   Vous pensez avoir la vaillance en vous ? Nous verrons.
    NPC_ARGENT_VAILIANT_TEXT_SAY_WIN        = -1850008,//   Impressionnante démonstration. Je pense que vous êtes tout à fait en mesure de rejoindre les rangs des vaillants.
    NPC_ARGENT_VAILIANT_TEXT_SAY_LOOSE      = -1850009,//   J'ai gagné. Vous aurez sans doute plus de chance la prochaine fois.
    NPC_FACTION_VAILIANT_TEXT_SAY_WIN_1     = -1850010,//   Je suis vaincue. Joli combat !
    NPC_FACTION_VAILIANT_TEXT_SAY_WIN_2     = -1850011,//   On dirait que j'ai sous-estimé vos compétences. Bien joué.
    NPC_FACTION_VAILIANT_TEXT_SAY_LOOSE     = -1850012,//   J'ai gagné. Vous aurez sans doute plus de chance la prochaine fois.
};

class npc_argent_valiant : public CreatureScript
{
public:
    npc_argent_valiant() : CreatureScript("npc_argent_valiant") { }

    struct npc_argent_valiantAI : public ScriptedAI
    {
        npc_argent_valiantAI(Creature* creature) : ScriptedAI(creature)
        {
            me->CastSpell(me, SPELL_DEFEND, true);
            me->CastSpell(me, SPELL_DEFEND, true);
            creature->GetMotionMaster()->MovePoint(0, 8599.258f, 963.951f, 547.553f);
            creature->setFaction(35); //wrong faction in db?
        }

        uint32 uiChargeTimer;
        uint32 uiShieldBreakerTimer;
        uint32 uiDefendTimer;

        void Reset()
        {
            uiChargeTimer = 7000;
            uiShieldBreakerTimer = 10000;
            uiDefendTimer = 10000;
        }

        void MovementInform(uint32 uiType, uint32 /*uiId*/)
        {
            if (uiType != POINT_MOTION_TYPE)
                return;

            me->setFaction(14);
        }

        void DamageTaken(Unit* pDoneBy, uint32& uiDamage)
        {
            if(pDoneBy)
            {
                if (uiDamage > me->GetHealth() && (pDoneBy->GetTypeId() == TYPEID_PLAYER || pDoneBy->GetOwner()))
                {
                    DoScriptText(NPC_ARGENT_VAILIANT_TEXT_SAY_WIN, me);
                    uiDamage = 0;

                    if(pDoneBy->GetOwner())
                        (pDoneBy->GetOwner())->ToPlayer()->KilledMonsterCredit(NPC_ARGENT_VALIANT_CREDIT,0);
                    if(pDoneBy->GetTypeId() == TYPEID_PLAYER)
                         pDoneBy->ToPlayer()->KilledMonsterCredit(NPC_ARGENT_VALIANT_CREDIT,0);

                    me->setFaction(35);
                    me->ForcedDespawn(5000);
                    me->SetHomePosition(me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),me->GetOrientation());
                    EnterEvadeMode();
                }
            }
        }
        void KilledUnit(Unit* /*victim*/)
        {
            me->setFaction(35);
            me->ForcedDespawn(5000);
            DoScriptText(NPC_ARGENT_VAILIANT_TEXT_SAY_LOOSE, me);
            me->CombatStop(true);
        }

        void DoMeleeAttackIfReady()
        {
            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            //Make sure our attack is ready and we aren't currently casting before checking distance
            if (me->isAttackReady())
            {
                //If we are within range melee the target
                if (me->IsWithinMeleeRange(me->getVictim()))
                {
                    DoCastVictim(SPELL_THRUST);
                    me->resetAttackTimer();
                }
            }
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(NPC_ARGENT_VAILIANT_TEXT_SAY_START, me);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiChargeTimer <= uiDiff)
            {
                DoCastVictim(SPELL_CHARGE);
                uiChargeTimer = 7000;
            } else uiChargeTimer -= uiDiff;

            if (uiShieldBreakerTimer <= uiDiff)
            {
                DoCastVictim(SPELL_SHIELD_BREAKER);
                uiShieldBreakerTimer = 10000;
            } else uiShieldBreakerTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_valiantAI(creature);
    }
};

/*######
## npc_alorah_and_grimmin
######*/

enum ealorah_and_grimmin
{
    SPELL_CHAIN                     = 68341,
    NPC_FJOLA_LIGHTBANE             = 36065,
    NPC_EYDIS_DARKBANE              = 36066,
    NPC_PRIESTESS_ALORAH            = 36101,
    NPC_PRIEST_GRIMMIN              = 36102
};

class npc_alorah_and_grimmin : public CreatureScript
{
public:
    npc_alorah_and_grimmin() : CreatureScript("npc_alorah_and_grimmin") { }

    struct npc_alorah_and_grimminAI : public ScriptedAI
    {
        npc_alorah_and_grimminAI(Creature* creature) : ScriptedAI(creature) {}

        bool uiCast;

        void Reset()
        {
            uiCast = false;
        }

        void UpdateAI(const uint32 /*uiDiff*/)
        {
            if (uiCast)
                return;
            uiCast = true;
            Creature* target = NULL;

            switch (me->GetEntry())
            {
                case NPC_PRIESTESS_ALORAH:
                    target = me->FindNearestCreature(NPC_EYDIS_DARKBANE, 10.0f);
                    break;
                case NPC_PRIEST_GRIMMIN:
                    target = me->FindNearestCreature(NPC_FJOLA_LIGHTBANE, 10.0f);
                    break;
            }
            if (target)
                DoCast(target, SPELL_CHAIN);

            if (!UpdateVictim())
                return;
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_alorah_and_grimminAI(creature);
    }
};

/*######
## npc_guardian_pavilion
######*/

enum eGuardianPavilion
{
    SPELL_TRESPASSER_H                            = 63987,
    AREA_SUNREAVER_PAVILION                       = 4676,

    AREA_SILVER_COVENANT_PAVILION                 = 4677,
    SPELL_TRESPASSER_A                            = 63986,
};

class npc_guardian_pavilion : public CreatureScript
{
public:
    npc_guardian_pavilion() : CreatureScript("npc_guardian_pavilion") { }

    struct npc_guardian_pavilionAI : public Scripted_NoMovementAI
    {
        npc_guardian_pavilionAI(Creature* creature) : Scripted_NoMovementAI(creature) {}

        void MoveInLineOfSight(Unit* who)
        {
            if (me->GetAreaId() != AREA_SUNREAVER_PAVILION && me->GetAreaId() != AREA_SILVER_COVENANT_PAVILION)
                return;

            if (!who || who->GetTypeId() != TYPEID_PLAYER || !me->IsHostileTo(who) || !me->isInBackInMap(who, 5.0f))
                return;

            if (who->HasAura(SPELL_TRESPASSER_H) || who->HasAura(SPELL_TRESPASSER_A))
                return;

            if (who->ToPlayer()->GetTeamId() == TEAM_ALLIANCE)
                who->CastSpell(who, SPELL_TRESPASSER_H, true);
            else
                who->CastSpell(who, SPELL_TRESPASSER_A, true);

        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_guardian_pavilionAI(creature);
    }
};

/*######
## npc_vereth_the_cunning
######*/

enum eVerethTheCunning
{
    NPC_GEIST_RETURN_BUNNY_KC   = 31049,
    NPC_LITHE_STALKER           = 30894,
    SPELL_SUBDUED_LITHE_STALKER = 58151,
};

class npc_vereth_the_cunning : public CreatureScript
{
public:
    npc_vereth_the_cunning() : CreatureScript("npc_vereth_the_cunning") { }

    struct npc_vereth_the_cunningAI : public ScriptedAI
    {
        npc_vereth_the_cunningAI(Creature* creature) : ScriptedAI(creature) {}

        void MoveInLineOfSight(Unit* who)
        {
            ScriptedAI::MoveInLineOfSight(who);

            if (who->GetEntry() == NPC_LITHE_STALKER && me->IsWithinDistInMap(who, 10.0f))
            {
                if (Unit* owner = who->GetCharmer())
                {
                    if (who->HasAura(SPELL_SUBDUED_LITHE_STALKER))
                        {
                            owner->ToPlayer()->KilledMonsterCredit(NPC_GEIST_RETURN_BUNNY_KC, 0);
                            who->ToCreature()->DisappearAndDie();

                    }
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_vereth_the_cunningAI(creature);
    }
};

/*####
## npc_vendor_argent_tournament
######*/

const uint32 ArgentTournamentVendor[10][4] =
{
    {33553,13726,2,14460}, // Orc
    {33554,13726,8,14464}, // Troll
    {33556,13728,6,14458}, // Tauren
    {33555,13729,5,14459}, // Undead
    {33557,13731,10,14465}, // Blood Elf
    {33307,13699,1,14456}, // Human
    {33310,13713,3,14457}, // Dwarf
    {33653,13725,4,14463}, // Night Elf
    {33650,13723,7,14462}, // Gnome
    {33657,13724,11,14461} // Draenei
};

class npc_vendor_argent_tournament : public CreatureScript
{
public:
    npc_vendor_argent_tournament(): CreatureScript("npc_vendor_argent_tournament"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        bool npcCheck = false;
        bool questCheck = false;
        bool raceCheck = false;
        bool friendlyCheck = false;
        uint32 textId = 0;

        for(int i = 0; (i < 10) && !npcCheck; i++)
        {
            if(creature->GetEntry() == ArgentTournamentVendor[i][0])
            {
                //questCheck = player->GetQuestStatus(ArgentTournamentVendor[i][1]) == QUEST_STATUS_COMPLETE;
                if((player->GetQuestStatus(ArgentTournamentVendor[i][1]) == QUEST_STATUS_COMPLETE) || (player->GetQuestStatus(ArgentTournamentVendor[i][1]) == QUEST_STATUS_REWARDED))
                    {
                        questCheck = true;
                    }
                raceCheck = player->getRace() == ArgentTournamentVendor[i][2];
                friendlyCheck = creature->IsFriendlyTo(player);
                textId = ArgentTournamentVendor[i][3];
            }
        }

        if(questCheck || friendlyCheck)// || raceCheck)
            player->GetSession()->SendListInventory(creature->GetGUID());
        else
            player->SEND_GOSSIP_MENU(textId, creature->GetGUID());
        return true;
    }

};

/*######
* quest_givers_argent_tournament
######*/

class quest_givers_argent_tournament : public CreatureScript
{
public:
    quest_givers_argent_tournament(): CreatureScript("quest_givers_argent_tournament"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        //uint64 const guid = creature->GetGUID();

            if (creature->isQuestGiver())
        {
            Object *pObject = (Object*)creature;
            QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
            QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();

            QuestMenu &qm = player->PlayerTalkClass->GetQuestMenu();
            qm.ClearMenu();

            for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                QuestStatus status = player->GetQuestStatus(quest_id);
                if (status == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(quest_id))
                    qm.AddMenuItem(quest_id, 4);
                else if (status == QUEST_STATUS_INCOMPLETE)
                    qm.AddMenuItem(quest_id, 4);
                //else if (status == QUEST_STATUS_AVAILABLE)
                //    qm.AddMenuItem(quest_id, 2);
            }

            bool EligibilityAlliance = player->GetQuestStatus(13686) == QUEST_STATUS_COMPLETE;
            bool EligibilityHorde = player->GetQuestStatus(13687) == QUEST_STATUS_COMPLETE;

            for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);
                if (!pQuest) continue;

                switch(quest_id)
                {
                    case 13707: // Valiant Of Orgrimmar
                    case 13708: // Valiant Of Sen'jin
                    case 13709: // Valiant Of Thunder Bluff
                    case 13710: // Valiant Of Undercity
                    case 13711: // Valiant Of Silvermoon
                        if(!EligibilityHorde)
                        {
                            QuestStatus status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    case 13593: // Valiant Of Stormwind
                    case 13703: // Valiant Of Ironforge
                    case 13706: // Valiant Of Darnassus
                    case 13704: // Valiant Of Gnomeregan
                    case 13705: // Valiant Of The Exodar
                        if(!EligibilityAlliance)
                        {
                            QuestStatus status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    default:
                        QuestStatus status = player->GetQuestStatus(quest_id);

                        if (pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 4);
                        else if (status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 2);
                        break;
                }
            }
        }
        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*######
* npc_training_dummy_argent
######*/
#define SPELL_DEFEND_AURA 62719
#define SPELL_DEFEND_AURA_1 64100
#define SPELL_ARGENT_CHARGE 68321
#define SPELL_ARGENT_BREAK_SHIELD 62626
#define SPELL_ARGENT_MELEE 62544

class npc_training_dummy_argent : public CreatureScript
{
public:
    npc_training_dummy_argent(): CreatureScript("npc_training_dummy_argent"){}

    struct npc_training_dummy_argentAI : Scripted_NoMovementAI
    {
        npc_training_dummy_argentAI(Creature *c) : Scripted_NoMovementAI(c)
        {
        m_Entry = c->GetEntry();
        }

        uint64 m_Entry;
        uint32 ResetTimer;
        uint32 DespawnTimer;
        uint32 ShielTimer;
        void Reset()
        {
        me->SetControlled(true,UNIT_STAT_STUNNED);//disable rotate
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);//imune to knock aways like blast wave
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_STUN, true);
        ResetTimer = 10000;
        DespawnTimer = 15000;
            ShielTimer=0;
        }

        void EnterEvadeMode()
        {
        if (!_EnterEvadeMode())
            return;

        Reset();
        }

        void DamageTaken(Unit * /*done_by*/, uint32 &damage)
        {
        ResetTimer = 10000;
        damage = 0;
        }

        void EnterCombat(Unit * /*who*/)
        {
        if (m_Entry != 2674 && m_Entry != 2673)
            return;
        }

        void SpellHit(Unit* caster,const SpellEntry* spell)
        {
            if(caster->GetOwner())
            {
                if(m_Entry==33272)
                    if(spell->Id==SPELL_ARGENT_CHARGE)
                        if(!me->GetAura(SPELL_DEFEND_AURA))
                            caster->GetOwner()->ToPlayer()->KilledMonsterCredit(33340, 0);
                if(m_Entry==33229){
                    if(spell->Id==SPELL_ARGENT_MELEE)
                    {
                        caster->GetOwner()->ToPlayer()->KilledMonsterCredit(33341, 0);
                        me->CastSpell(caster,62709,true);
                    }
                }

            }

            if(m_Entry==33243)
                    if(spell->Id==SPELL_ARGENT_BREAK_SHIELD)
                        if(!me->GetAura(SPELL_DEFEND_AURA))
                            if(caster->GetTypeId()==TYPEID_PLAYER)
                                caster->ToPlayer()->KilledMonsterCredit(33339, 0);
        }


        void UpdateAI(const uint32 diff)
        {
            if (ShielTimer <= diff)
            {
                if(m_Entry==33243)
                    me->CastSpell(me,SPELL_DEFEND_AURA,true);

                if(m_Entry==33272 && !me->GetAura(SPELL_DEFEND_AURA_1))
                        me->CastSpell(me,SPELL_DEFEND_AURA_1,true);
                ShielTimer = 8000;
            }
            else
                ShielTimer -= diff;

        if (!UpdateVictim())
            return;
        if (!me->HasUnitState(UNIT_STAT_STUNNED))
            me->SetControlled(true,UNIT_STAT_STUNNED);//disable rotate

        if (m_Entry != 2674 && m_Entry != 2673)
        {
            if (ResetTimer <= diff)
            {
            EnterEvadeMode();
            ResetTimer = 10000;
            }
            else
            ResetTimer -= diff;
            return;
        }
        else
        {
            if (DespawnTimer <= diff)
            me->ForcedDespawn();
            else
            DespawnTimer -= diff;
        }
        }
        void MoveInLineOfSight(Unit * /*who*/){return;}
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_training_dummy_argentAI(creature);
    }

};

/*######
* npc_quest_givers_for_crusaders
######*/

class npc_quest_givers_for_crusaders : public CreatureScript
{
public:
    npc_quest_givers_for_crusaders(): CreatureScript("npc_quest_givers_for_crusaders"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->HasTitle(TITLE_CRUSADER))
            if (creature->isQuestGiver())
                player->PrepareQuestMenu(creature->GetGUID());

        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*######
* npc_crusader_rhydalla
######*/

class npc_crusader_rhydalla : public CreatureScript
{
public:
    npc_crusader_rhydalla(): CreatureScript("npc_crusader_rhydalla"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        // uint64 const guid = creature->GetGUID();

        if (creature->isQuestGiver())
        {
            Object *pObject = (Object*)creature;
            QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
            QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();

            QuestMenu &qm = player->PlayerTalkClass->GetQuestMenu();
            qm.ClearMenu();

            for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                QuestStatus status = player->GetQuestStatus(quest_id);
                if (status == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(quest_id))
                    qm.AddMenuItem(quest_id, 4);
                else if (status == QUEST_STATUS_INCOMPLETE)
                    qm.AddMenuItem(quest_id, 4);
                //else if (status == QUEST_STATUS_AVAILABLE)
                //    qm.AddMenuItem(quest_id, 2);
            }

            for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);
                if (!pQuest) continue;
                QuestStatus status;
                bool allowed=false;
                switch(quest_id)
                {
                    case 13664: // The Black Knigh's Fall
                        allowed = (player->GetQuestStatus(13700) == QUEST_STATUS_COMPLETE) || (player->GetQuestStatus(13701) == QUEST_STATUS_COMPLETE);
                        if(allowed)
                        {
                            status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    default:
                        status = player->GetQuestStatus(quest_id);

                        if (pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 4);
                        else if (status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 2);
                        break;
                }
            }
        }
        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*######
* npc_eadric_the_pure
######*/

class npc_eadric_the_pure : public CreatureScript
{
public:
    npc_eadric_the_pure(): CreatureScript("npc_eadric_the_pure"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        // uint64 const guid = creature->GetGUID();

        if (creature->isQuestGiver())
        {
            Object *pObject = (Object*)creature;
            QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
            QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();

            QuestMenu &qm = player->PlayerTalkClass->GetQuestMenu();
            qm.ClearMenu();

            for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                QuestStatus status = player->GetQuestStatus(quest_id);
                if (status == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(quest_id))
                    qm.AddMenuItem(quest_id, 4);
                else if (status == QUEST_STATUS_INCOMPLETE)
                    qm.AddMenuItem(quest_id, 4);
                //else if (status == QUEST_STATUS_AVAILABLE)
                //    qm.AddMenuItem(quest_id, 2);
            }

            for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);
                if (!pQuest) continue;
                QuestStatus status;
                bool allowed=false;
                switch(quest_id)
                {
                    case 13682: // Alliance Threat From Above
                    case 13809: // Horde Threat From Above
                        allowed = (player->GetQuestStatus(13664) == QUEST_STATUS_COMPLETE) && player->GetQuestRewardStatus(13664);
                        if(allowed)
                        {
                            status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    default:
                        status = player->GetQuestStatus(quest_id);

                        if (pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 4);
                        else if (status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 2);
                        break;
                }
            }
        }
        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*######
* npc_justicar_mariel_trueheart
######*/

class npc_justicar_mariel_trueheart : public CreatureScript
{
public:
    npc_justicar_mariel_trueheart(): CreatureScript("npc_justicar_mariel_trueheart"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        // uint64 const guid = creature->GetGUID();

        if (creature->isQuestGiver())
        {
            Object *pObject = (Object*)creature;
            QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
            QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();

            QuestMenu &qm = player->PlayerTalkClass->GetQuestMenu();
            qm.ClearMenu();

            for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                QuestStatus status = player->GetQuestStatus(quest_id);
                if (status == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(quest_id))
                    qm.AddMenuItem(quest_id, 4);
                else if (status == QUEST_STATUS_INCOMPLETE)
                    qm.AddMenuItem(quest_id, 4);
                //else if (status == QUEST_STATUS_AVAILABLE)
                //    qm.AddMenuItem(quest_id, 2);
            }

            for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);
                if (!pQuest) continue;
                QuestStatus status;
                bool allowed=false;
                switch(quest_id)
                {
                    case 13795: // The Scourgebane
                        allowed = (player->GetQuestStatus(13702) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13702)) || (player->GetQuestStatus(13732) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13732)) || (player->GetQuestStatus(13735) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13735)) || (player->GetQuestStatus(13733) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13733)) || (player->GetQuestStatus(13734) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13734)) || (player->GetQuestStatus(13736) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13736)) || (player->GetQuestStatus(13737) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13737)) || (player->GetQuestStatus(13738) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13738)) || (player->GetQuestStatus(13739) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13739)) || (player->GetQuestStatus(13740) == QUEST_STATUS_COMPLETE && player->GetQuestRewardStatus(13740)); // If the player has finished any of the "A Champion Rises" quests
                        if(allowed)
                        {
                            status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    default:
                        status = player->GetQuestStatus(quest_id);

                        if (pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 4);
                        else if (status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 2);
                        break;
                }
            }
        }
        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*######
* npc_crok_scourgebane_tournament
######*/

class npc_crok_scourgebane_tournament : public CreatureScript
{
public:
    npc_crok_scourgebane_tournament(): CreatureScript("npc_crok_scourgebane_tournament"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        // uint64 const guid = creature->GetGUID();

        if (creature->isQuestGiver())
        {
            Object *pObject = (Object*)creature;
            QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
            QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();

            QuestMenu &qm = player->PlayerTalkClass->GetQuestMenu();
            qm.ClearMenu();

            for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                QuestStatus status = player->GetQuestStatus(quest_id);
                if (status == QUEST_STATUS_COMPLETE && !player->GetQuestRewardStatus(quest_id))
                    qm.AddMenuItem(quest_id, 4);
                else if (status == QUEST_STATUS_INCOMPLETE)
                    qm.AddMenuItem(quest_id, 4);
                //else if (status == QUEST_STATUS_AVAILABLE)
                //    qm.AddMenuItem(quest_id, 2);
            }

            for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
            {
                uint32 quest_id = i->second;
                Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);
                if (!pQuest) continue;
                QuestStatus status;
                bool allowed=false;
                switch(quest_id)
                {
                    case 13788: // DK Threat From Above (Alliance)
                    case 13812: // DK Threat From Above (Horde)
                        allowed = (player->GetQuestStatus(13664) == QUEST_STATUS_COMPLETE) && player->GetQuestRewardStatus(13664);
                        if(allowed)
                        {
                            status = player->GetQuestStatus(quest_id);

                            if(pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else if(status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 2);
                        }
                        break;
                    default:
                        status = player->GetQuestStatus(quest_id);

                        if (pQuest->IsAutoComplete() && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 4);
                        else if (status == QUEST_STATUS_NONE && player->CanTakeQuest(pQuest, false))
                            qm.AddMenuItem(quest_id, 2);
                        break;
                }
            }
        }
        player->SEND_GOSSIP_MENU(creature->GetGossipTextId(), creature->GetGUID());
        return true;
    }

};

/*
* Npc Jeran Lockwood (33973)
*/
#define JERAN_DEFAULT_TEXTID 14453
#define JERAN_QUEST_TEXTID 14431
#define JERAN_RP_TEXTID 14434
//#define GOSSIP_HELLO_JERAN_1 "Montrez-moi comment m'entraÃ®ner sur une cible de mÃªlÃ©e."
//#define GOSSIP_HELLO_JERAN_2 "Parlez-moi de la dÃ©fense et du coup de lance."
#define GOSSIP_HELLO_JERAN_1 "Muestrame como entrenar con un objetivo de cuerpo a cuerpo."
#define GOSSIP_HELLO_JERAN_2 "Hableme de la defensa y la lanza."
#define SPELL_CREDIT_JERAN 64113

class npc_jeran_lockwood : public CreatureScript
{
public:
    npc_jeran_lockwood(): CreatureScript("npc_jeran_lockwood"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if((player->GetQuestStatus(13828) == QUEST_STATUS_INCOMPLETE) || (player->GetQuestStatus(13829) == QUEST_STATUS_INCOMPLETE))
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_JERAN_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_JERAN_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
            player->SEND_GOSSIP_MENU(JERAN_QUEST_TEXTID, creature->GetGUID());
        }
        else
        {
            player->SEND_GOSSIP_MENU(JERAN_DEFAULT_TEXTID, creature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF+1:
                player->CastSpell(player,SPELL_CREDIT_JERAN,true);
                player->CLOSE_GOSSIP_MENU();
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_JERAN_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                player->SEND_GOSSIP_MENU(JERAN_RP_TEXTID, creature->GetGUID());
                break;
        }
        return true;
    }

};

/*
* Npc Rugan Steelbelly (33972)
*/
#define RUGAN_DEFAULT_TEXTID 14453
#define RUGAN_QUEST_TEXTID 14436
#define RUGAN_RP_TEXTID 14437
//#define GOSSIP_HELLO_RUGAN_1 "Montrez-moi comment m'entraÃ®ner sur une cible de charge."
//#define GOSSIP_HELLO_RUGAN_2 "Parlez-moi de la charge"
#define GOSSIP_HELLO_RUGAN_1 "Muestrame como entrenar con un objetivo de carga."
#define GOSSIP_HELLO_RUGAN_2 "Hableme de la carga."
#define SPELL_CREDIT_RUGAN 64114

class npc_rugan_steelbelly : public CreatureScript
{
public:
    npc_rugan_steelbelly(): CreatureScript("npc_rugan_steelbelly"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if((player->GetQuestStatus(13837) == QUEST_STATUS_INCOMPLETE) || (player->GetQuestStatus(13839) == QUEST_STATUS_INCOMPLETE))
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_RUGAN_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_RUGAN_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
        player->SEND_GOSSIP_MENU(RUGAN_QUEST_TEXTID, creature->GetGUID());
        }
        else
        {
            player->SEND_GOSSIP_MENU(RUGAN_DEFAULT_TEXTID, creature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF+1:
                player->CastSpell(player,SPELL_CREDIT_RUGAN,true);
                player->CLOSE_GOSSIP_MENU();
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_RUGAN_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                player->SEND_GOSSIP_MENU(RUGAN_RP_TEXTID, creature->GetGUID());
                break;
        }
        return true;
    }

};

/*
* Npc Valis Windchaser
*/
#define VALIS_DEFAULT_TEXTID 14453
#define VALIS_QUEST_TEXTID 14438
#define VALIS_RP_TEXTID 14439
//#define GOSSIP_HELLO_VALIS_1 "Montrez-moi comment m'entraÃ®ner sur une cible Ã distance."
//#define GOSSIP_HELLO_VALIS_2 "Expliquez-moi comment utiliser le brise-bouclier."
#define GOSSIP_HELLO_VALIS_1 "Muestrame como entrenar con un objetivo a distancia."
#define GOSSIP_HELLO_VALIS_2 "Explicame como utilizar Romper Escudo."
#define SPELL_CREDIT_VALIS 64115
class npc_valis_windchaser : public CreatureScript
{
public:
    npc_valis_windchaser(): CreatureScript("npc_valis_windchaser"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        //Si il a la quete
        if((player->GetQuestStatus(13835) == QUEST_STATUS_INCOMPLETE) ||
            (player->GetQuestStatus(13838) == QUEST_STATUS_INCOMPLETE))
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_VALIS_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_VALIS_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
        player->SEND_GOSSIP_MENU(VALIS_QUEST_TEXTID, creature->GetGUID());
        }
        //Sinon Texte par défaut
        else
            player->SEND_GOSSIP_MENU(VALIS_DEFAULT_TEXTID, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        switch (uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF+1:
                player->CastSpell(player,SPELL_CREDIT_VALIS,true);//Cast du sort de credit quest (valide l'objectif)
                player->CLOSE_GOSSIP_MENU();//Ferme la fenetre du gossip coté client
            break;
            case GOSSIP_ACTION_INFO_DEF+2:
                //Raconte un blabla
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_VALIS_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
            player->SEND_GOSSIP_MENU(VALIS_RP_TEXTID, creature->GetGUID());
            break;
        }
        return true;
    }

};

/*######
## npc_squire_danny
######*/

enum eSquireDanny
{
    QUEST_THE_VALIANT_S_CHALLENGE_0         = 13699,
    QUEST_THE_VALIANT_S_CHALLENGE_1         = 13713,
    QUEST_THE_VALIANT_S_CHALLENGE_2         = 13723,
    QUEST_THE_VALIANT_S_CHALLENGE_3         = 13724,
    QUEST_THE_VALIANT_S_CHALLENGE_4         = 13725,
    QUEST_THE_VALIANT_S_CHALLENGE_5         = 13726,
    QUEST_THE_VALIANT_S_CHALLENGE_6         = 13727,
    QUEST_THE_VALIANT_S_CHALLENGE_7         = 13728,
    QUEST_THE_VALIANT_S_CHALLENGE_8         = 13729,
    QUEST_THE_VALIANT_S_CHALLENGE_9         = 13731,

    NPC_ARGENT_CHAMPION                     = 33707,

    GOSSIP_TEXTID_SQUIRE_DANNY              = 14407
};

#define GOSSIP_SQUIRE_ITEM_1 "I am ready to fight!"
#define GOSSIP_SQUIRE_ITEM_2 "How do the Argent Crusader raiders fight?"

class npc_squire_danny : public CreatureScript
{
public:
    npc_squire_danny(): CreatureScript("npc_squire_danny"){}

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_0) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_1) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_2) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_3) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_4) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_5) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_6) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_7) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_8) == QUEST_STATUS_INCOMPLETE ||
        player->GetQuestStatus(QUEST_THE_VALIANT_S_CHALLENGE_9) == QUEST_STATUS_INCOMPLETE)
        {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SQUIRE_ITEM_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SQUIRE_ITEM_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
        }

        player->SEND_GOSSIP_MENU(GOSSIP_TEXTID_SQUIRE_DANNY, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
        {
        player->CLOSE_GOSSIP_MENU();
        creature->SummonCreature(NPC_ARGENT_CHAMPION,8562.836914f,1099.153931f,556.787598f,5.026550f); // TODO (Récupérer les coordonnées réelles)
        }
        //else
        //player->SEND_GOSSIP_MENU(???, creature->GetGUID()); Missing text
        return true;
    }

};

/*######
## npc_argent_champion
######*/

enum eArgentChampion
{
    SPELL_CHARGE_CHAMPION                   = 63010,
    SPELL_SHIELD_BREAKER_CHAMPION           = 65147,
    SPELL_DEFEND_CHAMPION                   = 62719,
    SPELL_THRUST_CHAMPION                   = 62544,

    NPC_ARGENT_CHAMPION_CREDIT              = 33708
};

enum eChampionText
{
    NPC_FACTION_CHAMPION_TEXT_SAY_START_1   = -1850004,//   Tenez-vous prêt !
    NPC_FACTION_CHAMPION_TEXT_SAY_START_2   = -1850005,//   Que le combat commence !
    NPC_FACTION_CHAMPION_TEXT_SAY_START_3   = -1850006,//   Préparez-vous !
    NPC_ARGENT_CHAMPION_TEXT_SAY_START      = -1850007,//   Vous pensez avoir la vaillance en vous ? Nous verrons.
    NPC_ARGENT_CHAMPION_TEXT_SAY_WIN        = -1850008,//   Impressionnante démonstration. Je pense que vous êtes tout à fait en mesure de rejoindre les rangs des vaillants.
    NPC_ARGENT_CHAMPION_TEXT_SAY_LOOSE      = -1850009,//   J'ai gagné. Vous aurez sans doute plus de chance la prochaine fois.
    NPC_FACTION_CHAMPION_TEXT_SAY_WIN_1     = -1850010,//   Je suis vaincue. Joli combat !
    NPC_FACTION_CHAMPION_TEXT_SAY_WIN_2     = -1850011,//   On dirait que j'ai sous-estimé vos compétences. Bien joué.
    NPC_FACTION_CHAMPION_TEXT_SAY_LOOSE     = -1850012,//   J'ai gagné. Vous aurez sans doute plus de chance la prochaine fois.
};

class npc_argent_champion : public CreatureScript
{
public:
    npc_argent_champion(): CreatureScript("npc_argent_champion"){}

    struct npc_argent_championAI : public ScriptedAI
    {
        npc_argent_championAI(Creature* creature) : ScriptedAI(creature)
        {
        me->CastSpell(me, SPELL_DEFEND_CHAMPION, true);
        me->CastSpell(me, SPELL_DEFEND_CHAMPION, true);
        creature->GetMotionMaster()->MovePoint(0,8552.469727f,1124.128784f,556.787598f); // TODO (Trouver les coordonnées exactes)
        creature->setFaction(35); //wrong faction in db?
        }

        uint32 uiChargeTimer;
        uint32 uiShieldBreakerTimer;
        uint32 uiDefendTimer;

        void Reset()
        {
        uiChargeTimer = 7000;
        uiShieldBreakerTimer = 10000;
        }

        void MovementInform(uint32 uiType, uint32 /*uiId*/)
        {
        if (uiType != POINT_MOTION_TYPE)
            return;

        me->setFaction(14);
        }

        void DamageTaken(Unit* pDoneBy, uint32& uiDamage)
        {
            if(pDoneBy)
            {
                if (uiDamage > me->GetHealth() && (pDoneBy->GetTypeId() == TYPEID_PLAYER || pDoneBy->GetOwner()))
                {
                    DoScriptText(NPC_ARGENT_CHAMPION_TEXT_SAY_WIN, me);
                    uiDamage = 0;

                    if(pDoneBy->GetOwner())
                        (pDoneBy->GetOwner())->ToPlayer()->KilledMonsterCredit(NPC_ARGENT_CHAMPION_CREDIT,0);
                    if(pDoneBy->GetTypeId() == TYPEID_PLAYER)
                        pDoneBy->ToPlayer()->KilledMonsterCredit(NPC_ARGENT_CHAMPION_CREDIT,0);

                    me->setFaction(35);
                    me->ForcedDespawn(5000);
                    me->SetHomePosition(me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),me->GetOrientation());
                    EnterEvadeMode();
                }
            }
        }

        void KilledUnit(Unit* /*victim*/)
        {
        me->setFaction(35);
        me->ForcedDespawn(5000);
        DoScriptText(NPC_ARGENT_CHAMPION_TEXT_SAY_LOOSE, me);
        me->CombatStop(true);
        }

        void DoMeleeAttackIfReady()
        {
            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            //Make sure our attack is ready and we aren't currently casting before checking distance
            if (me->isAttackReady())
            {
                //If we are within range melee the target
                if (me->IsWithinMeleeRange(me->getVictim()))
                {
                DoCastVictim(SPELL_THRUST_CHAMPION);
                me->resetAttackTimer();
                }
            }
        }

        void EnterCombat(Unit* /*who*/)
        {
        DoScriptText(NPC_ARGENT_CHAMPION_TEXT_SAY_START, me);
        }

        void UpdateAI(const uint32 uiDiff)
        {
        if (!UpdateVictim())
            return;

        if (uiChargeTimer <= uiDiff)
        {
            DoCastVictim(SPELL_CHARGE_CHAMPION);
            uiChargeTimer = 7000;
        } else uiChargeTimer -= uiDiff;

        if (uiShieldBreakerTimer <= uiDiff)
        {
            DoCastVictim(SPELL_SHIELD_BREAKER_CHAMPION);
            uiShieldBreakerTimer = 10000;
        } else uiShieldBreakerTimer -= uiDiff;

        if (uiDefendTimer <= uiDiff)
        {
            me->CastSpell(me, SPELL_DEFEND_CHAMPION, true);
            uiDefendTimer = 10000;
        } else uiDefendTimer -= uiDiff;

        DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_championAI (creature);
    }
};

/*#####################
# go_not_a_bug (193939)
######################*/

class go_not_a_bug : public GameObjectScript
{
public:
    go_not_a_bug() : GameObjectScript("go_not_a_bug") { }

    enum SummoningStoneData
    {
        QUEST_NOT_A_BUG_A = 13342,
        QUEST_NOT_A_BUG_H = 13358,
        QUEST_NOT_A_BUG_A_D = 13344,
        QUEST_NOT_A_BUG_H_D = 13365,
        NPC_DARK_MESSENGER = 32316,
        NPC_NOT_A_BUG_KC = 32314
    };

    bool OnGossipHello(Player* player, GameObject* go)
    {
        if (player->GetQuestStatus(QUEST_NOT_A_BUG_A) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_NOT_A_BUG_H) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_NOT_A_BUG_A_D) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_NOT_A_BUG_H_D) == QUEST_STATUS_INCOMPLETE)
        {
            go->SummonCreature(NPC_DARK_MESSENGER,8028.225098f,2077.155518f,499.729156f,3.947409f,TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,5000);
            player->KilledMonsterCredit(NPC_NOT_A_BUG_KC,0);
        }
        return true;
    }
};

/*#############################
# item_alumeths_remains (44480)
###############################*/

class item_alumeths_remains : public ItemScript
{
    public:

        item_alumeths_remains() : ItemScript("item_alumeths_remains") { }

        enum AlumethsRemainsData
        {
            QUEST_NO_REST_FOR_THE_WICKED_A = 13346,
            QUEST_NO_REST_FOR_THE_WICKED_H = 13367,
            QUEST_NO_REST_FOR_THE_WICKED_A_D = 13350,
            QUEST_NO_REST_FOR_THE_WICKED_H_D = 13368,
            NPC_ALUMETH = 32300
        };

        bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/)
        {
            if (player->GetQuestStatus(QUEST_NO_REST_FOR_THE_WICKED_A) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_NO_REST_FOR_THE_WICKED_H) == QUEST_STATUS_INCOMPLETE ||
                player->GetQuestStatus(QUEST_NO_REST_FOR_THE_WICKED_A_D) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_NO_REST_FOR_THE_WICKED_H_D) == QUEST_STATUS_INCOMPLETE)
                player->SummonCreature(NPC_ALUMETH,8229.606445f,2179.215820f,499.736694f,3.161045f,TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,30000);
                return true;
        }
};

/*##################################
# npc_q13355_q13320_trigger (97001)
###################################*/

class npc_q13355_q13320_trigger : public CreatureScript
{
public:
    npc_q13355_q13320_trigger() : CreatureScript("npc_q13355_q13320_trigger") { }

    enum q13355q13320TriggerData
    {
        GO_TEMP_CULTISTS_CAULDRON = 300240,
        BLUE_CAULDRON_GUID = 99719,
        BLACK_CAULDRON_GUID = 99718,
        GREEN_CAULDRON_GUID = 99720,
        BLUE_SAMPLE_KC = 32242,
        BLACK_SAMPLE_KC = 32245,
        GREEN_SAMPLE_KC = 32244,
        SPELL_COLLECT_SAMPLE = 60256
    };

    struct npc_q13355_q13320_triggerAI : public ScriptedAI
    {
        npc_q13355_q13320_triggerAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() {}

        void SpellHit(Unit* caster, const SpellInfo* spell)
        {
            if (caster->GetTypeId() != TYPEID_PLAYER)
                return;

            if (caster->GetTypeId() == TYPEID_PLAYER && spell->Id == SPELL_COLLECT_SAMPLE)
            {
                if (GameObject* go = me->FindNearestGameObject(GO_TEMP_CULTISTS_CAULDRON,10.0f))
                {
                    switch(go->GetGUIDLow())
                    {
                        case BLUE_CAULDRON_GUID: caster->ToPlayer()->KilledMonsterCredit(BLUE_SAMPLE_KC,0); break;
                        case BLACK_CAULDRON_GUID: caster->ToPlayer()->KilledMonsterCredit(BLACK_SAMPLE_KC,0); break;
                        case GREEN_CAULDRON_GUID: caster->ToPlayer()->KilledMonsterCredit(GREEN_SAMPLE_KC,0); break;
                    }
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_q13355_q13320_triggerAI(creature);
    }
};

/*##########################
# item_writhing_mass (44304)
###########################*/

class item_writhing_mass : public ItemScript
{
    public:

        item_writhing_mass() : ItemScript("item_writhing_mass") { }

        enum WrithingMassData
        {
            QUEST_RETEST_NOW_A = 13321,
            QUEST_RETEST_NOW_H = 13356,
            QUEST_RETEST_NOW_A_D = 13322,
            QUEST_RETEST_NOW_H_D = 13357,
            NPC_RETEST_NOW_KC = 32266
        };

        bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/)
        {
            if (player->GetQuestStatus(QUEST_RETEST_NOW_A) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_RETEST_NOW_H) == QUEST_STATUS_INCOMPLETE ||
                player->GetQuestStatus(QUEST_RETEST_NOW_A_D) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_RETEST_NOW_H_D) == QUEST_STATUS_INCOMPLETE)
                player->KilledMonsterCredit(NPC_RETEST_NOW_KC,0);
                return true;
        }
};

/*###########################
# npc_father_kamaros (31279)
###########################*/

enum NotDeadYet
{
    QUEST_NOT_DEAD_YET_A = 13221,
    QUEST_NOT_DEAD_YET_H = 13229,
    NPC_NOT_DEAD_YET_TRIG = 97002,
    SPELL_PW_FORTITUDE = 23947,
    SPELL_PW_SHIELD = 20697
};

const Position KamarosWp[54] =
{
    {6718.48f, 3439.88f, 682.24f, 0.00f},
    {6723.54f, 3433.79f, 682.20f, 0.00f},
    {6734.04f, 3436.02f, 682.03f, 0.00f},
    {6737.66f, 3439.00f, 680.97f, 0.00f},
    {6742.07f, 3442.76f, 679.93f, 0.00f},
    {6745.65f, 3446.09f, 678.85f, 0.00f},
    {6750.47f, 3450.57f, 677.51f, 0.00f},
    {6755.94f, 3455.28f, 675.78f, 0.00f},
    {6759.58f, 3458.61f, 674.71f, 0.00f},
    {6765.04f, 3463.30f, 673.37f, 0.00f},
    {6769.22f, 3467.40f, 673.00f, 0.00f},
    {6771.95f, 3471.55f, 673.01f, 0.00f},
    {6777.21f, 3477.04f, 672.99f, 0.00f},
    {6782.91f, 3482.89f, 674.34f, 0.00f},
    {6779.54f, 3479.36f, 673.32f, 0.00f},
    {6773.88f, 3473.81f, 673.03f, 0.00f},
    {6786.32f, 3484.85f, 675.62f, 0.00f},
    {6792.51f, 3484.66f, 677.20f, 0.00f},
    {6797.39f, 3484.49f, 678.76f, 0.00f},
    {6800.64f, 3484.44f, 680.03f, 0.00f},
    {6805.98f, 3484.26f, 682.17f, 0.00f},
    {6810.80f, 3484.14f, 683.97f, 0.00f},
    {6816.15f, 3483.58f, 686.18f, 0.00f},
    {6822.91f, 3483.01f, 688.17f, 0.00f},
    {6829.09f, 3481.91f, 689.49f, 0.00f},
    {6836.49f, 3480.96f, 690.69f, 0.00f},
    {6844.57f, 3480.25f, 691.89f, 0.00f},
    {6853.38f, 3479.60f, 692.98f, 0.00f},
    {6859.95f, 3479.59f, 693.60f, 0.00f},
    {6867.60f, 3479.74f, 694.21f, 0.00f},
    {6875.25f, 3479.95f, 694.86f, 0.00f},
    {6882.69f, 3480.14f, 695.82f, 0.00f},
    {6889.85f, 3479.97f, 697.36f, 0.00f},
    {6896.19f, 3479.88f, 698.54f, 0.00f},
    {6902.49f, 3479.66f, 699.74f, 0.00f},
    {6908.08f, 3479.89f, 700.81f, 0.00f},
    {6913.89f, 3480.32f, 701.86f, 0.00f},
    {6920.57f, 3482.18f, 703.10f, 0.00f},
    {6925.61f, 3481.11f, 704.38f, 0.00f},
    {6930.92f, 3480.19f, 705.91f, 0.00f},
    {6936.04f, 3479.73f, 707.06f, 0.00f},
    {6942.06f, 3479.21f, 708.06f, 0.00f},
    {6947.22f, 3477.91f, 709.01f, 0.00f},
    {6953.44f, 3477.53f, 709.63f, 0.00f},
    {6959.23f, 3477.21f, 710.30f, 0.00f},
    {6967.35f, 3474.84f, 711.05f, 0.00f},
    {6980.54f, 3470.97f, 710.86f, 0.00f},
    {6985.85f, 3469.15f, 708.75f, 0.00f},
    {6991.36f, 3467.22f, 705.94f, 0.00f},
    {6997.30f, 3465.15f, 702.91f, 0.00f},
    {7004.14f, 3462.46f, 699.36f, 0.00f},
    {7009.42f, 3460.61f, 696.67f, 0.00f},
    {7018.43f, 3455.71f, 696.67f, 0.00f},
    {7029.21f, 3447.94f, 696.17f, 0.00f}
};

class npc_father_kamaros : public CreatureScript
{
public:
    npc_father_kamaros() : CreatureScript("npc_father_kamaros") { }

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_NOT_DEAD_YET_A || quest->GetQuestId() == QUEST_NOT_DEAD_YET_H)
        {
            creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            creature->AI()->SetGUID(player->GetGUID());
            creature->CastSpell(player,SPELL_PW_FORTITUDE,true);
            player->CastSpell(player,SPELL_PW_SHIELD,true);
        }
        return true;
    }

    struct npc_father_kamarosAI : public ScriptedAI
    {
        npc_father_kamarosAI(Creature* creature) : ScriptedAI(creature) { }

        uint8 count;
        bool wp_reached;
        bool movementStarted;
        bool finished;
        uint64 uiPlayer;
        Player* player;

        void SetGUID(const uint64 &uiGuid, int32 /*iId*/)
        {
            movementStarted = true;
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
            me->GetMotionMaster()->MovePoint(0, KamarosWp[0]);
            uiPlayer = uiGuid;
        }

        void Reset()
        {
            count = 0;
            wp_reached = false;
            movementStarted = false;
            finished = false;
            uiPlayer = 0;
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE || id != count)
                return;

            if (movementStarted && id < 54)
            {
                ++count;
                wp_reached = true;
            }
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            if (movementStarted)
            {
                player = me->GetPlayer(*me, uiPlayer);

                if (!player || !player->isAlive() || me->GetDistance(player) > 30.0f)
                    me->DisappearAndDie();

                if (player->isInCombat() && player->GetUInt64Value(UNIT_FIELD_TARGET))
                    me->Attack(me->GetUnit(*me, player->GetUInt64Value(UNIT_FIELD_TARGET)), true);
            }

            if (wp_reached && !finished)
            {
                wp_reached = false;
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
                me->GetMotionMaster()->MovePoint(count, KamarosWp[count]);
            }
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (who->GetEntry() == NPC_NOT_DEAD_YET_TRIG && me->IsWithinDistInMap(who,10.0f,true))
            {
                if (Player* player = me->GetPlayer(*me, uiPlayer))
                {
                    switch (player->GetTeam())
                    {
                        case ALLIANCE: player->GroupEventHappens(QUEST_NOT_DEAD_YET_A, me); break;
                        case HORDE: player->GroupEventHappens(QUEST_NOT_DEAD_YET_H, me); break;
                    }
                    movementStarted = false;
                    finished = true;
                    me->DespawnOrUnsummon(10000);
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_father_kamarosAI(creature);
    }
};

void AddSC_icecrown()
{
    new npc_arete;
    new npc_dame_evniki_kapsalis;
    new npc_squire_david;
    new npc_argent_valiant;
    new npc_alorah_and_grimmin;
    new npc_guardian_pavilion;
    new npc_vereth_the_cunning;
    new npc_vendor_argent_tournament;
    new quest_givers_argent_tournament;
    new npc_training_dummy_argent;
    new npc_quest_givers_for_crusaders;
    new npc_justicar_mariel_trueheart;
    new npc_crusader_rhydalla;
    new npc_eadric_the_pure;
    new npc_crok_scourgebane_tournament;
    new npc_valis_windchaser;
    new npc_rugan_steelbelly;
    new npc_jeran_lockwood;
    new npc_squire_danny;
    new npc_argent_champion;
    new go_not_a_bug;
    new item_alumeths_remains;
    new npc_q13355_q13320_trigger;
    new item_writhing_mass;
    new npc_father_kamaros;
}
