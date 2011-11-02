/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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

/* Script Data Start
SDName: Dalaran
SDAuthor: WarHead, MaXiMiUS
SD%Complete: 99%
SDComment: For what is 63990+63991? Same function but don't work correct...
SDCategory: Dalaran
Script Data End */

#include "ScriptPCH.h"

/*******************************************************
 * npc_mageguard_dalaran
 *******************************************************/

enum Spells
{
    SPELL_TRESPASSER_A = 54028,
    SPELL_TRESPASSER_H = 54029
};

enum NPCs // All outdoor guards are within 35.0f of these NPCs
{
    NPC_APPLEBOUGH_A = 29547,
    NPC_SWEETBERRY_H = 29715,
};

class npc_mageguard_dalaran : public CreatureScript
{
public:
    npc_mageguard_dalaran() : CreatureScript("npc_mageguard_dalaran") { }

    struct npc_mageguard_dalaranAI : public Scripted_NoMovementAI
    {
        npc_mageguard_dalaranAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            creature->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_NORMAL, true);
            creature->ApplySpellImmune(0, IMMUNITY_DAMAGE, SPELL_SCHOOL_MASK_MAGIC, true);
        }

        void Reset(){}

        void EnterCombat(Unit* /*who*/){}

        void AttackStart(Unit* /*who*/){}

        void MoveInLineOfSight(Unit* who)
        {
            if (!who || !who->IsInWorld() || who->GetZoneId() != 4395)
                return;

            if (!me->IsWithinDist(who, 65.0f, false))
                return;

            Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
            
            // If player has Disguise aura for quest A Meeting With The Magister or An Audience With The Arcanist, do not teleport it away but let it pass
            if (!player || player->isGameMaster() || player->IsBeingTeleported() || player->HasAura(70973) || player->HasAura(70971))
                return;

            switch (me->GetEntry())
            {
                case 29254:
                    if (player->GetTeam() == HORDE)              // Horde unit found in Alliance area
                    {
                        if (GetClosestCreatureWithEntry(me, NPC_APPLEBOUGH_A, 32.0f))
                        {
                            if (me->isInBackInMap(who, 12.0f))   // In my line of sight, "outdoors", and behind me
                                DoCast(who, SPELL_TRESPASSER_A); // Teleport the Horde unit out
                        }
                        else                                      // In my line of sight, and "indoors"
                            DoCast(who, SPELL_TRESPASSER_A);     // Teleport the Horde unit out
                    }
                    break;
                case 29255:
                    if (player->GetTeam() == ALLIANCE)           // Alliance unit found in Horde area
                    {
                        if (GetClosestCreatureWithEntry(me, NPC_SWEETBERRY_H, 32.0f))
                        {
                            if (me->isInBackInMap(who, 12.0f))   // In my line of sight, "outdoors", and behind me
                                DoCast(who, SPELL_TRESPASSER_H); // Teleport the Alliance unit out
                        }
                        else                                      // In my line of sight, and "indoors"
                            DoCast(who, SPELL_TRESPASSER_H);     // Teleport the Alliance unit out
                    }
                    break;
            }
            me->SetOrientation(me->GetHomePosition().GetOrientation());
            return;
        }

        void UpdateAI(const uint32 /*diff*/){}
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_mageguard_dalaranAI(creature);
    }
};

/*######
## npc_hira_snowdawn
######*/

enum eHiraSnowdawn
{
    SPELL_COLD_WEATHER_FLYING                   = 54197
};

#define GOSSIP_TEXT_TRAIN_HIRA "I seek training to ride a steed."

class npc_hira_snowdawn : public CreatureScript
{
public:
    npc_hira_snowdawn() : CreatureScript("npc_hira_snowdawn") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (!creature->isVendor() || !creature->isTrainer())
            return false;

        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_TRAIN_HIRA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRAIN);

        if (player->getLevel() >= 80 && player->HasSpell(SPELL_COLD_WEATHER_FLYING))
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_BROWSE_GOODS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        player->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_TRAIN)
            player->GetSession()->SendTrainerList(creature->GetGUID());

        if (uiAction == GOSSIP_ACTION_TRADE)
            player->GetSession()->SendListInventory(creature->GetGUID());

        return true;
    }
};

/*###########################
# npc_dragonforged_blades_giver (Quel'Delar quest chain)
############################*/

enum DragonforgedBlades
{
    QUEST_MEETING_ARCANIST   = 24451, // Quest Horde side
    QUEST_MEETING_MAGISTER   = 20439, // Quest Alliance side
    SPELL_SUNREAVER_DISGUISE = 69672, // Casted on Alliance players
    SPELL_SILVER_DISGUISE    = 69672, // Casted on Horde players
    AURA_SUNREAVER_DIS_F     = 70973, // Aura on Alliance palyers (male)
    AURA_SUNREAVER_DIS_M     = 70974, // Aura on Alliance palyers (female)
    AURA_SILVER_DIS_F        = 70971, // Aura on Horde palyers (male)
    AURA_SILVER_DIS_M        = 70972, // Aura on Horde palyers (female)
    NPC_MAGISTER_HATHOREL    = 36670, // Horde npc
    NPC_ARCANIST_TYBALIN     = 36669, // Alliance npc
    ITEM_DRAGONFORGED_BLADES = 49698,
    SPELL_CREATE_BOOK        = 69722,

    TEXT_ID_GIVE_BOOK_ALLI   = 537554,
    TEXT_ID_GIVE_BOOK_HORDE  = 537555,

    SAY_1_COMMON             = -1380573,
    SAY_2_HORDE              = -1380574,
    SAY_2_ALLIANCE           = -1380575,
    SAY_3_HORDE              = -1380576,
    SAY_3_ALLIANCE           = -1380577,
};

#define GOSSIP_ITEM_TABARD    "Necesito volver a encantar mi tabardo."
#define GOSSIP_ITEM_REQUEST_A "Entregaré el tomo a nuestros contactos en Corona de hielo, arcanista."
#define GOSSIP_ITEM_REQUEST_H "Entregaré el tomo a nuestros contactos en Corona de hielo, magister."

class npc_dragonforged_blades_giver : public CreatureScript
{
public:
    npc_dragonforged_blades_giver() : CreatureScript("npc_dragonforged_blades_giver") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_dragonforged_blades_giverAI(creature);
    }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            uint32 menuTextId = player->GetGossipTextId(creature);

            if(creature->isQuestGiver())
                player->PrepareQuestMenu( creature->GetGUID());

            switch(creature->GetEntry())
            {
                case NPC_ARCANIST_TYBALIN:
                    switch(player->GetTeam())
                    {
                        case ALLIANCE:
                            if(player->GetQuestStatus(QUEST_MEETING_MAGISTER) == QUEST_STATUS_INCOMPLETE)
                                if(!player->HasAura(AURA_SUNREAVER_DIS_M) || !player->HasAura(AURA_SUNREAVER_DIS_F))
                                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TABARD, GOSSIP_ITEM_TABARD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                            break;
                        case HORDE:
                            if(player->GetQuestStatus(QUEST_MEETING_ARCANIST) == QUEST_STATUS_INCOMPLETE)
                            {
                                menuTextId = TEXT_ID_GIVE_BOOK_ALLI;
                                if(!player->HasItemCount(ITEM_DRAGONFORGED_BLADES, 1, true))
                                    if(player->HasAura(AURA_SILVER_DIS_M) || player->HasAura(AURA_SILVER_DIS_F))
                                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_REQUEST_A, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                            }
                            break;
                    }
                    break;
                case NPC_MAGISTER_HATHOREL:
                    switch(player->GetTeam())
                    {
                        case HORDE:
                            if(player->GetQuestStatus(QUEST_MEETING_ARCANIST) == QUEST_STATUS_INCOMPLETE)
                                if(!player->HasAura(AURA_SILVER_DIS_M) || !player->HasAura(AURA_SILVER_DIS_F))
                                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TABARD, GOSSIP_ITEM_TABARD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                            break;
                        case ALLIANCE:
                            if(player->GetQuestStatus(QUEST_MEETING_MAGISTER) == QUEST_STATUS_INCOMPLETE)
                            {
                                menuTextId = TEXT_ID_GIVE_BOOK_HORDE;
                                if(!player->HasItemCount(ITEM_DRAGONFORGED_BLADES, 1, true))
                                    if(player->HasAura(AURA_SUNREAVER_DIS_M) || player->HasAura(AURA_SUNREAVER_DIS_F))
                                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_REQUEST_A, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                            }
                            break;
                    }
                    break;
            }
            player->SEND_GOSSIP_MENU(menuTextId, creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();

            switch(action)
            {
                case GOSSIP_ACTION_INFO_DEF:
                    switch(creature->GetEntry())
                    {
                        case NPC_ARCANIST_TYBALIN: creature->CastSpell(player, SPELL_SUNREAVER_DISGUISE, true); break;
                        case NPC_MAGISTER_HATHOREL: creature->CastSpell(player, SPELL_SILVER_DISGUISE, true); break;
                    }
                    break;
                case GOSSIP_ACTION_INFO_DEF+1:
                    creature->AI()->SetGUID(player->GetGUID(), 1);
                    creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    break;
            }

            player->CLOSE_GOSSIP_MENU();
            return true;
        }

    struct npc_dragonforged_blades_giverAI : public ScriptedAI
    {
        npc_dragonforged_blades_giverAI(Creature* c) : ScriptedAI(c) {}

        EventMap events;
        uint64 playerGUID;
        bool inProgress;

        void Reset()
        {
            me->SetTarget(0);
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            inProgress = false;
            events.Reset();
            playerGUID = 0;
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            switch(events.ExecuteEvent())
            {
                case 1:
                    DoScriptText(SAY_1_COMMON, me);
                    events.ScheduleEvent(2, 5000);
                    break;
                case 2:
                    DoScriptText(me->GetEntry() == NPC_ARCANIST_TYBALIN ? SAY_2_HORDE : SAY_2_ALLIANCE, me);
                    if(Player* player = me->GetPlayer(*me, playerGUID))
                        DoCast(player, SPELL_CREATE_BOOK, true);
                    events.ScheduleEvent(3, 6000);
                    break;
                case 3:
                    DoScriptText(me->GetEntry() == NPC_ARCANIST_TYBALIN ? SAY_3_HORDE : SAY_3_ALLIANCE, me);
                    events.ScheduleEvent(4, 3000);
                    break;
                case 4:
                    Reset();
                    break;
            }
        }

        void SetGUID(const uint64 guid, int32 id)
        {
            if(inProgress)
                return;

            if(id == 1)
            {
                events.ScheduleEvent(1, 0);
                playerGUID = guid;
                me->SetTarget(playerGUID);
                inProgress = true;
            }
        }
    };

};

void AddSC_dalaran()
{
    new npc_mageguard_dalaran;
    new npc_hira_snowdawn;
    new npc_dragonforged_blades_giver();
}
