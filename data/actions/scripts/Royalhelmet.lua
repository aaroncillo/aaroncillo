--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12606 then
queststatus = getPlayerStorageValue(cid,12606)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a item")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12606,1)
setPlayerStorageValue(cid,12606,1)
end
return 0
end
return 1
end
