--Scripted by Legend--  500
local SPELL_LVL_STORAGE = 18471
local combat1 = {}
local combat_formulas = {
	[0] = {-30, -60000,  -40, -60000},
	[1] = {-30, -8000,  -40, -9000},
	[2] = {-30, -10000,  -40, -1200},
	[3] = {-20, -1800,  -30, -2000},
}
for i=0,3 do
    combat1[i] = createCombatObject()
    setCombatParam(combat1[i], COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
    setCombatParam(combat1[i], COMBAT_PARAM_EFFECT,17)
    setCombatParam(combat1[i], COMBAT_PARAM_DISTANCEEFFECT, 31)
    setCombatFormula(combat1[i], COMBAT_FORMULA_LEVELMAGIC,combat_formulas[i][1], combat_formulas[i][2],combat_formulas[i][3],combat_formulas[i][4] )
end
local combat2 = {}
local combat2_formulas = {
	[0] = {-20, -5000,  -30, -6000},
	[1] = {-20, -8000,  -30, -9000},
	[2] = {-20, -1000,  -30, -1200},
	[3] = {-20, -18000,  -30, -20000},
}
for i=0,3 do
    combat2[i] = createCombatObject()
    setCombatParam(combat2[i], COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
    setCombatParam(combat2[i], COMBAT_PARAM_EFFECT,36)
    setCombatParam(combat2[i], COMBAT_PARAM_DISTANCEEFFECT, 3)
    setCombatFormula(combat2[i], COMBAT_FORMULA_LEVELMAGIC,combat2_formulas[i][1], combat2_formulas[i][2],combat2_formulas[i][3],combat2_formulas[i][4])
end
local combat3 = {}
local combat3_formulas = {
	[0] = {-20, -500,  -30, -600},
	[1] = {-20, -800,  -30, -900},
	[2] = {-20, -1000,  -30, -1200},
	[3] = {-20, -1800,  -30, -2000},
}
for i=0,3 do
    combat3[i] = createCombatObject()
    setCombatParam(combat3[i], COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
    setCombatParam(combat3[i], COMBAT_PARAM_EFFECT,37)
    setCombatParam(combat3[i], COMBAT_PARAM_DISTANCEEFFECT, 4)
    setCombatFormula(combat3[i], COMBAT_FORMULA_LEVELMAGIC,combat3_formulas[i][1], combat3_formulas[i][2],combat3_formulas[i][3],combat3_formulas[i][4])
end


local function onCastSpell1(parameters)
	doCombat(parameters.cid, combat1[parameters.lvl], parameters.var)
end

local function onCastSpell2(parameters)
	doCombat(parameters.cid, combat2[parameters.lvl], parameters.var)
end

local function onCastSpell3(parameters)
	doCombat(parameters.cid, combat3[parameters.lvl], parameters.var)
end


function onCastSpell(cid, var)
	local lvl = getPlayerStorageValue(cid,SPELL_LVL_STORAGE)
	lvl = lvl == -1 and 0 or lvl
    local parameters = { cid = cid, var = var,lvl=lvl}
    addEvent(onCastSpell1, 0, parameters)
    addEvent(onCastSpell2, 300, parameters)
    addEvent(onCastSpell3, 600, parameters)
    return TRUE
end
