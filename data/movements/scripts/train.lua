-- Config --
local skillTries = 10 -- Number of tries per skill
local t = 5 * 1000 -- Set the time before try is added to skills
local lock = 0 -- Time to wait before start again in seconds

-- Weapon Types --
local weaponTypes = {
{ 1, 2 }, -- Sword
{ 2, 1 }, -- Club
{ 3, 3 }, -- Axe
{ 5, 5 }, -- Shield
{ 4, 4 } -- Distance
}


function onStepIn(cid, item, pos, fromPos)
    local p = {cid = cid, item = item, pos = pos}

    setPlayerStorageValue(p.cid, 18010, 1)
    if isPlayer(p.cid) and p.item.actionid == 9094 then
        doPlayerSendTextMessage(p.cid,22,"Your training session will now begin")
        addEvent(trainMe, t, p)
    end
    return true
end
function onStepOut(cid, item)
    if getPlayerStorageValue(cid, 18010) == 2 then
        return false
    end
    setPlayerStorageValue(cid, 18010, 2)
    doPlayerSendTextMessage(cid,22,"Your training session has now ended")
    return true
end
function trainMe(p)
    if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 and p.item.actionid == 9094 then
        local weaponLeft = getPlayerSlotItem(p.cid, CONST_SLOT_LEFT)
        local weaponRight = getPlayerSlotItem(p.cid, CONST_SLOT_RIGHT)
        if weaponLeft.itemid ~= 0 then
            weaponLeft = getItemWeaponType(weaponLeft.uid)
        end
        if weaponRight.itemid ~= 0 then
            weaponRight = getItemWeaponType(weaponRight.uid)
        end
        for _, t in pairs(weaponTypes) do
            if t[1] == weaponLeft or t[1] == weaponRight then            
                doPlayerAddSkillTry(p.cid, t[2], skillTries)
            end
        end
        manaspent = getPlayerMana(p.cid)
        doPlayerAddSpentMana(p.cid, manaspent)
        doTargetCombatMana(0, p.cid, -manaspent, -manaspent, CONST_ME_NONE)
        doPlayerAddMana(p.cid, 5000)

        doSendMagicEffect(getPlayerPosition(p.cid),30)
    
        addEvent(trainMe, t, p)
    end
    return true
end  