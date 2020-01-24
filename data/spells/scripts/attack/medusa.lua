local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 37)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -10.1, -99, -10.5, -98)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 37)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -10.1, -99, -10.5, -98)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 48)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -10.3, -97, -11.5, -99)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 48)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -10.6, -99, -11.3, -97)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 43)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -10.3, -89, -10.9, -95)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 43)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -10.2, -91, -10.6, -90)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, CONST_ME_HITBYFIRE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -10.9, -97, -10.7, -89)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, CONST_ME_HITBYFIRE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, -10.4, -95, -10.1, -93)

local combat9 = createCombatObject()
setCombatParam(combat9, COMBAT_PARAM_TYPE, CONST_ME_HITBYFIRE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, -10.8, -98, -10.2, -94)

local combat10 = createCombatObject()
setCombatParam(combat10, COMBAT_PARAM_TYPE, CONST_ME_HITBYFIRE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, 15)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, -10.4, -94, -10.3, -98)

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr3 = {
{1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1},
{1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0},
{0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0},
{1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1},
{0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0},
{0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1},
{1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1},
}

arr4 = {
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0},
{0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0},
{1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1},
{1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0},
}

arr5 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr6 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr7 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 3, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr8 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr9 = {
{0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0},
{1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 3, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
}

arr10 = {
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 1, 0, 3, 0, 1, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)
local area8 = createCombatArea(arr8)
local area9 = createCombatArea(arr9)
local area10 = createCombatArea(arr10)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)
setCombatArea(combat8, area8)
setCombatArea(combat9, area9)
setCombatArea(combat10, area10)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local function onCastSpell5(parameters)
doCombat(parameters.cid, parameters.combat5, parameters.var)
end

local function onCastSpell6(parameters)
doCombat(parameters.cid, parameters.combat6, parameters.var)
end

local function onCastSpell7(parameters)
doCombat(parameters.cid, parameters.combat7, parameters.var)
end

local function onCastSpell8(parameters)
doCombat(parameters.cid, parameters.combat8, parameters.var)
end

local function onCastSpell9(parameters)
doCombat(parameters.cid, parameters.combat9, parameters.var)
end

local function onCastSpell10(parameters)
doCombat(parameters.cid, parameters.combat10, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat6, combat7 = combat7, combat8 = combat8, combat9 = combat9, combat10 = combat10 }
addEvent(onCastSpell1, 0, parameters)
addEvent(onCastSpell2, 200, parameters)
addEvent(onCastSpell3, 400, parameters)
addEvent(onCastSpell4, 600, parameters)
addEvent(onCastSpell5, 800, parameters)
addEvent(onCastSpell6, 1000, parameters)
addEvent(onCastSpell7, 1200, parameters)
addEvent(onCastSpell8, 1800, parameters)
addEvent(onCastSpell9, 2500, parameters)
addEvent(onCastSpell10, 2900, parameters)
return TRUE
end