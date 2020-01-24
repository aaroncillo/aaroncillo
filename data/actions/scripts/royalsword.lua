--Encontraste una Royal sword
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==12610 then
queststatus = getPlayerStorageValue(cid,12610)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This chest is empty")
 
else
doPlayerSendTextMessage(cid,22,"You found a royal sword")
doSendMagicEffect(topos,36)
coins_uid = doPlayerAddItem(cid,12610,1)
setPlayerStorageValue(cid,12610,1)
end
return 0
end
return 1
end
