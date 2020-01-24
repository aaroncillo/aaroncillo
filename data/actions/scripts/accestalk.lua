function onUse(cid, item, fromPosition, itemEx, toPosition)
setPlayerStorageValue(cid, 11551, 3)
doSendMagicEffect(getPlayerPosition(cid), 23)
doPlayerSendTextMessage(cid,22,"Ahora tienes acceso a los comandos !tp para ver los destinos solo di: !tp list.")
doRemoveItem(item.uid, 1)
return TRUE
end
