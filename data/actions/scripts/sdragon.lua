function onUse(cid, item, frompos, item2, topos)
if item.uid == 5955 then
queststatus = getPlayerStorageValue(cid,5955)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Stuffed Dragon!.")
doPlayerAddItem(cid,5791,1 )
setPlayerStorageValue(cid,5955,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 