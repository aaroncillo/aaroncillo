local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 48)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 125)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 125)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 125)
setConditionParam(condition, CONDITION_PARAM_SKILL_MAGIC, 125)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 125)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 125)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
