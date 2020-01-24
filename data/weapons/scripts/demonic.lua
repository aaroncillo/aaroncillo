-- Wand/Rod Multi-Elements.
-- by leyendario.
 
local config = {
		min1 = 0.2, -- multiplicador de tu ml
		min2 = 700, -- minimo de daño
		max1 = 1.2, -- multiplicador de tu lvl
		max2 = 950 -- maximo de daño
		}
 
local fisico = createCombatObject() -- 1
setCombatParam(fisico, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(fisico, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(fisico, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WHIRLWINDSWORD)
setCombatFormula(fisico, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local energy = createCombatObject() -- 2
setCombatParam(energy, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(energy, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
setCombatParam(energy, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(energy, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local tierra = createCombatObject() -- 3
setCombatParam(tierra, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(tierra, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(tierra, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
setCombatFormula(tierra, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local fuego = createCombatObject() -- 4
setCombatParam(fuego, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(fuego, COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
setCombatParam(fuego, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatFormula(fuego, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local hielo = createCombatObject()  -- 5
setCombatParam(hielo, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(hielo, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(hielo, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
setCombatFormula(hielo, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local holy = createCombatObject()  -- 6
setCombatParam(holy, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(holy, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(holy, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatFormula(holy, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 
local death = createCombatObject()  -- 7
setCombatParam(death, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(death, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(death, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatFormula(death, COMBAT_FORMULA_LEVELMAGIC, -config.min1, -config.min2, -config.max1, -config.max2)
 local storage = 6999
function onUseWeapon(cid, var)
	local valor = getPlayerStorageValue(cid, storage)
	doCombat(cid, valor == 2 and energy or valor == 3 and tierra or valor == 4 and fuego or valor == 5 and hielo or valor == 6 and holy or valor == 7 and death or fisico, var)
	return true
end




