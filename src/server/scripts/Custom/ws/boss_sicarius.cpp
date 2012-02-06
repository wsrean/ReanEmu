/*#########################################################
###########################################################
##       WS script 2011 -- BOSS SICARIUS & WoW Rean      ##
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

enum Data
{
		DATA_SICARIUS_EVENT,
};
#define NPC_CRIAS        3470004 //ws crias
#define BOSS_SICARIUS       3470000 //ws boss 

enum BossSpells
{
    SPELL_LLAMAR_CRIAS                = 74398, // Sicarius
    SPELL_RELAMPAGOS_VILES            = 67031, // Sicarius
    SPELL_RUGIDO_INTIMIDADOR          = 74384, // Sicarius
    SPELL_ACIDO_CRIAS                 = 66901, // Crias
    SPELL_NOVA_EXPLOSIVA              = 74392, // Crias
	SPELL_SUMM                        = 41236,
	SPELL_MARTILLO                    = 62042,

};

enum Equipment
{
    EQUIP_MAIN           = 50684,
    EQUIP_OFFHAND        = 51812,
    EQUIP_RANGED         = EQUIP_NO_CHANGE,
    EQUIP_DONE           = EQUIP_NO_CHANGE,
};

struct Locations
{
    float x, y, z, o;
};

static Locations SpawnLoc[]=
{
    {-10159.2031f, 1340.9663f, -5.3662f, 4.695f},    // Sicarius
    {-10192.2685f, 1285.8144f, -5.8589f, 0.967f},    // 1 - Mob spawn 1
    {-10110.9550f, 1328.6791f, -5.3195f, 3.512f},    // 2 - Mob spawn 2
};


class boss_sicarius : public CreatureScript
{
public:
    boss_sicarius() : CreatureScript("boss_sicarius") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_sicariusAI(pCreature);
    }

    struct boss_sicariusAI : public ScriptedAI
    {
        boss_sicariusAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            Reset();
        }

        InstanceScript* pInstance;

        uint32 m_uiSummonTimer;
        uint32 m_uiRelampagosVilesTimer;
        uint32 m_uiRugidoTimer;
		uint32 m_uiMartilloTimer;

        void Reset()
        {
            if(!pInstance)
                return;

            m_uiSummonTimer = 70*IN_MILLISECONDS;
			m_uiMartilloTimer = 90*IN_MILLISECONDS;
            m_uiRelampagosVilesTimer = urand(10*IN_MILLISECONDS,20*IN_MILLISECONDS);
            m_uiRugidoTimer = urand(15*IN_MILLISECONDS,25*IN_MILLISECONDS);
			me->SetRespawnDelay(7*DAY);

            if (me->isAlive())
            {
                pInstance->SetData(DATA_SICARIUS_EVENT, NOT_STARTED);
            }
        }

        void KilledUnit(Unit* pVictim)
        {
        switch (urand(0,1)) {
            case 0:
                   DoScriptText(-1666201,me,pVictim);
                   break;
            case 1:
                   DoScriptText(-1666202,me,pVictim);
                   break;
            }
        }

        void JustReachedHome()
        {
            if (!pInstance) return;
            pInstance->SetData(DATA_SICARIUS_EVENT, FAIL);
        }

        void JustSummoned(Creature* summoned)
        {
            if(!pInstance || !summoned) return;

            summoned->SetInCombatWithZone();
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
            {
                summoned->AddThreat(pTarget, 500.0f);
                summoned->GetMotionMaster()->MoveChase(pTarget);
            }
        }

        void EnterCombat(Unit *who) 
        {
            if(!pInstance) return;

            SetEquipmentSlots(false, EQUIP_MAIN, EQUIP_OFFHAND, EQUIP_RANGED);
            pInstance->SetData(DATA_SICARIUS_EVENT, IN_PROGRESS);
        }

        void JustDied(Unit *killer)
        {
            if(!pInstance) return;

            pInstance->SetData(DATA_SICARIUS_EVENT, DONE);
			if (GameObject* pGOTemp = me->FindNearestGameObject(203006, 300.0f))
                   pGOTemp->Delete();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (m_uiSummonTimer <= diff)
            {
                me->SummonCreature(NPC_CRIAS, SpawnLoc[1].x, SpawnLoc[1].y, SpawnLoc[1].z, SpawnLoc[1].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 120000);
                me->SummonCreature(NPC_CRIAS, SpawnLoc[2].x, SpawnLoc[2].y, SpawnLoc[2].z, SpawnLoc[2].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 120000);

                if (pInstance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_NORMAL || pInstance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_HEROIC)
                    DoCast(SPELL_LLAMAR_CRIAS);
				    DoCast(SPELL_SUMM);
				me->MonsterTextEmote("Sicarius invoca a sus cr�as para alimentarse!", 0, true);

                DoScriptText(-1666204,me);
                m_uiSummonTimer = 70*IN_MILLISECONDS;
            } else m_uiSummonTimer -= diff;

            if (m_uiRelampagosVilesTimer <= diff)
            {
				if(GameObject * pDoor = me->FindNearestGameObject(203034, 100.0f))                
				pDoor->SetGoState(GO_STATE_ACTIVE);
                DoCast(SPELL_RELAMPAGOS_VILES);
                m_uiRelampagosVilesTimer = urand(10*IN_MILLISECONDS,20*IN_MILLISECONDS);
            } else m_uiRelampagosVilesTimer -= diff;

            if (m_uiRugidoTimer <= diff)
            {
				if(GameObject * pDoor = me->FindNearestGameObject(203034, 100.0f))                
				pDoor->SetGoState(GO_STATE_ACTIVE);
                DoCast(SPELL_RUGIDO_INTIMIDADOR );
                m_uiRugidoTimer = urand(15*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiRugidoTimer -= diff;

            if (m_uiMartilloTimer <= diff)
            {
				if(GameObject * pDoor = me->FindNearestGameObject(203034, 100.0f))                
				pDoor->SetGoState(GO_STATE_ACTIVE);
				me->AttackStop();
                DoCast(SPELL_MARTILLO);
				me->MonsterTextEmote("Son deviles y por eso moriran!", 0, true);
                m_uiMartilloTimer = 90*IN_MILLISECONDS;
            } else m_uiMartilloTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

class mob_crias : public CreatureScript
{
public:
    mob_crias() : CreatureScript("mob_crias") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_criasAI(pCreature);
    }

    struct mob_criasAI : public ScriptedAI
    {
        mob_criasAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            Reset();
        }

        InstanceScript* pInstance;

        uint32 m_uiAcidosCriasTimer;
        uint32 m_uiNovaExplosivaTimer;

        void Reset()
        {
            if(!pInstance) return;

            m_uiAcidosCriasTimer = urand(8*IN_MILLISECONDS,25*IN_MILLISECONDS);
            m_uiNovaExplosivaTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            me->SetRespawnDelay(7*DAY);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (m_uiAcidosCriasTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(pTarget,SPELL_ACIDO_CRIAS);
				me->MonsterTextEmote("El acido corroe vuestra carne!", 0, true);
                m_uiAcidosCriasTimer = urand(8*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiAcidosCriasTimer -= diff;

            if (m_uiNovaExplosivaTimer <= diff)
            {
                DoCast(SPELL_NOVA_EXPLOSIVA );
                m_uiNovaExplosivaTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiNovaExplosivaTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_sicarius()
{
    new boss_sicarius();
    new mob_crias();
}

/*##############################################################################################################################
#Soporte sql fix WS-CORE 2011 evento Sicarius (( ejecutar en orden DESCENDENTE ))                                              #
################################################################################################################################
#--CREATURE_TEMPLANTE--////////////////////////////////////////////////////////////////////////////////////////////////////////#
################################################################################################################################
INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470000, 3470001, 3470002, 3470003, 0, 38121, 30343, 0, 0, 0, 'sicarius', 'WS-CORE', 'WS-CORE', 0, 83, 83, 2, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 49, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 300, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 801849343, 1, 'boss_sicarius', 11723);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470001, 0, 0, 0, 0, 38121, 30343, 0, 0, 0, 'sicarius (1)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 72, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 3273.15, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470002, 0, 0, 0, 36855, 0, 30343, 0, 0, 0, 'sicarius (2)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 88, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 1500.2, 350, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470003, 0, 0, 0, 36855, 0, 30343, 0, 0, 0, 'sicarius (3)', 'WS-CORE', 'WS-CORE', 0, 83, 83, 0, 21, 21, 0, 2.1, 1.14286, 1.4, 3, 342, 512, 0, 128, 105, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 274, 410, 102, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70842, 71254, 71001, 70901, 0, 0, 0, 0, 0, 0, 1061792, 1061792, '', 0, 3, 6546.31, 1500, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470004, 3470005, 0, 0, 0, 0, 30885, 0, 0, 0, 'Crias de araña reina', 'WS-CORE', 'WS-CORE', 0, 82, 82, 0, 14, 14, 0, 0.888888, 1.14286, 1.4, 1, 315, 473, 0, 118, 83.2, 1500, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 252, 378, 94, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74393, 74395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 44.7576, 30, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, 'mob_crias', 11723);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470005, 0, 0, 0, 0, 0, 30885, 0, 0, 0, 'Crias de araña reina (1)', 'WS-CORE', 'WS-CORE', 0, 82, 82, 0, 14, 14, 0, 0.888888, 1.14286, 1.4, 1, 315, 473, 0, 118, 125.6, 1500, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 252, 378, 94, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74393, 74395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 164.111, 30, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 0);

INSERT INTO creature_template
   (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES
   (3470008, 0, 0, 0, 0, 0, 2718, 0, 0, 0, 'Ruby Dragon', 'WS-CORE', 'WS-CORE', 0, 80, 80, 0, 2010, 2010, 0, 1, 1.14286, 1.4, 0, 420, 630, 0, 158, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 2, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 378.538, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_D_ws2', 0);

################################################################################################################################
#--CREATURE--//////////////////////////////////////////////////////////////////////////////////////////////////////////////////#
################################################################################################################################

INSERT INTO creature
   (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
   (4171885, 3470000, 631, 1, 15, 0, 0, 4180.79, 2484.24, 211.033, 3.07247, 300, 0, 0, 3346800, 3263750, 0, 0, 0, 0, 0);

################################################################################################################################
#--GAMEOBJECT_TEMPLANTE--//////////////////////////////////////////////////////////////////////////////////////////////////////#
################################################################################################################################

INSERT INTO gameobject_template
   (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`)
VALUES
   (2036249, 0, 9624, 'WS-RING', 'WS-CORE', '', '', 0, 50, 1.6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

INSERT INTO gameobject_template
   (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`)
VALUES
   (5000002, 0, 9238, 'ws muro (araña)', 'WS-CORE', '', '', 114, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '11723', 1);

################################################################################################################################

*/
