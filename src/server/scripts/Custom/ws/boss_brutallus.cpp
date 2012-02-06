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

#define NPC_LINDA               80037
#define BOSS_BRUTALLUS2         5000014
#define NPC_BRUTALLUS2_TARGET   26712
#define BOSS_ASIRIUS            5000005
#define NPC_SOLDADO             5000015
#define NPC_CONTROL2            3679499
#define LISA                    5000022

enum Data
{
	TYPE_EVENT,
	TYPE_EVENT_NPC,
	TYPE_EVENT_TIMER,
    DATA_BRUTALLUS_EVENT2,
	DATA_SICARIUS_EVENT,
	DATA_ASIRIUS_EVENT,
};
enum Data64
{
    /*** Creatures ***/
	DATA_BRUTALLUS2,
    DATA_LINDA,
};

struct Locations
{
    float x, y, z;
};

static Locations SpawnLoc[]=
{
    {-10233.800f, 1382.4111f, -6.748f},
    {-10263.3955f, 1405.933f, -6.97495f},
};

static Locations SpawnNpc[]=
{
    {-10287.0615f, 1346.0432f, -6.9520f},
    {-10312.3300f, 1371.8041f, -6.8502f},
	{-10297.1640f, 1413.3936f, -6.9748f},
    {-10252.3408f, 1443.5186f, -4.8187f},
    {-10226.5673f, 1429.7249f, -5.0210f},
    {-10190.8574f, 1403.0865f, -4.1367f},
};

enum BossSpells
{
    SPELL_ENERVATING_BRAND           = 74502, // friendlys in 12yards = 74505
    SPELL_REPELLING_WAVE             = 74509, // once if call clone
    SPELL_SABER_LASH                 = 40504, // every 10-15 secs
    SPELL_SUMMON_CLONE               = 74398, // summons npc 39899 (Clone)
    SPELL_CHANNEL_SPELL              = 76221, // Channeling dummy spell
	SPELL_CHANNEL_BOSS               = 30944, // Channeling dummy spell
	SPELL_CHANNEL_END                = 30944, // Channeling dummy spell
	SPELL_SUMMON                     = 74398, //
	SPELL_VENENO                     = 59419,
	SPELL_PISOTON                    = 67661,
	SPELL_BOOM_VISUAL                = 72726,
	SPELL_LLAMAS                     = 62680,
	SPELL_ARPON                      = 50335,//54933,
	SPELL_ATRAER                     = 49560,
	SPELL_BARRIDO_DE_COLA            = 59283,
	SPELL_LLAMAR                     = 355,
};

/*######
## boss_brutallus2
######*/

class boss_brutallus2 : public CreatureScript
{
public:
    boss_brutallus2() : CreatureScript("boss_brutallus2") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_brutallus2AI(pCreature);
    }

    struct boss_brutallus2AI : public ScriptedAI
    {
        boss_brutallus2AI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            Reset();
        }

        InstanceScript* pInstance;
        Creature* pDummyTarget;
        Creature* pClone;
        bool inCombat;
        bool intro;
        uint8 uiStage;

        uint32 m_uiChannelTimer;
        uint32 m_uiEnevatingTimer;
        uint32 m_uiSaberLashTimer;
		uint32 m_uiWaveTimer;
		uint32 m_uiSummonTimer;
		uint32 m_uiVenenoTimer;
		uint32 m_uiPisotonTimer;
		uint32 m_uiLlamasTimer;
		uint32 m_uiArponTimer;
		uint32 m_uiAtraerTimer;
		uint32 m_uiColaTimer;
		uint32 m_uiLlamarTimer;

        void Reset()
        {
            if(!pInstance)
                return;

            if (me->isAlive()) pInstance->SetData(DATA_BRUTALLUS_EVENT2, NOT_STARTED);
            me->SetRespawnDelay(7*DAY);
			DoScriptText(-1580017,me);

            uiStage = 0;
            pClone = NULL;
            inCombat = false;
            intro = false;

            m_uiChannelTimer = 1*IN_MILLISECONDS;
            m_uiEnevatingTimer = urand(20*IN_MILLISECONDS,35*IN_MILLISECONDS);
            m_uiSaberLashTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
			m_uiSaberLashTimer = 90*IN_MILLISECONDS;
			m_uiWaveTimer = 40*IN_MILLISECONDS;
			m_uiSummonTimer = 100*IN_MILLISECONDS;
			m_uiVenenoTimer = 30*IN_MILLISECONDS;
			m_uiPisotonTimer = 200*IN_MILLISECONDS;
			m_uiLlamasTimer = 60*IN_MILLISECONDS;
			m_uiArponTimer = 43*IN_MILLISECONDS;
			m_uiAtraerTimer = 44*IN_MILLISECONDS;
			m_uiColaTimer = 10*IN_MILLISECONDS;
			m_uiLlamarTimer = 1*IN_MILLISECONDS;

            if (pDummyTarget = me->GetMap()->GetCreature( pInstance->GetData64(NPC_BRUTALLUS2_TARGET)))
            {
                if (!pDummyTarget->isAlive()) pDummyTarget->Respawn();

                pDummyTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                pDummyTarget->GetMotionMaster()->MoveIdle();
            }
            else if (pDummyTarget = me->SummonCreature(NPC_BRUTALLUS2_TARGET, SpawnLoc[0].x, SpawnLoc[0].y, SpawnLoc[0].z, 0.0f, TEMPSUMMON_MANUAL_DESPAWN, 1000))
            {
                pDummyTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                pDummyTarget->GetMotionMaster()->MoveIdle();
				pDummyTarget->SetDisplayId(16925);
            }

            /*if(Creature* pTarget = me->GetMap()->GetCreature( pInstance->GetData64(NPC_LINDA)))
                me->SetUInt64Value(UNIT_FIELD_TARGET, pTarget->GetGUID());*/
        }

        void JustReachedHome()
        {
            if (!pInstance) return;


            pInstance->SetData(DATA_BRUTALLUS_EVENT2, FAIL);
			DoScriptText(-1580020,me);

			Creature* invo = me->FindNearestCreature(NPC_CONTROL2, 7.0f, true); // desaparece npc!
			if(invo && invo->GetGUID() != me->GetGUID())
                {
                    invo->RemoveFromWorld();
					}

        }

        void MoveInLineOfSight(Unit* pWho) 
        {
            if(!pInstance || intro ||
                pWho->GetTypeId() != TYPEID_PLAYER ||
                !pWho->IsWithinDistInMap(me, 60.0f)) return;

            pInstance->SetData(TYPE_EVENT, 10);
            DoScriptText(-1580017,me);
            intro = true;
        }

        void JustDied(Unit* pKiller)
        {
            if (!pInstance) return;

          //  if (pDummyTarget && pDummyTarget->isSummon()) 
          //      pDummyTarget->ForcedDespawn();

            DoScriptText(-1580030,me);
            pInstance->SetData(DATA_BRUTALLUS_EVENT2, DONE);
			
			Creature* invo = me->FindNearestCreature(NPC_CONTROL2, 7.0f, true); // desaparece npc!
			if(invo && invo->GetGUID() != me->GetGUID())
                {
                    invo->RemoveFromWorld();
					}

        }
        void KilledUnit(Unit* pVictim)
        {
        switch (urand(0,1)) {
            case 0:
                   DoScriptText(-1580025,me,pVictim);
                   break;
            case 1:
                   DoScriptText(-1580024,me,pVictim);
                   break;
            }
        }

        void JustSummoned(Creature* summoned)
        {
            if(!pInstance || !summoned) return;

            if ( summoned->GetEntry() != NPC_BRUTALLUS2_TARGET )
            {
                 if (!pClone) pClone = summoned;
                 else if (!pClone->isAlive()) pClone = summoned;
				 DoScriptText(-1580026,me);
                 pClone->SetInCombatWithZone();
            }
        }

        void EnterCombat(Unit* pWho)
        {
            if (!pInstance) return;
            if (pWho->GetTypeId() != TYPEID_PLAYER) return;

            if (pDummyTarget) pDummyTarget->ForcedDespawn();

            inCombat = true;
			DoCast(SPELL_LLAMAR);
			me->Attack(me, LISA);
			me->FindNearestCreature(LISA, 7.0f, true);
			DoCast(SPELL_LLAMAR);
			m_uiLlamarTimer = 1*IN_MILLISECONDS;
            me->InterruptNonMeleeSpells(true);
            SetCombatMovement(true);
            pInstance->SetData(DATA_BRUTALLUS_EVENT2, IN_PROGRESS);
            DoScriptText(-1580022,me);
          
        }

        void UpdateAI(const uint32 diff)
        {
            if (!pInstance) return;

            if (!inCombat && !me->IsNonMeleeSpellCasted(false))
            {
                if (m_uiChannelTimer <= diff)
                {
                    DoCast(pDummyTarget, SPELL_CHANNEL_SPELL);
                    m_uiChannelTimer = 1*IN_MILLISECONDS;
                } else m_uiChannelTimer -= diff;
            }

            if (!UpdateVictim())
                return;
			
			if (m_uiLlamarTimer <= diff)
            {
			  me->Attack(me, LISA);
			  me->FindNearestCreature(LISA, 7.0f, true);
			  DoCast(SPELL_LLAMAR);
			  m_uiLlamarTimer = 1*IN_MILLISECONDS;
            } else m_uiLlamarTimer -= diff;

            if (m_uiWaveTimer <= diff)
            {
				me->AttackStop();
				me->IsNonMeleeSpellCasted(false);
                DoCast(me, SPELL_REPELLING_WAVE, true);
                m_uiWaveTimer = 40*IN_MILLISECONDS;
            } else m_uiWaveTimer -= diff;
            
			if (m_uiColaTimer <= diff)
            {
                DoCast(SPELL_BARRIDO_DE_COLA);
                m_uiColaTimer = 10*IN_MILLISECONDS;
            } else m_uiColaTimer -= diff;

            if (m_uiVenenoTimer <= diff)
            {
                DoCast(SPELL_VENENO);
                m_uiVenenoTimer = 30*IN_MILLISECONDS;
            } else m_uiVenenoTimer -= diff;

            if (m_uiPisotonTimer <= diff)
            {
                DoCast(SPELL_PISOTON);
                m_uiPisotonTimer = 200*IN_MILLISECONDS;
            } else m_uiPisotonTimer -= diff;

            if (m_uiEnevatingTimer <= diff)
            {
                DoCast(SPELL_ENERVATING_BRAND);
                m_uiEnevatingTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiEnevatingTimer -= diff;

            if (m_uiSaberLashTimer <= diff)
            {
                DoCast(SPELL_SABER_LASH);
                m_uiSaberLashTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
            } else m_uiSaberLashTimer -= diff;
            
			if (m_uiLlamasTimer <= diff)
            {
				me->AttackStop();
				me->IsNonMeleeSpellCasted(false);
                DoCast(me, SPELL_LLAMAS, true);
                m_uiLlamasTimer = 60*IN_MILLISECONDS;
            } else m_uiLlamasTimer -= diff;

            if (m_uiSaberLashTimer <= diff)
            {
                DoCast(SPELL_SABER_LASH);
                m_uiSaberLashTimer = urand(20*IN_MILLISECONDS,35*IN_MILLISECONDS);
            } else m_uiSaberLashTimer -= diff;
		
            if (m_uiArponTimer <= diff)
            {
				me->AttackStop();
				me->InterruptNonMeleeSpells(false);
				if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(pTarget,SPELL_ARPON);
                m_uiArponTimer = 43*IN_MILLISECONDS;
			} else m_uiArponTimer -= diff;
            
			/*if (m_uiAtraerTimer <= diff)
            {
				DoCast(SPELL_ATRAER);
                m_uiAtraerTimer = 43*IN_MILLISECONDS;
            } else m_uiAtraerTimer -= diff;*/

			if (m_uiSummonTimer <= diff)
			{
				DoCast(SPELL_SUMMON);
			    me->MonsterTextEmote("Brutallus esta invocando y desde las llamas a su ejercito Trae!", 0, true);
				me->SummonCreature(NPC_CONTROL2, -10231.1865f, 1384.077f, -10.0422f);
				DoCast(SPELL_BOOM_VISUAL);
				m_uiSummonTimer = 100*IN_MILLISECONDS;
			} else m_uiSummonTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

/*######
## mob_brutallus2_clone
######*/

class mob_brutallus2_clone : public CreatureScript
{
public:
    mob_brutallus2_clone() : CreatureScript("mob_brutallus2_clone") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_brutallus2_cloneAI(pCreature);
    }

    struct mob_brutallus2_cloneAI : public ScriptedAI
    {
        mob_brutallus2_cloneAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            Reset();
        }

        InstanceScript* pInstance;

        uint32 m_uiLluviaTempestTimer;
        uint32 m_uiEnevatingTimer;
        uint32 m_uiSaberLashTimer;

        void Reset()
        {
            if(!pInstance) return;

            m_uiLluviaTempestTimer = 22*IN_MILLISECONDS;
            m_uiEnevatingTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            m_uiSaberLashTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);

            //me->SetRespawnDelay(7*DAY);
        }

        void KilledUnit(Unit* pVictim)
        {
        switch (urand(0,1)) {
            case 0:
                   DoScriptText(-1580023,me,pVictim);
                   break;
            case 1:
                   DoScriptText(-1580024,me,pVictim);
                   break;
            }
        }

        void JustDied(Unit* pKiller)
        {
            if (!pInstance) return;
        }

        void EnterCombat(Unit* pWho)
        {
            if (!pInstance) return;


            me->SetInCombatWithZone();
        }

        void UpdateAI(const uint32 diff)
        {

            if (!pInstance) return;

            //if (pInstance->GetData(DATA_BRUTALLUS_EVENT2) != DONE)
                //me->ForcedDespawn();

            if (!UpdateVictim())
                return;

            if (m_uiEnevatingTimer <= diff)
            {
                DoCast(SPELL_ENERVATING_BRAND);
                m_uiEnevatingTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiEnevatingTimer -= diff;

            if (m_uiSaberLashTimer <= diff)
            {
                DoCast(SPELL_SABER_LASH);
                m_uiSaberLashTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
            } else m_uiSaberLashTimer -= diff;


            DoMeleeAttackIfReady();
        }
    };
};

class npc_cotrol2 : public CreatureScript
{
public:
    npc_cotrol2() : CreatureScript("npc_cotrol2") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_cotrol2AI (pCreature);
    }

    struct npc_cotrol2AI : public Scripted_NoMovementAI
    {
        npc_cotrol2AI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->SetDisplayId(16925);
        }
        
		InstanceScript* pInstance;

        uint32 m_uiSummonTimer;

        void Reset()
        {
            if(!pInstance)
                return;
			
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
			m_uiSummonTimer = 90*IN_MILLISECONDS;
			me->SummonCreature(NPC_SOLDADO, SpawnNpc[1].x, SpawnNpc[1].y, SpawnNpc[1].z ,6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
			me->SummonCreature(NPC_SOLDADO, SpawnNpc[2].x, SpawnNpc[2].y, SpawnNpc[2].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
			me->SummonCreature(NPC_SOLDADO, SpawnNpc[3].x, SpawnNpc[3].y, SpawnNpc[3].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
			me->SummonCreature(NPC_SOLDADO, SpawnNpc[4].x, SpawnNpc[4].y, SpawnNpc[4].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);   
            me->SummonCreature(NPC_SOLDADO, SpawnNpc[5].x, SpawnNpc[5].y, SpawnNpc[5].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
			me->SummonCreature(NPC_SOLDADO, SpawnNpc[6].x, SpawnNpc[6].y, SpawnNpc[6].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
        }
        void JustSummoned(Creature* summoned)
        {
            if(!pInstance || !summoned) return;

            summoned->SetInCombatWithZone();
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
            {
                summoned->AddThreat(pTarget, 100.0f);
                summoned->GetMotionMaster()->MoveChase(pTarget);
            }
        }
        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;
			/*if (m_uiSummonTimer <= diff)
			{
					 me->MonsterTextEmote("Brutallus esta invocando y desde las llamas a su ejercito Trae!", 0, true);
					 me->SummonCreature(NPC_SOLDADO, SpawnNpc[1].x, SpawnNpc[1].y, SpawnNpc[1].z ,6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
					 me->SummonCreature(NPC_SOLDADO, SpawnNpc[2].x, SpawnNpc[2].y, SpawnNpc[2].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
					 me->SummonCreature(NPC_SOLDADO, SpawnNpc[3].x, SpawnNpc[3].y, SpawnNpc[3].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
					 me->SummonCreature(NPC_SOLDADO, SpawnNpc[4].x, SpawnNpc[4].y, SpawnNpc[4].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);   
                     me->SummonCreature(NPC_SOLDADO, SpawnNpc[5].x, SpawnNpc[5].y, SpawnNpc[5].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
					 me->SummonCreature(NPC_SOLDADO, SpawnNpc[6].x, SpawnNpc[6].y, SpawnNpc[6].z, 6.23f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000); 

                 if (pInstance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_NORMAL || pInstance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_HEROIC)
                    DoCast(SPELL_SUMMON);
				    me->SetInCombatWithZone();

					 m_uiSummonTimer = 90*IN_MILLISECONDS;
					 } else m_uiSummonTimer -= diff;*/
        }
    };

};

void AddSC_boss_brutallus2()
{
    new boss_brutallus2();
    new mob_brutallus2_clone();
	new npc_cotrol2();
}