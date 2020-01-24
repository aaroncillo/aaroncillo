function onUse(cid, item, frompos, item2, topos)
if item.uid == 10025 then
queststatus = getPlayerStorageValue(cid,10025)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Demon Backpack.")
doPlayerAddItem(cid,10025,1 )
setPlayerStorageValue(cid,10025,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 