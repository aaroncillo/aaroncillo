local combat1 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 48)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

local combat2 = createCombatObject()setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 6)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 14)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 48)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 32)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -8.1, -99, -9.5, -98)

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

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)

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

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat6 }
addEvent(onCastSpell1, 0, parameters)
addEvent(onCastSpell2, 200, parameters)
addEvent(onCastSpell3, 400, parameters)
addEvent(onCastSpell4, 600, parameters)
addEvent(onCastSpell5, 800, parameters)
addEvent(onCastSpell6, 1000, parameters)
return TRUE
end