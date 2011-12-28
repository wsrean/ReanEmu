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
 * Script de npc broma por Eilo (https://github.com/eilo)
 * WowRean Script www.wowrean.com
 *
 * Este script coje los players en rango y cuando uno se le acerca le convierte
 * en cerdito, si le tocas para preguntarle te mata.
 */

#include "ScriptPCH.h"

enum Datos
{
    DISPLAY_CERDO           = 16358,
    ITEM_ARTIFICIALES       = 41427,
    ITEM_CARAMELO           = 17344,
};

class npc_broma : public CreatureScript
{
public:
    npc_broma() : CreatureScript("npc_broma") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (urand(0, 1))
        {
            creature->Kill(player);
            player->AddItem(ITEM_CARAMELO,1);
            creature->MonsterWhisper("Intenta nuevamente :)", player->GetGUID());
        }
        else
        {
            player->SetDisplayId(DISPLAY_CERDO);
			player->AddItem(ITEM_ARTIFICIALES,1);
            creature->MonsterWhisper("Si creias que en WowRean lo has visto todo, error.... Inocente!!", player->GetGUID());
        }
        return true;
    }
};

void AddSC_npc_broma()
{
    new npc_broma();
}
