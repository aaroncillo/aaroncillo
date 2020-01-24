local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1498)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0, -8000, -0, -12000)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0, -180000, -0, -18000)

local arr = {
{1, 1, 1},
{1, 2, 1},
{1, 1, 1}
}

local arr2 = {
{0, 0, 0},
{0, 3, 0},
{0, 0, 0}
}

local area = createCombatArea(arr)
local area2 = createCombatArea(arr2)
setCombatArea(combat, area)
setCombatArea(combat1, area2)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, combat1, parameters.var)
end
local function onCastSpell2(parameters)
    doCombat(parameters.cid, combat2, parameters.var)
end
local function onCastSpell3(parameters)
    doCombat(parameters.cid, combat, parameters.var)
end
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell3, 100, parameters)
addEvent(onCastSpell1, 200, parameters)
addEvent(onCastSpell1, 300, parameters)
addEvent(onCastSpell1, 400, parameters)
addEvent(onCastSpell1, 500, parameters)
addEvent(onCastSpell1, 600, parameters)
addEvent(onCastSpell1, 700, parameters)
addEvent(onCastSpell1, 800, parameters)
addEvent(onCastSpell1, 900, parameters)
addEvent(onCastSpell1, 1000, parameters)
addEvent(onCastSpell1, 1200, parameters)
addEvent(onCastSpell1, 1400, parameters)
addEvent(onCastSpell1, 1600, parameters)
addEvent(onCastSpell1, 1800, parameters)
addEvent(onCastSpell1, 2000, parameters)
addEvent(onCastSpell1, 2200, parameters)
addEvent(onCastSpell1, 2400, parameters)
addEvent(onCastSpell1, 2600, parameters)
addEvent(onCastSpell1, 2800, parameters)
addEvent(onCastSpell1, 3000, parameters)
addEvent(onCastSpell1, 3200, parameters)
addEvent(onCastSpell1, 3400, parameters)
addEvent(onCastSpell1, 3600, parameters)
addEvent(onCastSpell1, 3800, parameters)
addEvent(onCastSpell1, 4000, parameters)
addEvent(onCastSpell1, 5000, parameters)
addEvent(onCastSpell1, 6000, parameters)
addEvent(onCastSpell1, 7000, parameters)
addEvent(onCastSpell1, 8000, parameters)
addEvent(onCastSpell1, 9000, parameters)
addEvent(onCastSpell1, 10000, parameters)
addEvent(onCastSpell2, 20000, parameters)
return true
end
