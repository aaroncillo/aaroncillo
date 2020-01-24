--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12391 then
queststatus = getPlayerStorageValue(cid,12391)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Encontraste Royal star.")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12391,1)
setPlayerStorageValue(cid,12391,1)
end
return 0
end
return 1
end
