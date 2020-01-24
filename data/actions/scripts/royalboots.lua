--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12607 then
queststatus = getPlayerStorageValue(cid,12607)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"you found a item")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12607,1)
setPlayerStorageValue(cid,12607,1)
end
return 0
end
return 1
end
