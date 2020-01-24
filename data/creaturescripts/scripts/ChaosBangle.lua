-- >> Config --

local outfit =
{
    -- Girls
    {
        lookType   = 264,
        lookHead   = 78,
        lookBody   = 114,
        lookLegs   = 77,
        lookFeet   = 0,
        lookAddons = 0
    },
    -- Boys
    {
        lookType   = 254,
        lookHead   = 0,
        lookBody   = 77,
        lookLegs   = 77,
        lookFeet   = 114,
        lookAddons = 0
    }
}

local coinID          = ITEM_CRYSTAL_COIN
local wastingInterval = 10000
local wastingQuantity = 2
local triggerQuantity = 1
local warnOnLowSupply = TRUE
local lowSupplyMargin = 200
local storage         = 50780

-- Config << --

local condition1 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition1, CONDITION_PARAM_TICKS, -1)
setConditionParam(condition1, CONDITION_PARAM_SKILL_FIST,                100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_FISHING,             100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_CLUB,                100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_SWORD,               100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_AXE,                 100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_DISTANCE,            100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_SHIELD,              100)
setConditionParam(condition1, CONDITION_PARAM_SKILL_FISHING,             100)
setConditionParam(condition1, CONDITION_PARAM_STAT_MAGICPOINTS,          100)


local condition2 = createConditionObject(CONDITION_HASTE)
setConditionParam(condition2, CONDITION_PARAM_TICKS, -1)
setConditionFormula(condition2, 2.5, 0, 3.0, 0)

local area = createCombatArea({
    {0, 0, 0, 1, 0, 0, 0},
    {0, 1, 0, 0, 0, 1, 0},
    {0, 0, 0, 0, 0, 0, 0},
    {1, 0, 0, 2, 0, 0, 1},
    {0, 0, 0, 0, 0, 0, 0},
    {0, 1, 0, 0, 0, 1, 0},
    {0, 0, 0, 1, 0, 0, 0}
})

local animCombat = 
{
    createCombatObject(),
    createCombatObject()
}

local sexyEffect =
{
    CONST_ME_FIREWORK_RED,
    CONST_ME_FIREWORK_YELLOW,
    CONST_ME_MAGIC_RED,
    CONST_ME_MAGIC_GREEN
}

setCombatParam(animCombat[2], COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(animCombat[2], COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(animCombat[1], COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(animCombat[1], COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

setCombatArea(animCombat[2], area)
setCombatArea(animCombat[1], area)

local function StopSuperForm(cid)
    if (getPlayerStorageValue(cid, storage) == 1) then
        setPlayerStorageValue(cid, storage, 0)
        doRemoveCondition(cid, CONDITION_OUTFIT)
        doRemoveCondition(cid, CONDITION_ATTRIBUTES)
        doRemoveCondition(cid, CONDITION_HASTE)
    end
    return TRUE
end

local function SuperForm(cid, sexIndex)
    if (isCreature(cid)) then
        if (getPlayerStorageValue(cid, storage) == 1) then
            local goldLeft = getPlayerItemCount(cid, coinID)
            if (goldLeft >= wastingQuantity) then
                local position = getCreaturePosition(cid)
                doPlayerRemoveItem(cid, coinID, wastingQuantity)
                doSendMagicEffect(position, sexyEffect[sexIndex + 2])
                doSendMagicEffect(position, sexyEffect[sexIndex])
                if (goldLeft <= lowSupplyMargin and warnOnLowSupply == TRUE) then
                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Coins left: " ..(goldLeft - wastingQuantity) .. "!")
                end
                addEvent(SuperForm, wastingInterval, cid, sexIndex)
            else
                doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Indestructible :p")
                return StopSuperForm(cid)
            end
        end
    end
end

function onEquip(cid, item, slot)
    if (getPlayerItemCount(cid, coinID) > triggerQuantity and getPlayerStorageValue(cid, storage) ~= 1) then
        local sexIndex = getPlayerSex(cid) + 1
        doCombat(cid, animCombat[sexIndex], numberToVariant(cid))
        doSetCreatureOutfit(cid, outfit[sexIndex], -1)
        setPlayerStorageValue(cid, storage, 1)
        doAddCondition(cid, condition1)
        doAddCondition(cid, condition2)

        doPlayerRemoveItem(cid, coinID, triggerQuantity)
        SuperForm(cid, sexIndex)
    elseif (getPlayerStorageValue(cid, storage) == 1) then
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "usted no puede usar esto en su equipo!")
    else
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "usted no tienen suficientes monedas!")
    end
    return TRUE
end

function onDeEquip(cid, item, slot)
    return StopSuperForm(cid)
end