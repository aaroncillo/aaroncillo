
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5.0, -300, -6.0, -400)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -9.0, -300, -10.0, -400)

local area = createCombatArea({
{0, 1, 0},
{1, 3, 1},
{0, 1, 0}
})

setCombatArea(combat, area)

function onUseWeapon(cid, var)
doSendMagicEffect(getThingPos(cid),29)
doSendAnimatedText(getThingPos(cid), "XxX", TEXTCOLOR_GREEN)
lucky = math.random(1, 2)
if lucky == 1 then
return doCombat(cid, combat, var)
elseif lucky == 2 then
return doCombat(cid, combat2, var)
end
end
