local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat, condition)

function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.itemid == 2692 then
doCreatureAddHealth(cid, 10000)
doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_STUN)
return doCreatureSay(cid, "que buen jale :B!", TALKTYPE_ORANGE_1)
end
end