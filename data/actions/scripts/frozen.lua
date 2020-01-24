function onUse(cid, item, frompos, item2, topos)
if item.uid == 5953 then
queststatus = getPlayerStorageValue(cid,5953)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Frozen Starlight!.")
doPlayerAddItem(cid,2361,1 )
setPlayerStorageValue(cid,5953,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 