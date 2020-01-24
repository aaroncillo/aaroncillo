--credits to jordanhenry from otfans, do not redistribute without permission.
local CAR_ID = {1675, 1676, 1674, 1677}
function onStepIn(cid, item, pos, frompos)
    if isPlayer(cid) == TRUE then
        if item.actionid <= 100 or item.actionid == getPlayerAccountId(cid)+100 then
            local carpos = getThingPos(item.uid)
            addEvent(carMove, 200, {cid = cid, oldpos = carpos})
            doItemSetAttribute(item.uid, "aid", getPlayerAccountId(cid)+100)
            doItemSetAttribute(item.uid, "description", "This vehicle belongs to "..getCreatureName(cid)..".")
        else
            doPlayerSendCancel(cid, "This vehicle does not belong to you.")
            doSendMagicEffect(pos, CONST_ME_POFF)
        end
    end
end
 
function carMove(param)
    local car = getThingfromPos(param.oldpos)
    local newpos = getPlayerLookPos(param.cid)
    if getDistanceBetween(getThingPos(param.cid), param.oldpos) == 0 and car.actionid == getPlayerAccountId(param.cid)+100 then
        if isInArray(CAR_ID, car.itemid) == true then
            local tmp = newpos
            tmp.stackpos = 253
            if doTileQueryAdd(car.uid, newpos) == 1 and getTilePzInfo(newpos) == FALSE and isCreature(getThingFromPos(tmp).uid) == FALSE then
                local carid = CAR_ID[getPlayerLookDir(param.cid)+1]
                local newcar = doCreateItem(carid, 1, newpos)
                doItemSetAttribute(newcar, "aid", car.actionid)
                doItemSetAttribute(newcar, "description", car.description)
                doRemoveItem(car.uid, 1)
                doTeleportThing(param.cid, newpos, FALSE)
                doSendMagicEffect(param.oldpos, CONST_ME_GROUNDSHAKER)
            end
        end
    end
    return true
end