--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12605 then
queststatus = getPlayerStorageValue(cid,12605)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Solo una.")
 
else
doPlayerSendTextMessage(cid,22,"Encontraste Royal shield.")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12605,1)
setPlayerStorageValue(cid,12605,1)
end
return 0
end
return 1
end
