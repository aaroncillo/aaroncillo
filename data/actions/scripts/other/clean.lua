function onUse(cid, item, fromPosition, item2, toPosition)
if getPlayerAccess(cid) > 2 then
    if toPosition.stackpos ~= 0 then
        local rem_item = getThingFromPos(toPosition)
        if isCreature(rem_item.uid) == TRUE then
            doRemoveCreature(rem_item.uid)
        elseif rem_item.type > 1 then
            doRemoveItem(rem_item.uid,rem_item.type)
            doPlayerSendTextMessage(cid,22,"Haz removido algunos items.")
        else
            doRemoveItem(rem_item.uid,1)
            doPlayerSendTextMessage(cid,22,"Haz removido un item.")
        end
        doSendDistanceShoot(fromPosition, toPosition, 37)
        doSendMagicEffect(toPosition,2)
        doCreatureSay(cid, "Fui yo: "..getCreatureName(cid), TALKTYPE_ORANGE_1)
    else
        doPlayerSendTextMessage(cid,22,"No se encuentra nada.")
    end
else
    doPlayerSendTextMessage(cid,22,"Solo gente con acceso puede usar esta runa.")
end
return TRUE
end