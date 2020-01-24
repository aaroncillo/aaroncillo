local notAllowed = {"Ferumbras", "Demon"}
local storage = {
    status = 15244,
    pokeName = 15212
}
local actionid_used = 7510
 
function onUse(cid, item, fromPos, item2, toPos)
    local pokeballStatus = getPlayerStorageValue(cid, storage.status)
    local pokeName = getPlayerStorageString(cid, storage.pokeName)
    pos = getPlayerPosition(cid) pos.stackpos = 0
    if getTilePzInfo(toPos) == 0 and getTilePzInfo(pos) == 0 then
        if pokeballStatus <= 0 then
            toPos.stackpos = 253
            local pokeThing = getThingfromPos(toPos)
            if isCreature(pokeThing.uid) == TRUE then
                if isPlayer(pokeThing.uid) == FALSE then
                    local pokename_ = getCreatureName(pokeThing.uid)
                    if item.actionid ~= actionid_used then
                    --    local maxHealth = 400
                    --    local creatureHealth = getCreatureHealth(pokeThing.uid)
                    --    local divNum = (string.len(maxHealth)-1)^2
                    --    local result = math.floor((creatureHealth/divNum)/10)
                    --    local chance = math.random(1, math.random(4, math.random(7, math.max(result, 7))))
                    --    if chance == result then
                            if isInTable(notAllowed, pokename_) == TRUE then
                                doPlayerSendCancel(cid, "You cannot catch this creature")
                            else
                                setPlayerStorageString(cid, storage.pokeName, pokename_)
                                doRemoveCreature(pokeThing.uid)
                                doSendDistanceShoot(fromPos, toPos, 37)
                                setPlayerStorageValue(cid, storage.status, 1)
                                doSetItemSpecialDescription(item.uid, "it contains a " .. pokename_ .. ".")
                                doSetItemActionId(item.uid, actionid_used)
                            end
                    --    else
                    --        doSendMagicEffect(fromPos, 2)
                    --        doPlayerSendCancel(cid, "The Pokemom Escaped")
                    --    end
                    elseif item.actionid == actionid_used and pokename_  == pokeName then
                        doCreatureSay(cid, pokeName .. " Back!!", TALKTYPE_SAY)
                        doRemoveCreature(pokeThing.uid)
                        doSetItemSpecialDescription(item.uid, "it contains a " .. pokename_ .. ".")
                        setPlayerStorageValue(cid, storage.status, 1)
                        doSendDistanceShoot(fromPos, toPos, 37)
                    else
                        doSendMagicEffect(fromPos, 2)
                        doPlayerSendCancel(cid, "This pokeball is already used")
                    end
                else
                    doPlayerSendCancel(cid, "You cannot catch this creature")
                end
            else
                doPlayerSendCancel(cid, "Creature not found")
            end
        elseif pokeballStatus == 1 then
        --    summons = getCreatureSummons(cid)
        --    if #summons >= 2 then
        --        doPlayerSendCancel(cid, "You cannot call more pokemons")
        --    else
                doConvinceSummon(cid, pokeName, 0, toPos)
                doSendDistanceShoot(fromPos, toPos, 37)
                doCreatureSay(cid, pokeName .. " Go!!", TALKTYPE_SAY)
                setPlayerStorageValue(cid, storage.status, 0)
                doSetItemSpecialDescription(item.uid, "it is empty.")
        --    end
        end
    else
        doPlayerSendCancel(cid, "You cannot use pokeballs in protection zone.")
    end
    return 1
end 
 
function isInTable(t, val)
    for _, v in pairs(t) do
        if v == val then
            return TRUE
        end
    end
    return LUA_ERROR
end  