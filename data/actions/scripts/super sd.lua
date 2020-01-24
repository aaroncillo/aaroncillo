--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2299 then
queststatus = getPlayerStorageValue(cid,2299)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"super sd")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2299,1)
setPlayerStorageValue(cid,2299,1)
end
return 0
end
return 1
end
