--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12604 then
queststatus = getPlayerStorageValue(cid,12604)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a item")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12604,1)
setPlayerStorageValue(cid,12604,1)
end
return 0
end
return 1
end
