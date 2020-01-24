-- Config --
local skillTries = 10 -- Number of tries per skill
local t = 2 * 1000 -- Set the time before try is added to skills
local lock = 10 -- Time to wait before start again in seconds
 
-- Weapon Types --
local weaponTypes = {
    { 1, 2 }, -- Sword
    { 2, 1 }, -- Club
    { 3, 3 }, -- Axe
    { 4, 5 }, -- Shield
    { 5, 4 } -- Distance
}
 
function onStepIn(cid, item, pos, fromPos)
    local p = {cid = cid, item = item, pos = pos}
    if getPlayerStorageValue(p.cid, 18010) == 2 then
        doTeleportThing(p.cid, fromPos, TRUE)
        doPlayerSendTextMessage(p.cid,22,"You must wait "..lock.." seconds before you start again")
        return false
    end
    setPlayerStorageValue(p.cid, 18010, 1)
    if isPlayer(p.cid) and p.item.actionid == 900 then
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
    addEvent(trainLock, lock * 1000, cid)
    doPlayerSendTextMessage(cid,22,"Your training session has now ended")
    return true
end
function trainLock (cid)
    if isPlayer(cid) then
        setPlayerStorageValue(cid, 18010, 0)
    end
end
function trainMe(p)
    if isPlayer(p.cid) and getPlayerStorageValue(p.cid, 18010) == 1 and p.item.actionid == 900 then
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
 
        doSendMagicEffect(getPlayerPosition(p.cid),34)
 
        addEvent(trainMe, t, p)
    end
    return true
end
