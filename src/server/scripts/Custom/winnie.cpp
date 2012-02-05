/*
 * Copyright (C) 2008 - 2011 Trinity <http://www.trinitycore.org/>
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
 
 
 /*
 * Script de Winni por Strolch 
 * WowRean Script www.wowrean.com
 *
 */


#include "ScriptPCH.h"

enum Yells
{
    //Frases mientras no esta en combate
    SAY_REAN_0									= -1100000,
	SAY_REAN_1									= -1100001,
	SAY_REAN_2									= -1100002,
	SAY_REAN_3									= -1100003,
	SAY_REAN_4									= -1100004,

	//Frases mientas esta en combate
    SAY_RANDOM_0                                = -1100005,
    SAY_RANDOM_1                                = -1100006,
    SAY_RANDOM_2                                = -1100007,
    SAY_RANDOM_3                                = -1100008,

	//Frases para reaccionar cuando la besen
	SAY_KISS_0									= -1100009,
	SAY_KISS_1									= -1100010,
	SAY_KISS_2									= -1100011,
	SAY_KISS_3									= -1100012,

	//Frases para reaccionar cuando le canten
	SAY_SING_0									= -1100013,
	SAY_SING_1									= -1100014,
	SAY_SING_2									= -1100015,
	SAY_SING_3									= -1100016,
	SAY_SING_4									= -1100017,
	SAY_SING_5									= -1100018,

	//Frase de cambio de fase
    SAY_PHASE                                   = -1100019,

};

enum Spells
{
	//Spells de winnie inicial
	SPELL_DIVINE_STORM                          = 53385, //spell1
    SPELL_CRUSADER_STRIKE                       = 35395, //spell2    
    SPELL_HOLY_WRATH                            = 2812,  //spell3
	SPELL_HOLY_LIGHT                            = 635,   //spell4
    // Spells de winnie dragona
    SPELL_FIREBALL                              = 40598, //spell5
    SPELL_LEGION_LIGHTNING                      = 45664, //spell6
    SPELL_VORTEX                                = 6963,  //spell7
    
};

enum eEnums
{
    // any other constants
    WINNIE										= 2120204,
	DISPLAY_DRAGONA								= 11380
};


class Winnie : public CreatureScript
{
public:
        Winnie() : CreatureScript("Winnie") {  }

        struct WinnieAI : public ScriptedAI
        {
			WinnieAI(Creature* c) : ScriptedAI(c) {}
			
			uint32 m_uiSayTimer;                                    // Tiempo para decir algo aleatoriamente
            uint32 m_uiSpell1Timer;                                 // tiempo para la spell 1 en el combate
            uint32 m_uiSpell2Timer;                                 // tiempo para la spell 2 en el combate
            uint32 m_uiSpell3Timer;                                 // tiempo para la spell 3 en el combate
			uint32 m_uiSpell4Timer;                                 // tiempo para la spell 4 en el combate
            uint32 m_uiSpell5Timer;                                 // tiempo para la spell 5 en el combate
            uint32 m_uiSpell6Timer;                                 // tiempo para la spell 6 en el combate
            uint32 m_uiSpell7Timer;                                 // tiempo para la spell 7 en el combate
            uint32 m_uiPhase;                                       // Fase de batalla en la que se encuentra

			uint32 d_Spell1;										// Daño que ocaciona Spell1
			uint32 d_Spell2;										// Daño que ocaciona Spell2
			uint32 d_Spell3;										// Daño que ocaciona Spell3
			uint32 d_Spell4;										// Sanacion que ocaciona Spell4			
            uint32 d_Spell5;										// Daño que ocaciona Spell5	
			uint32 d_Spell6;										// Daño que ocaciona Spell6
			uint32 d_Spell7;										// Daño que ocaciona Spell7	

			void Reset()
            {
                m_uiPhase = 1;                                      // Empieza en fase 1
                m_uiSpell1Timer = 5000;                             // 5 segundos
                m_uiSpell2Timer = 8000;								// 8 segundos
                m_uiSpell3Timer = urand(5000, 10000);               // entre 5 y 10 segundos
                m_uiSpell4Timer = urand(10000,15000);               // entre 10 y 15 segundos
				m_uiSpell5Timer = urand(3000,10000);                // entre 3 y 10 segundos
				m_uiSpell6Timer = urand(5000,12000);                // entre 5 y 12 segundos
				m_uiSpell7Timer = urand(1000,5000);                 // entre 1 y 5 segundos
										
            }

			//Para recibir Emotes de Players
			void ReceiveEmote(Player* player, uint32 uiTextEmote)
            {
                me->HandleEmoteCommand(uiTextEmote);

                switch (uiTextEmote)
                {
                      case TEXT_EMOTE_DANCE:
						me->MonsterTextEmote(TEXT_EMOTE_DANCE,player->GetGUID(),true);
                        break;
                    case TEXT_EMOTE_SALUTE:
                        me->MonsterTextEmote(TEXT_EMOTE_SALUTE,player->GetGUID(),true);
                        break;
					case TEXT_EMOTE_KISS:
						me->MonsterTextEmote(TEXT_EMOTE_KISS,player->GetGUID(),true);
						DoScriptText(RAND(SAY_KISS_0, SAY_KISS_1, SAY_KISS_2, SAY_KISS_3), me);
						break;
					case TEXT_EMOTE_SING:
						me->MonsterTextEmote(TEXT_EMOTE_SING,player->GetGUID(),true);
						DoScriptText(RAND(SAY_SING_0, SAY_SING_1, SAY_SING_2, SAY_SING_3, SAY_SING_4,SAY_SING_5), me);
						break;
                }
             }


			// Aca todo lo del bos en batalla
			void UpdateAI(const uint32 uiDiff)
            {
                //Timer para fuera de combate
                if (!me->getVictim())
                {
                    //Random Say timer
                    if (m_uiSayTimer <= uiDiff)
                    {
                        //Random entre 5 valores diferentes
                        DoScriptText(RAND(SAY_REAN_0,SAY_REAN_1,SAY_REAN_2,SAY_REAN_3,SAY_REAN_4), me);

                        m_uiSayTimer = 60000;                      //Dice algo a los 60 segundos
                    }
                    else
                        m_uiSayTimer -= uiDiff;
                }
				if (m_uiPhase != 2)
                {
					if (m_uiSayTimer <= uiDiff)
                    {
                        //Random entre 5 valores diferentes
                        DoScriptText(RAND(SAY_RANDOM_0,SAY_RANDOM_1,SAY_RANDOM_2,SAY_RANDOM_3), me);

                        m_uiSayTimer = 6000;                      //Dice algo a los 60 segundos
                    }
                    else
                        m_uiSayTimer -= uiDiff;

					//Retorna si no tiene victima
					if (!UpdateVictim())
						return;
				
					//contador Spell 1
					if (m_uiSpell1Timer <= uiDiff)
					{
						DoCast(me->getVictim(), SPELL_DIVINE_STORM);
						m_uiSpell1Timer = 5000;
					}
					else
						m_uiSpell1Timer -= uiDiff;

					//contador Spell 2 
					if (m_uiSpell2Timer <= uiDiff)
					{
						DoCast(me->getVictim(), SPELL_CRUSADER_STRIKE);
						m_uiSpell2Timer = 8000;
					}
					else
						m_uiSpell2Timer -= uiDiff;

					//contador Spell 3
					if (m_uiSpell3Timer <= uiDiff)
					{
						DoCast(me->getVictim(), SPELL_HOLY_WRATH);
						m_uiSpell3Timer = urand(5000, 10000);            
                
					}
					else
						m_uiSpell1Timer -= uiDiff;

					//contador Spell 4 
					if (m_uiSpell4Timer <= uiDiff)
					{
						DoCast(me, SPELL_HOLY_LIGHT);
						m_uiSpell4Timer= urand(10000,15000);
					}
					else
						m_uiSpell2Timer -= uiDiff;
				}
				
				//cambio de fase
				if ((me->GetHealth() * 100 / me->GetMaxHealth() <= 35) && m_uiPhase != 2)
				{
					m_uiPhase = 2;
					me->SetDisplayId(DISPLAY_DRAGONA);
					//me->SetScale(0,3);
					me->MonsterYell("Por el poder de las migraciones", LANG_UNIVERSAL, NULL);
				}

                if (m_uiPhase = 2)
                {
                    //contador Spell 5
                    if (m_uiSpell5Timer <= uiDiff)
                    {
                        
                        DoCast(me->getVictim(), SPELL_FIREBALL);
                        m_uiSpell5Timer = urand(3000,10000);
                    }
                    else
                        m_uiSpell5Timer -= uiDiff;

					 if (m_uiSpell6Timer <= uiDiff)
                    {
                        
                        DoCast(me->getVictim(), SPELL_LEGION_LIGHTNING );
                        m_uiSpell6Timer = urand(5000,12000);
                    }
                    else
                        m_uiSpell6Timer -= uiDiff;

					  if (m_uiSpell7Timer <= uiDiff)
                    {
                        
                        DoCast(me->getVictim(), SPELL_VORTEX );
                        m_uiSpell7Timer = urand(1000,5000);
                    }
                    else
                        m_uiSpell7Timer -= uiDiff;

                    
                }

                DoMeleeAttackIfReady();
					            
    
            }
        };
};
void AddSC_Winnie()
{
    new Winnie();
}