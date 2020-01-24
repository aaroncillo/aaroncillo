--pichula
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8892 then
queststatus = getPlayerStorageValue(cid,)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Felicidades!")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8892,1)
setPlayerStorageValue(cid,,1)
end
return 0
end
return 1
end
