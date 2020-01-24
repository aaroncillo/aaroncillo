--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==10531 then
queststatus = getPlayerStorageValue(cid,10531)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"You found a item")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,10531,1)
setPlayerStorageValue(cid,10531,1)
end
return 0
end
return 1
end
