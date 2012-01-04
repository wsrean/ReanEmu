/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2009-2011 Eilo <https://github.com/eilo>
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
SDName: Wachiturros los ladrones del botin
SD%Complete: 95
SDAutor: Eilo
SDComment: El boss tendra un respawn de 1 dia y vidas de acuerdo a dificultades, 
           porque lo spameare en archavon 10 y 25, similares a bosses de icc 
           10h y 25h y daños similares, se agrega ademas un sql con un game_event
           para el despawn respectivo del boss y se retocara el cd de archa a 1 dia
           el loot sera el de gunship battle, 10h y 10n en uno solo y 25h 10n en uno
           tambien.
*/

#include "ScriptPCH.h"
#include "Spell.h"
#include "WorldPacket.h"

#define SPELL_BERSERK               26662

struct boss_wachiturrosAI : public ScriptedAI
{
    boss_wachiturrosAI(Creature *creature) : ScriptedAI(creature){}

    uint32 RespawnTimer;
    uint32 EnrageTimer;
    bool _checker;

    virtual void Reset() = 0;

    void ResetWachiturro()
    {
        RespawnTimer = 60000;
        me->ClearUnitState(UNIT_STAT_STUNNED);
        EnrageTimer = 20*60000;
        _checker = true;
    }

    void EnrageWachiturro(uint32 diff)
    {
        if (EnrageTimer <= diff)
        {
            if (!me->IsNonMeleeSpellCasted(true))
            {
                DoCast(me, SPELL_BERSERK);
                EnrageTimer = 60*60000;
            } else EnrageTimer = 0;
        } else EnrageTimer-=diff;
    }

    Creature* DeadWachiturro(uint32 diff)
    {
        std::list<Creature*> lUnitList;
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120001,120005), 200.0f);
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120002,120006), 200.0f);
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120003,120007), 200.0f);

        if (!lUnitList.empty())
            for (std::list<Creature*>::const_iterator iter = lUnitList.begin(); iter != lUnitList.end(); ++iter)
            {
                if (Creature* creature = *iter)
                {
                    if (creature->isDead())
                    {
                        if (RespawnTimer <= diff)
                        {
                            creature->Respawn();
                            RespawnTimer = 60000;
                        }
                        else RespawnTimer -= diff;
                    }
                }
            }
        return NULL;
    }

    bool WachiturrosVivos()
    {
        std::list<Creature*> lUnitList;
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120001,120005), 200.0f);
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120002,120006), 200.0f);
        me->GetCreatureListWithEntryInGrid(lUnitList, RAID_MODE(120003,120007), 200.0f);

        if (!lUnitList.empty())
            for (std::list<Creature*>::const_iterator iter = lUnitList.begin(); iter != lUnitList.end(); ++iter)
            {
                if (Creature* c = *iter)
                {
                    if (c->isDead()) _checker = false;
                    else _checker =true;
                }
            }
        return _checker;
    }

    void HandleWachiturro(uint32 diff)
    {
        Creature* c = DeadWachiturro(diff);
    }
};

enum WachiturroMaloSpells
{
    SPELL_SHIELD				= 71463,
    SPELL_UPPERCUT              = 26007,
    SPELL_UNBALANCING_STRIKE    = 26613,
    SPELL_SNOWBALL				= 25677,
    INVOCATION_VISUAL_ACTIVE    = 70934
};

// Gritos del Wachiturro malo
#define SAY_MALO_AGGRO            "Tirate que?? Tirate un paso!! No les dare el botin! Vamos wachiturros!!"
#define SAY_MALO_MATA             "Uno menos! wa - chi - tu - rros!!"
#define SAY_MALO_MUERE            "Nooo!!"
#define SAY_MALO_BAILAR           "A bailar!!"

class boss_wachiturro_malo : public CreatureScript
{
public:
    boss_wachiturro_malo() : CreatureScript("boss_wachiturro_malo") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_wachiturro_maloAI (creature);
    }

    struct boss_wachiturro_maloAI : public boss_wachiturrosAI
    {
        boss_wachiturro_maloAI(Creature* c) : boss_wachiturrosAI(c) {}

        uint32 UpperCut_Timer;
        uint32 UnbalancingStrike_Timer;
        uint32 Snowball_Timer;
        uint32 Dance_Timer;

        void Reset()
        {
            ResetWachiturro();
            UpperCut_Timer = 14000 + rand()%15000;
            UnbalancingStrike_Timer = 8000 + rand()%10000;
            Snowball_Timer = 10000;
            Dance_Timer = 5000;
            me->RemoveAurasDueToSpell(SPELL_SHIELD);
            me->RemoveAurasDueToSpell(INVOCATION_VISUAL_ACTIVE);
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterSay(SAY_MALO_AGGRO, LANG_UNIVERSAL, 0);
            DoCast(me, INVOCATION_VISUAL_ACTIVE);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterSay(SAY_MALO_MATA, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterSay(SAY_MALO_MUERE, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            //Se bloquea hasta que matas al resto de wachiturros
            if (HealthBelowPct(20))
            {
                DoCast(me, SPELL_SHIELD);
                me->RemoveAurasDueToSpell(INVOCATION_VISUAL_ACTIVE);

                if(!WachiturrosVivos())
                {
                    DoCast(me, INVOCATION_VISUAL_ACTIVE);
                    me->RemoveAurasDueToSpell(SPELL_SHIELD);
                }
            }

            //UnbalancingStrike_Timer
            if (UnbalancingStrike_Timer <= diff)
            {
                DoCast(me->getVictim(), SPELL_UNBALANCING_STRIKE);
                UnbalancingStrike_Timer = 8000+rand()%12000;
            } else UnbalancingStrike_Timer -= diff;

            if (UpperCut_Timer <= diff)
            {
                Unit* randomMelee = SelectTarget(SELECT_TARGET_RANDOM, 0, NOMINAL_MELEE_RANGE, true);
                if (randomMelee)
                {
                    DoCast(randomMelee, SPELL_UPPERCUT);
                    randomMelee->HandleEmoteCommand(EMOTE_STATE_DANCE);
                }
                UpperCut_Timer = 15000+rand()%15000;
            } else UpperCut_Timer -= diff;

            if (Snowball_Timer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                {
                    DoCast(target, SPELL_SNOWBALL);
                    target->HandleEmoteCommand(EMOTE_STATE_DANCE);
                }
                Snowball_Timer = 10000;
            } else Snowball_Timer -= diff;

            if (Dance_Timer <= diff)
            {
                me->MonsterSay(SAY_MALO_BAILAR, LANG_UNIVERSAL, 0);
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    target->HandleEmoteCommand(EMOTE_STATE_DANCE);
                Dance_Timer = 5000;
            } else Dance_Timer -= diff;

            HandleWachiturro(diff);
            EnrageWachiturro(diff);
            DoMeleeAttackIfReady();
        }
    };
};

enum WachiturrosSpells
{
    EARTHQUAKE                                              = 46240,
    SHOCK_OF_SORROW                                         = 50760,
    ENTROPIC_AURA                                           = 36784,
    AURAL_SHOCK                                             = 14538
};

// Gritos de los Wachiturros
#define SAY_WACHITURRO_TIRATE       "Va para adelante y tirate un paso!! wa chi tu rros!!"
#define SAY_WACHITURRO_UN           "Toma toma por wacho atrevido!! wa chi tu rros!!"
#define SAY_WACHITURRO_PASO         "Latigo latigo!! tirate lo tirate un paso!!"

class npc_boss_wachiturro_tirate : public CreatureScript
{
public:
    npc_boss_wachiturro_tirate() : CreatureScript("npc_boss_wachiturro_tirate") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_boss_wachiturro_tirateAI (creature);
    }

    struct npc_boss_wachiturro_tirateAI : public boss_wachiturrosAI
    {
        npc_boss_wachiturro_tirateAI(Creature *creature) : boss_wachiturrosAI(creature){}

        uint32 EarthquakeTimer;

        void Reset()
        {
            ResetWachiturro();
            EarthquakeTimer = 8000;
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoCast(me, ENTROPIC_AURA);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterSay(SAY_WACHITURRO_UN, LANG_UNIVERSAL, 0);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (EarthquakeTimer <= uiDiff)
            {
                DoCast(EARTHQUAKE);
                EarthquakeTimer = 20000;
            } else EarthquakeTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_boss_wachiturro_un : public CreatureScript
{
public:
    npc_boss_wachiturro_un() : CreatureScript("npc_boss_wachiturro_un") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_boss_wachiturro_unAI (creature);
    }

    struct npc_boss_wachiturro_unAI : public boss_wachiturrosAI
    {
        npc_boss_wachiturro_unAI(Creature *creature) : boss_wachiturrosAI(creature){}

        uint32 ShockTimer;

        void Reset()
        {
            ResetWachiturro();
            ShockTimer = 20000;
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoCast(me, ENTROPIC_AURA);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterSay(SAY_WACHITURRO_TIRATE, LANG_UNIVERSAL, 0);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (ShockTimer <= uiDiff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(target, SHOCK_OF_SORROW);
                ShockTimer = 60000;
            } else ShockTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };
};

class npc_boss_wachiturro_paso : public CreatureScript
{
public:
    npc_boss_wachiturro_paso() : CreatureScript("npc_boss_wachiturro_paso") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_boss_wachiturro_pasoAI (creature);
    }

    struct npc_boss_wachiturro_pasoAI : public boss_wachiturrosAI
    {
        npc_boss_wachiturro_pasoAI(Creature *creature) : boss_wachiturrosAI(creature){}

        uint32 AuralShockTimer;

        void Reset()
        {
            ResetWachiturro();
            AuralShockTimer = 50000;
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoCast(me, ENTROPIC_AURA);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterSay(SAY_WACHITURRO_PASO, LANG_UNIVERSAL, 0);
            me->HandleEmoteCommand(EMOTE_STATE_DANCE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (AuralShockTimer <= uiDiff)
            {
                DoCast(AURAL_SHOCK);
                AuralShockTimer = 40000;
            } else AuralShockTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_custom_boss_wachiturros()
{
    new boss_wachiturro_malo;
    new npc_boss_wachiturro_tirate;
    new npc_boss_wachiturro_un;
    new npc_boss_wachiturro_paso;
}
