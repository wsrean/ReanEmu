/*#########################################################
###########################################################
##         WS script 2011 -- BOSS HANKU & WoW Rean       ##
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
/*-----------------------------------------------------------------------------------------------*
*       spell           ||       ID          ||       Definición          || SPELL+ID+DEFINICIÓN *
*------------------------------------------------------------------------------------------------*
*  - Todas las spell definidas para los npc.                                                     *
*------------------------------------------------------------------------------------------------*
*  - Npc para diferentes eventos soportados:                                                     *
*------------------------------------------------------------------------------------------------*
*  - Npc evento soportado: SkyWall EVENT by WS (evento 1)                                        *
*------------------------------------------------------------------------------------------------*/

#include "ScriptPCH.h"

#define EMOTE_BREATH            -1533082
#define EMOTE_ENRAGE            -1533083

#define SPELL_BARRIDO_DE_COLA   59283
#define SPELL_ALIENTO_LLAMAS    74404
#define SPELL_BOMBA             18576
#define SPELL_FROST_AURA        RAID_MODE(28531,55799)
#define SPELL_CLEAVE            19983                    
#define SPELL_TAIL_SWEEP        RAID_MODE(55697,55696)
#define SPELL_SUMMON_BLIZZARD   28560
#define SPELL_LIFE_DRAIN        RAID_MODE(28542,55665)
#define SPELL_ICEBOLT           28522
#define SPELL_FROST_BREATH      29318
#define SPELL_FROST_EXPLOSION   28524
#define SPELL_FROST_MISSILE     30101
#define SPELL_BERSERK           26662
#define SPELL_DIES              29357
#define SPELL_TEMBLOR           72262
#define SPELL_SCOURGE_RESSURRECTION 72130
#define SPELL_ALARIDO           41545     // Alarido del alma: Inflige 2625 to 3375 p. de daño de las Sombras a los enemigos frente al taumaturgo.
#define SPELL_INMUNIDAD         15636    // Avatar de la Llama: Rodea al taumaturgo con llamas durante 10 s otorgando inmunidad mágica e infligiendo 170 to 230 p. de daño de Fuego a un enemigo atacante. 
#define SPELL_METEOR_FLAME      74713
#define SPELL_METEOR_TARGET     74641
#define SPELL_METEOR_STRIKE     74637
#define SPELL_METEOR_DAMAGE     74648
#define SPELL_DESTROY_PLATFORM  59084

#define SPELL_CHILL             RAID_MODE(28547,55699)

#define MOB_BLIZZARD            16474
#define NCP_FIN                 5000017
#define BOSS_ASIRIUS            5000005
#define NPC_DRAGON_NEGRO        5000006
#define NPC_SUMMON              3679401
#define NPC_METEOR_STRIKE       5000011
#define NPC_METEOR_FLAME        5000012
#define GO_ICEBLOCK             181247
#define GO_BIRTH                203007

//TEXTOS *************************************************
#define SAY_DIALOG_1  -1999990 //"¡No hay manera honorable de matar, no hay manera gentil de destruir. No hay nada bueno aqui solo encontrareis la muerte!"
#define SAY_DIALOG_2  -1999991 //"¡Entráis en mi Reino...y encima os atrevéis a desafiarme??!!! Idiotas Os arrancare el corazón del pecho y lo devoraré!"
#define SAY_DIALOG_3  -1999992 //"¡Ya es demasiado tarde ... la corrupción y la avaricia se ha afianzado en vuestros corazones. Hoy  los mortales que me miran airosos tarde o temprano morirán, de las cenizas he de volver con más fuerza e ira, huye mientras puedas pero Huir no te servirá de nada por que pronto volveré a por vosotros!"
#define SAY_DIALOG_4  -1999993 //"¡todo arderá bajo la sombra de mis alas!"
#define SAY_DIALOG_5  -1999994 //"¡Defilers venid a mí vuestro amo os reclama, acudid al festín y devorad sus almas, sentir la fuerza de la tierra y ver como ésta se estremece!"
// by WS *************************************************

#define ACHIEVEMENT_THE_HUNDRED_CLUB    RAID_MODE(2146, 2147)
#define MAX_FROST_RESISTANCE            100

enum Phases
{
    PHASE_NULL = 0,
    PHASE_BIRTH,
    PHASE_GROUND,
    PHASE_FLIGHT,
};

enum Events
{
    EVENT_NONE,
    EVENT_BERSERK,
    EVENT_CLEAVE,
    EVENT_TAIL,
    EVENT_DRAIN,
	EVENT_BARRIDO_DE_COLA,
	EVENT_ALIENTO_LLAMAS,
    EVENT_BLIZZARD,
    EVENT_FLIGHT,
    EVENT_LIFTOFF,
    EVENT_ICEBOLT,
    EVENT_BREATH,
    EVENT_EXPLOSION,
    EVENT_LAND,
    EVENT_GROUND,
    EVENT_BIRTH,
	EVENT_BOMBA,
	EVENT_METEOR_STRIKE,
	EVENT_METEOR_FUEGO,
	EVENT_METEOR_DAMAGE,
	EVENT_METEOR_FLAME,
};

enum Data
{
  DATA_ASIRIUS_BIRTH = 1,
  DATA_ASIRIUS       = 2,
};

enum Encounter
{
    MAX_BOSS_NUMBER,
};
struct Locations
{
    float x, y, z, o;
};
static Locations SpawnLoc[]=
{
	{-10322.8f, 1282.22f, 24.186f, 2.34f },  // Altarius spawn
    {-10308.1f, 1254.88f, 37.374f, 2.06f },  // 1 - Mob spawn 1
    {-10347.8f, 1255.062f, 37.374f, 0.9f },  // 2 - Mob spawn 2
	{-10332.8f, 1321.641f, 37.374f, 5.1f },  // 3 - Mob spawn 3
	{-10291.6f, 1313.178f, 37.374f, 4.1f },  // 4 - Mob spawn 4
};
typedef std::map<uint64, uint64> IceBlockMap;

class boss_asirius : public CreatureScript
{
public:
    boss_asirius() : CreatureScript("boss_asirius") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_asiriusAI (pCreature);
    }

    struct boss_asiriusAI : public BossAI
    {
        boss_asiriusAI(Creature* c) : BossAI(c, BOSS_ASIRIUS)
            , phase(PHASE_NULL)
        {
            pMap = me->GetMap();
        }

        Phases phase;
        uint32 iceboltCount;
        IceBlockMap iceblocks;

        bool CanTheHundredClub;
        uint32 CheckFrostResistTimer;
        Map* pMap;

        void Reset()
        {
            _Reset();

            if (me->isAlive()) instance->SetData(DATA_ASIRIUS, NOT_STARTED);
            me->SetRespawnDelay(7*DAY);
			DoScriptText(SAY_DIALOG_1, me);

            if (phase == PHASE_FLIGHT)
                ClearIceBlock();

            phase = PHASE_NULL;

            CanTheHundredClub = true;
            CheckFrostResistTimer = 5000;
        }
            void MeteorStrike()
            {
                float x,y,z;
                Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0);
                if (pTarget)
                {
                    pTarget->GetPosition(x,y,z);
                    me->SummonCreature(NPC_METEOR_STRIKE, x, y, z, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 999999);
                }
            }
            void MeteorFuego()
            {
                float x,y,z;
                Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0);
                if (pTarget)
                {
                    pTarget->GetPosition(x,y,z);
					me->SummonCreature(NPC_METEOR_FLAME, x, y, z, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 999999); // NPC FUEGOS
                }
            }
        void EnterCombat(Unit * /*who*/)
        {
            _EnterCombat();

			instance->SetData(DATA_ASIRIUS , IN_PROGRESS);
			me->SummonGameObject(GO_BIRTH, -10322.8f, 1282.22f, 24.186f, 2.34f, 0, 0, 0, 0, 0);
            me->CastSpell(me, SPELL_FROST_AURA, true);
			DoScriptText(SAY_DIALOG_2, me);
            events.ScheduleEvent(EVENT_BERSERK, 15*60000);
            EnterPhaseGround();

            CheckPlayersFrostResist();
        }

        void SpellHitTarget(Unit *pTarget, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_ICEBOLT)
            {
                IceBlockMap::iterator itr = iceblocks.find(pTarget->GetGUID());
                if (itr != iceblocks.end() && !itr->second)
                {
                    if (GameObject *iceblock = me->SummonGameObject(GO_ICEBLOCK, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 0, 0, 0, 0, 0, 25000))
                        itr->second = iceblock->GetGUID();
                }
            }
        }

        void JustReachedHome()
        {
			_JustReachedHome();
			instance->SetData(DATA_ASIRIUS , FAIL);
			if (GameObject* pGOTemp = me->FindNearestGameObject(GO_BIRTH, 100.0f))
                   pGOTemp->Delete();
        }

        void JustDied(Unit* /*who*/)
        {
            _JustDied();
			instance->SetData(DATA_ASIRIUS , DONE);
            me->CastSpell(me, SPELL_DIES, true);
			me->SummonCreature(NCP_FIN, -10322.8f, 1282.22f, 24.186f, 2.34f);
			DoScriptText(SAY_DIALOG_3, me);

			if (GameObject* pGOTemp = me->FindNearestGameObject(GO_BIRTH, 100.0f))
                   pGOTemp->Delete();

            CheckPlayersFrostResist();
            if (CanTheHundredClub)
            {
                AchievementEntry const *AchievTheHundredClub = GetAchievementStore()->LookupEntry(ACHIEVEMENT_THE_HUNDRED_CLUB);
                if (AchievTheHundredClub)
                {
                    if (pMap && pMap->IsDungeon())
                    {
                        Map::PlayerList const &players = pMap->GetPlayers();
                        for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                            itr->getSource()->CompletedAchievement(AchievTheHundredClub);
                    }
                }
            }
        }

        void MovementInform(uint32, uint32 id)
        {
            if (id == 1)
                events.ScheduleEvent(EVENT_LIFTOFF, 0);
        }

        void DoAction(const int32 param)
        {
            if (param == DATA_ASIRIUS_BIRTH)
            {
                phase = PHASE_BIRTH;
                events.ScheduleEvent(EVENT_BIRTH, 23000);
            }
        }

        void CheckPlayersFrostResist()
        {
            if (CanTheHundredClub && pMap && pMap->IsDungeon())
            {
                Map::PlayerList const &players = pMap->GetPlayers();
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    if (itr->getSource()->GetResistance(SPELL_SCHOOL_FROST) > MAX_FROST_RESISTANCE)
                    {
                        CanTheHundredClub = false;
                        break;
                    }
                }
            }
        }

        void EnterPhaseGround()
        {
            phase = PHASE_GROUND;
            me->SetReactState(REACT_AGGRESSIVE);
            events.SetPhase(PHASE_GROUND);
			events.ScheduleEvent(EVENT_BARRIDO_DE_COLA, 5000, 0, PHASE_GROUND);
		    events.ScheduleEvent(EVENT_ALIENTO_LLAMAS, 20000, 0, PHASE_GROUND);
            events.ScheduleEvent(EVENT_CLEAVE, 5000+rand()%10000, 0, PHASE_GROUND);
            events.ScheduleEvent(EVENT_TAIL, 5000+rand()%10000, 0, PHASE_GROUND);
            events.ScheduleEvent(EVENT_DRAIN, 24000, 0, PHASE_GROUND);
            events.ScheduleEvent(EVENT_BLIZZARD, 5000+rand()%5000, 0, PHASE_GROUND);
            events.ScheduleEvent(EVENT_FLIGHT, 180000);
			events.ScheduleEvent(EVENT_BOMBA, 60000);
			events.ScheduleEvent(EVENT_METEOR_STRIKE, 50000);
			events.ScheduleEvent(EVENT_METEOR_FUEGO, 70000);
        }

        void ClearIceBlock()
        {
            for (IceBlockMap::const_iterator itr = iceblocks.begin(); itr != iceblocks.end(); ++itr)
            {
                if (Player* pPlayer = Unit::GetPlayer(*me, itr->first))
                    pPlayer->RemoveAura(SPELL_ICEBOLT);
                if (GameObject* pGo = GameObject::GetGameObject(*me, itr->second))
                    pGo->Delete();
            }
            iceblocks.clear();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!phase)
                return;

            events.Update(diff);

            if ((phase != PHASE_BIRTH && !UpdateVictim()) || !CheckInRoom())
                return;

            if (CanTheHundredClub)
            {
                if (CheckFrostResistTimer <= diff)
                {
                    CheckPlayersFrostResist();
                    CheckFrostResistTimer = (rand() % 5 + 5) * 1000;
                } else CheckFrostResistTimer -= diff;
            }

            if (phase == PHASE_GROUND)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_BERSERK:
                            DoScriptText(EMOTE_ENRAGE, me);
                            DoCast(me, SPELL_BERSERK);
                            return;
                        case EVENT_CLEAVE:
                            DoCast(me->getVictim(), SPELL_CLEAVE);
                            events.ScheduleEvent(EVENT_CLEAVE, 5000+rand()%10000, 0, PHASE_GROUND);
                            return;
                        case EVENT_TAIL:
                            DoCastAOE(SPELL_TAIL_SWEEP);
                            events.ScheduleEvent(EVENT_TAIL, 5000+rand()%10000, 0, PHASE_GROUND);
                            return;
                        case EVENT_DRAIN:
                            DoCastAOE(SPELL_LIFE_DRAIN);
                            events.ScheduleEvent(EVENT_DRAIN, 24000, 0, PHASE_GROUND);
                            return;
                        case EVENT_BARRIDO_DE_COLA:
                            DoCastAOE(SPELL_BARRIDO_DE_COLA);
                            events.ScheduleEvent(EVENT_BARRIDO_DE_COLA, 5000, 0, PHASE_GROUND);
                            return;
                        case EVENT_ALIENTO_LLAMAS:
                            DoCastAOE(SPELL_ALIENTO_LLAMAS);
                            events.ScheduleEvent(EVENT_ALIENTO_LLAMAS, 20000, 0, PHASE_GROUND);
                            return;
                        case EVENT_BOMBA:
                            DoCastAOE(SPELL_BOMBA);
							DoScriptText(SAY_DIALOG_4, me);
                            events.ScheduleEvent(SPELL_BOMBA, 180000, 0, PHASE_GROUND);
                            return;
                        case EVENT_BLIZZARD:
                        {
                            DoCastAOE(SPELL_SUMMON_BLIZZARD);
                            Unit *target = SelectTarget(SELECT_TARGET_RANDOM,1);
                            if (!target) target = me->getVictim();
                            if (Creature *pSummon = DoSummon(MOB_BLIZZARD, target, 0.0f, 20000, TEMPSUMMON_TIMED_DESPAWN))
                                pSummon->GetMotionMaster()->MoveRandom(40);
                            events.ScheduleEvent(EVENT_BLIZZARD, RAID_MODE(40000,14000), 0, PHASE_GROUND);
                            break;
                        }
                        case EVENT_METEOR_STRIKE:
							MeteorStrike();
							events.ScheduleEvent(EVENT_METEOR_STRIKE, 50000);
							break;
						case EVENT_METEOR_FUEGO:
							MeteorFuego();
							events.ScheduleEvent(EVENT_METEOR_FUEGO, 70000);
							break;
                        case EVENT_FLIGHT:
                            phase = PHASE_FLIGHT;
                            events.SetPhase(PHASE_FLIGHT);
							DoScriptText(SAY_DIALOG_5, me);
                            me->SetReactState(REACT_PASSIVE);
                            me->AttackStop();
                            float x, y, z, o;
                            me->GetHomePosition(x, y, z, o);
                            me->GetMotionMaster()->MovePoint(1, x, y, z);
							me->MonsterTextEmote("Asirius invoca a 4 dragones negros!", 0, true);
							me->SummonCreature(NPC_SUMMON, -10322.8f, 1282.22f, 24.186f, 2.34446f);
							me->SummonCreature(NPC_DRAGON_NEGRO, SpawnLoc[1].x, SpawnLoc[1].y, SpawnLoc[1].z, SpawnLoc[1].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
							me->SummonCreature(NPC_DRAGON_NEGRO, SpawnLoc[2].x, SpawnLoc[2].y, SpawnLoc[2].z, SpawnLoc[2].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
							me->SummonCreature(NPC_DRAGON_NEGRO, SpawnLoc[3].x, SpawnLoc[3].y, SpawnLoc[3].z, SpawnLoc[3].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
							me->SummonCreature(NPC_DRAGON_NEGRO, SpawnLoc[4].x, SpawnLoc[4].y, SpawnLoc[4].z, SpawnLoc[4].o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 10000);
                            return;
                    }
                }

                DoMeleeAttackIfReady();
            }
            else
            {
                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_LIFTOFF:
                            me->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF);
                            me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                            me->SendMovementFlagUpdate();
                            events.ScheduleEvent(EVENT_ICEBOLT, 1500);
                            iceboltCount = RAID_MODE(2,3);
                            return;
                        case EVENT_ICEBOLT:
                        {
                            std::vector<Unit*> targets;
                            std::list<HostileReference*>::const_iterator i = me->getThreatManager().getThreatList().begin();
                            for (; i != me->getThreatManager().getThreatList().end(); ++i)
                                if ((*i)->getTarget()->GetTypeId() == TYPEID_PLAYER && !(*i)->getTarget()->HasAura(SPELL_ICEBOLT))
                                    targets.push_back((*i)->getTarget());

                            if (targets.empty())
                                iceboltCount = 0;
                            else
                            {
                                std::vector<Unit*>::const_iterator itr = targets.begin();
                                advance(itr, rand()%targets.size());
                                iceblocks.insert(std::make_pair((*itr)->GetGUID(), 0));
                                DoCast(*itr, SPELL_ICEBOLT);
                                --iceboltCount;
                            }

                            if (iceboltCount)
                                events.ScheduleEvent(EVENT_ICEBOLT, 1000);
                            else
                                events.ScheduleEvent(EVENT_BREATH, 1000);
                            return;
                        }
                        case EVENT_BREATH:
                        {
                            DoScriptText(EMOTE_BREATH, me);
                            DoCastAOE(SPELL_FROST_MISSILE);
                            events.ScheduleEvent(EVENT_EXPLOSION, 8000);
                            return;
                        }
                        case EVENT_EXPLOSION:
                            CastExplosion();
                            ClearIceBlock();
                            events.ScheduleEvent(EVENT_LAND, 3000);
                            return;
                        case EVENT_LAND:
                            me->HandleEmoteCommand(EMOTE_ONESHOT_LAND);
                            me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                            me->SendMovementFlagUpdate();
                            events.ScheduleEvent(EVENT_GROUND, 1500);
                            return;
                        case EVENT_GROUND:
                            EnterPhaseGround();
                            return;
                        case EVENT_BIRTH:
                            me->SetVisible(true);
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            me->SetReactState(REACT_AGGRESSIVE);
                            return;
                    }
                }
            }
        }

        void CastExplosion()
        {
            //DoZoneInCombat(); ver
            std::vector<Unit*> targets;
            std::list<HostileReference*>::const_iterator i = me->getThreatManager().getThreatList().begin();
            for (; i != me->getThreatManager().getThreatList().end(); ++i)
            {
                Unit *pTarget = (*i)->getTarget();
                if (pTarget->GetTypeId() != TYPEID_PLAYER)
                    continue;

                if (pTarget->HasAura(SPELL_ICEBOLT))
                {
                    pTarget->ApplySpellImmune(0, IMMUNITY_ID, SPELL_FROST_EXPLOSION, true);
                    targets.push_back(pTarget);
                    continue;
                }

                for (IceBlockMap::const_iterator itr = iceblocks.begin(); itr != iceblocks.end(); ++itr)
                {
                    if (GameObject* pGo = GameObject::GetGameObject(*me, itr->second))
                    {
                        if (pGo->IsInBetween(me, pTarget, 2.0f)
                            && me->GetExactDist2d(pTarget->GetPositionX(), pTarget->GetPositionY()) - me->GetExactDist2d(pGo->GetPositionX(), pGo->GetPositionY()) < 5.0f)
                        {
                            pTarget->ApplySpellImmune(0, IMMUNITY_ID, SPELL_FROST_EXPLOSION, true);
                            targets.push_back(pTarget);
                            break;
                        }
                    }
                }
            }

            me->CastSpell(me, SPELL_FROST_EXPLOSION, true);

            for (std::vector<Unit*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                (*itr)->ApplySpellImmune(0, IMMUNITY_ID, SPELL_FROST_EXPLOSION, false);
        }
    };

};

class npc_summon : public CreatureScript
{
public:
    npc_summon() : CreatureScript("npc_summon") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_summonAI (pCreature);
    }

    struct npc_summonAI : public Scripted_NoMovementAI
    {
        npc_summonAI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->SetDisplayId(16925);
        }

        void Reset()
        {
           me->FindNearestCreature(NPC_DRAGON_NEGRO,0);
		   DoCast(me, SPELL_TEMBLOR);
        }
    };

};

/********************************************************************
                       Dragones Negros
********************************************************************/
class dragones_negros : public CreatureScript
{
public:
    dragones_negros() : CreatureScript("dragones_negros") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new dragones_negrosAI(pCreature);
    }

    struct dragones_negrosAI : public ScriptedAI
    {
        dragones_negrosAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            Reset();
        }

        InstanceScript* pInstance;

        uint32 m_uialaridoGoutTimer;
		uint32 m_uiInmunidadTimer;

        void Reset()
        {
            if(!pInstance)
                return;

            m_uialaridoGoutTimer = urand(8*IN_MILLISECONDS,25*IN_MILLISECONDS);
			m_uiInmunidadTimer = urand(40*IN_MILLISECONDS,60*IN_MILLISECONDS);
			DoCast(SPELL_SCOURGE_RESSURRECTION);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim()) return;

            if (m_uialaridoGoutTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(pTarget,SPELL_ALARIDO);
                m_uialaridoGoutTimer = urand(8*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uialaridoGoutTimer -= uiDiff;

            if (m_uiInmunidadTimer <= uiDiff)
            {
                DoCast(SPELL_INMUNIDAD);
                m_uiInmunidadTimer = urand(10*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else m_uiInmunidadTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };

};
class npc_meteor_strike : public CreatureScript
{
    public:
        npc_meteor_strike() : CreatureScript("npc_meteor_strike") { }

        struct npc_meteor_strikeAI : public ScriptedAI
        {
            npc_meteor_strikeAI(Creature *pCreature) : ScriptedAI(pCreature){}

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
                DoCast(me, SPELL_METEOR_STRIKE);
                events.Reset();
                events.ScheduleEvent(EVENT_METEOR_DAMAGE, 7000);
                events.ScheduleEvent(EVENT_METEOR_STRIKE, 1000);
				events.ScheduleEvent(EVENT_METEOR_FUEGO, 1000);
                me->ForcedDespawn(15000);
                angle = (float)(urand(0,62)/10);
                dist = 0;
                count = 0;
            }

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_METEOR_STRIKE:
                            DoCastAOE(SPELL_METEOR_TARGET);
                            break;
                        case EVENT_METEOR_FUEGO:
                            DoCastAOE(SPELL_METEOR_TARGET);
                            break;
                        case EVENT_METEOR_DAMAGE:
                            DoCastAOE(SPELL_METEOR_DAMAGE);
                            events.ScheduleEvent(EVENT_METEOR_FLAME, 1000);
                            break;
                        case EVENT_METEOR_FLAME:
                            float x, y;
                            dist += 5;
                            count ++;
                            me->GetNearPoint2D(x, y, dist, angle);
                            me->SummonCreature(NPC_METEOR_FLAME,x,y,me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,999999);
                            me->GetNearPoint2D(x, y, dist, angle+M_PI);
                            me->SummonCreature(NPC_METEOR_FLAME,x,y,me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,999999);
                            me->GetNearPoint2D(x, y, dist, angle+3*M_PI/2);
                            me->SummonCreature(NPC_METEOR_FLAME,x,y,me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,999999);
                            me->GetNearPoint2D(x, y, dist, angle+M_PI/2);
                            me->SummonCreature(NPC_METEOR_FLAME,x,y,me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT,999999);
                            if (count < 8)
                                events.ScheduleEvent(EVENT_METEOR_FLAME, 1000);
                            break;
                    }
                }
            }

        private:
            EventMap events;
            float dist, angle;
            uint8 count;

        };

        CreatureAI* GetAI(Creature *pCreature) const
        {
            return new npc_meteor_strikeAI(pCreature);
        }
};

class npc_spell_meteor_strike : public CreatureScript
{
    public:
        npc_spell_meteor_strike() : CreatureScript("npc_spell_meteor_strike") { }

        struct npc_spell_meteor_strikeAI : public ScriptedAI
        {
            npc_spell_meteor_strikeAI(Creature *pCreature) : ScriptedAI(pCreature){}

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
                me->ForcedDespawn(10000);
            }

        };

        CreatureAI* GetAI(Creature *pCreature) const
        {
            return new npc_spell_meteor_strikeAI(pCreature);
        }
};

class npc_meteor_flame : public CreatureScript
{
    public:
        npc_meteor_flame() : CreatureScript("npc_meteor_flame") { }

        struct npc_meteor_flameAI : public ScriptedAI
        {
            npc_meteor_flameAI(Creature *pCreature) : ScriptedAI(pCreature){}

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                me->SetReactState(REACT_PASSIVE);
                DoCast(me,SPELL_METEOR_FLAME);

                me->ForcedDespawn(10000);
            }
        };

        CreatureAI* GetAI(Creature *pCreature) const
        {
            return new npc_meteor_flameAI(pCreature);
        }
};

class npc_Asirius_vuelo : public CreatureScript
{
    public:
        npc_Asirius_vuelo() : CreatureScript("npc_Asirius_vuelo") { }

        struct npc_Asirius_vueloAI : public ScriptedAI
        {
            npc_Asirius_vueloAI(Creature *pCreature) : ScriptedAI(pCreature)
            {
                pInstance = me->GetInstanceScript();
            }
	 
	uint32 CheckInterval; 

	void InitializeAI()  
	{
	me->SetFlying(true);
	me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);  
	me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
	} 
	 
      void UpdateAI(const uint32 diff)
		 {
        if (!UpdateVictim())
            return;      
		 
    if (CheckInterval <= diff) 
	{
	me->SetReactState(REACT_PASSIVE);  
	} 
	else CheckInterval -= diff;
	
	DoMeleeAttackIfReady();
            }

        private:
            EventMap events;
            InstanceScript* pInstance;
        };

        CreatureAI* GetAI(Creature *pCreature) const
        {
            return new npc_Asirius_vueloAI(pCreature);
        }
};

class npc_fin_asirius : public CreatureScript
{
public:
    npc_fin_asirius() : CreatureScript("npc_fin_asirius") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_fin_asiriusAI (pCreature);
    }

    struct npc_fin_asiriusAI : public Scripted_NoMovementAI
    {
        npc_fin_asiriusAI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->SetDisplayId(16925);
        }

        void Reset()
        {
            DoCast(me, SPELL_DESTROY_PLATFORM);
        }
    };

};

void AddSC_boss_asirius()
{
    new boss_asirius();
	new npc_summon();
	new dragones_negros();
	new npc_meteor_strike();
    new npc_spell_meteor_strike();
    new npc_meteor_flame();
	new npc_Asirius_vuelo();
	new npc_fin_asirius();
}
