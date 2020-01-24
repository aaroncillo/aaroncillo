--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2267 then
queststatus = getPlayerStorageValue(cid,2267)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22," ya chingaste")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2267,1)
setPlayerStorageValue(cid,2267,1)
end
return 0
end
return 1
end
