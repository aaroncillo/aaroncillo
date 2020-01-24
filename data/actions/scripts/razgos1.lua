--wena
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==2480 then
queststatus = getPlayerStorageValue(cid,)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Wena QL!")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2480,1)
setPlayerStorageValue(cid,,1)
end
return 0
end
return 1
end
