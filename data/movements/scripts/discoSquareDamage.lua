-- Disco Square Damage by Arthur aka artofwork
-- This script can be used to add a little flare to your
-- quests by assigning an action id to a tile
-- when  player steps on this tile(s) a series of things
-- will take place.
-- use the action id of 904 on the assigned tile

-- 1) When the player steps on the tile the area of where the player stepped
-- will generate 1 of 9 random predefined light colors and light levels

-- 2) Possibility for the player to summon 1 of 9 predefined (boss) creatures
-- **Please Note ** --
-- if the creature steps on the tile it will be possible 
-- for them to activate this script aswell (yes they will add to the chaos)

-- 3) Possibility to add a random buff condition to the player/monster 
-- for 10 seconds drunk or paralyze at -1000 speed, 
-- -500 damage in fire, drown, poison, energy
-- the possibility to mute or exhaust the player for 10 seconds

-- As you can see this script is not made for low level players
-- but more for high level quests

local drunk = createConditionObject(CONDITION_DRUNK)
setConditionParam(drunk, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(drunk, CONDITION_PARAM_BUFF, TRUE)

local paralyze = createConditionObject(CONDITION_PARALYZE)
setConditionParam(paralyze, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(paralyze, CONDITION_PARAM_SPEED, -1000)
setConditionParam(paralyze, CONDITION_PARAM_BUFF, TRUE)

local drown = createConditionObject(CONDITION_DROWN)
setConditionParam(drown, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(drown, CONDITION_PARAM_PERIODICDAMAGE, -500)

local fire = createConditionObject(CONDITION_FIRE)
setConditionParam(fire, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(fire, CONDITION_PARAM_PERIODICDAMAGE, -500)

local poison = createConditionObject(CONDITION_POISON)
setConditionParam(poison, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(poison, CONDITION_PARAM_PERIODICDAMAGE, -500)

local energy = createConditionObject(CONDITION_ENERGY)
setConditionParam(energy, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(energy, CONDITION_PARAM_PERIODICDAMAGE, -500)

local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(exhaust, CONDITION_PARAM_BUFF, TRUE)

local mute = createConditionObject(CONDITION_MUTED)
setConditionParam(mute, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(mute, CONDITION_PARAM_BUFF, TRUE)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)

function tileMonster(p)
local rands = math.random(1, 9)
if rands == 1 then
doSummonCreature("Hellgorak", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 2 then
doSummonCreature("Annihilon", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 3 then
doSummonCreature("Latrivan", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 4 then
doSummonCreature("Warlock", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 5 then
doSummonCreature("Orshabaal", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 6 then
doSummonCreature("Bazir", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 7 then
doSummonCreature("Zugurosh", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 8 then
doSummonCreature("Ushuriel", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
elseif rands == 9 then
doSummonCreature("Golgordan", p.position)
doSendMagicEffect(p.position, CONST_ME_MAGIC_BLUE)
end
end


function onStepIn(cid, item, position, fromPosition, item2)
local p = {cid = cid, position = position}
local position = getCreaturePosition(cid)
position.stackpos = 255
if(item.actionid == 904) then
local lightLevel = math.random(1, 10) 
local lightTicks = 1 
local lighttextRND = math.random(1, 254)
local rand = math.random(1, 9)
if rand == 1 then
doSetCreatureLight(cid, lightLevel, 78, lightTicks)
return doAddCondition(cid, drunk)
elseif rand == 2 then
doSetCreatureLight(cid, lightLevel, 147, lightTicks)
return doAddCondition(cid, drown)
elseif rand == 3 then
doSetCreatureLight(cid, lightLevel, 203, lightTicks)
return doAddCondition(cid, paralyze)
elseif rand == 4 then
doSetCreatureLight(cid, lightLevel, 180, lightTicks)
return doAddCondition(cid, fire)
elseif rand == 5 then
doSetCreatureLight(cid, lightLevel, 5, lightTicks)
return doAddCondition(cid, energy)
elseif rand == 6 then
doSetCreatureLight(cid, lightLevel, 6, lightTicks)
return doAddCondition(cid, poison)
elseif rand == 7 then
doSetCreatureLight(cid, lightLevel, 174, lightTicks)
return doAddCondition(cid, exhaust)
elseif rand == 8 then
doSetCreatureLight(cid, lightLevel, 1, lightTicks)
return doAddCondition(cid, mute)
elseif rand == 9 then
doSetCreatureLight(cid, lightLevel, 1, lightTicks)
return addEvent(tileMonster, 1, p)
end
return TRUE		
end
end