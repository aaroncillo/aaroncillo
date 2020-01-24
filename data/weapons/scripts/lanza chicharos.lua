local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_POISONHIT)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1, 0, 1, 0)

local area = createCombatArea({
   {0, 0, 0, 0, 0},
   {0, 1, 1, 1, 0},
   {0, 1, 3, 1, 0},
   {0, 1, 1, 1, 0},
   {0, 0, 0, 0, 0}
})

setCombatArea(combat, area)

function onUseWeapon(cid, var)
   return doCombat(cid, combat, var)
end
