local function tameMonster(cid, item, itemEx, tame, run, broken)
    n = math.random(100)
    if n <= broken then
        doCreatureSay(cid, "Lost item", TALKTYPE_ORANGE_1)
        doRemoveItem(item.uid)
    elseif n > broken and n <= (tame+broken) then
        doRemoveItem(item.uid)
        doCreatureSay(cid, "You tamed", TALKTYPE_ORANGE_1)
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You tamed "..getCreatureName(itemEx.uid)..".")
        return true
    elseif n > (tame+broken) and n <= (tame+broken+run) then
        doCreatureSay(cid, "Fled", TALKTYPE_ORANGE_1)
        doRemoveCreature(itemEx.uid)
    else
        doCreatureSay(cid, "Try again", TALKTYPE_ORANGE_1)
    end
    return false
end
local function inArray(table, value)
    for i,v in pairs(table) do
        if (v.name == string.lower(value)) then
            return i
        end
    end
    return 0
end
local mounts = {
    {item = 13322, name = "wailing widow", id = 1,             tame=10, run=39, broken=51},
    {item = 13313, name = "terror bird", id = 2,             tame=10, run=39, broken=51},
    {item = 5907, name = "bear", id = 3,                 tame=7, run=39, broken=54},
    {item = 13310, name = "black sheep", id = 4,             tame=7, run=35, broken=58},
    {item = 13308, name = "midnight panther", id = 5,         tame=10, run=39, broken=51},
    {item = 13309, name = "draptor", id = 6,                 tame=10, run=39, broken=51},
    {item = 13320, name = "crustacea gigantica", id = 7,     tame=10, run=39, broken=51},
    {item = 13262, name = "boar", id = 10,                     tame=10, run=39, broken=51},
    {item = 13306, name = "undead cavebear", id = 12,         tame=10, run=39, broken=51}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if isCreature(itemEx.uid) then
        if inArray(mounts, getCreatureName(itemEx.uid)) > 0 then
            i = inArray(mounts, getCreatureName(itemEx.uid))
            if item.itemid == mounts[i].item and not getPlayerMount(cid, mounts[i].id) then
                if tameMonster(cid, item, itemEx, mounts[i].tame, mounts[i].run, mounts[i].broken) then
                    doSendMagicEffect(fromPosition, CONST_ME_MAGIC_BLUE)
                    doRemoveCreature(itemEx.uid)
                    doPlayerAddMount(cid, mounts[i].id)
                else
                    doSendMagicEffect(toPosition, CONST_ME_POFF)
                end
            end
        end
    end
    return true
end