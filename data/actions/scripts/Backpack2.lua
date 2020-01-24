--Chupalo
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==10518 then
queststatus = getPlayerStorageValue(cid,)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Wena CTM!")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,10518,1)
setPlayerStorageValue(cid,,1)
end
return 0
end
return 1
end
