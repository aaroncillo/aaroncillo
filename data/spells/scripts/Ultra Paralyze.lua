local event = {}

local combat = createCombatObject()

local condition1 = createConditionObject(CONDITION_INFIGHT)
setConditionParam(condition1, CONDITION_PARAM_TICKS, -1)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_EXHAUST)
setConditionParam(condition2, CONDITION_PARAM_TICKS, -1)
setCombatCondition(combat, condition2)

function onTargetCreature(cid, target)
        local pos = getCreaturePosition(target)
        local shoots = {
                {x=pos.x, y=pos.y - 3, z=pos.z},
                {x=pos.x, y=pos.y + 3, z=pos.z},
                {x=pos.x - 3, y=pos.y, z=pos.z},
                {x=pos.x + 3, y=pos.y, z=pos.z},
                {x=pos.x - 2, y=pos.y - 2, z=pos.z},
                {x=pos.x + 2, y=pos.y - 2, z=pos.z},
                {x=pos.x + 2, y=pos.y + 2, z=pos.z},
                {x=pos.x - 2, y=pos.y + 2, z=pos.z}
        }
        local sv = getPlayerStorageValue(target, 12346)
        if sv < 1 then
                setPlayerStorageValue(target, 12346, 1)
                event[target] = addEvent(mayNotMove, 60 * 300, target, false) -- 4 seconds froozen and cant heal neither do spells --
        elseif sv > 0 then
                stopEvent(event[target])
                doRemoveCondition(cid, CONDITION_INFIGHT)
				doRemoveCondition(cid, CONDITION_EXHAUST)
        end
        mayNotMove(target, sv < 1 and true or false)
        setPlayerStorageValue(target, 12346, sv < 1 and 1 or -1)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, sv < 1 and "Player paralyzed for 4 seconds!" or "Player is now able move and heal again.")
        doSendAnimatedText(getCreaturePosition(target), sv <1 and "" or "", sv < 1 and 64 or 168)
        for i = 1, #shoots do
                doSendDistanceShoot(shoots[i], pos, sv < 1 and 20 or 30)
        end
        doSendMagicEffect(pos, sv < 1 and 52 or 49)
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(cid, var)
        return doCombat(cid, combat, var)
end