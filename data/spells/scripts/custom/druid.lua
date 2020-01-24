local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
function getCombatFormulas(cid, lv, maglv)
local formula_min = -((lv*3.70 + maglv*1.1) * 1.5)
local formula_max = -((lv*5.25 + maglv*1.3) * 2.3)

if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local arr = {
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 1, 1, 1, 0, 0, 1},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 2, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{1, 0, 0, 1, 1, 1, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end
