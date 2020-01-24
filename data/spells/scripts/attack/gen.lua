local combat16 = createCombatObject()
setCombatParam(combat16, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat16, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat16, COMBAT_FORMULA_LEVELMAGIC, -18.0, -1800, -18.0, -1800)

local combat17 = createCombatObject()
setCombatParam(combat17, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat17, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat17, COMBAT_FORMULA_LEVELMAGIC, -20.5, -2050, -20.5, -2050)

local combat18 = createCombatObject()
setCombatParam(combat18, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat18, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat18, COMBAT_FORMULA_LEVELMAGIC, -22.0, -2200, -22.0, -2200)

local combat19 = createCombatObject()
setCombatParam(combat19, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat19, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat19, COMBAT_FORMULA_LEVELMAGIC, -23.5, -2350, -23.5, -2350)

local combat20 = createCombatObject()
setCombatParam(combat20, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat20, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat20, COMBAT_FORMULA_LEVELMAGIC, -25.0, -2500, -25.0, -2500)

arr16 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr17 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr18 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 2, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr19 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr20 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

local area16 = createCombatArea(arr16)
local area17 = createCombatArea(arr17)
local area18 = createCombatArea(arr18)
local area19 = createCombatArea(arr19)
local area20 = createCombatArea(arr20)

setCombatArea(combat16, area16)
setCombatArea(combat17, area17)
setCombatArea(combat18, area18)
setCombatArea(combat19, area19)
setCombatArea(combat20, area20)



local function onCastSpell16(parameters)
doCombat(parameters.cid, parameters.combat16, parameters.var)
end

local function onCastSpell17(parameters)
doCombat(parameters.cid, parameters.combat17, parameters.var)
end

local function onCastSpell18(parameters)
doCombat(parameters.cid, parameters.combat18, parameters.var)
end

local function onCastSpell19(parameters)
doCombat(parameters.cid, parameters.combat19, parameters.var)
end

local function onCastSpell20(parameters)
doCombat(parameters.cid, parameters.combat20, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat16 = combat16, combat17 = combat17, combat18 = combat18, combat19 = combat19, combat20 = combat20 }

addEvent(onCastSpell16, 0, parameters)
addEvent(onCastSpell17, 200, parameters)
addEvent(onCastSpell18, 400, parameters)
addEvent(onCastSpell19, 600, parameters)
addEvent(onCastSpell20, 800, parameters)
end