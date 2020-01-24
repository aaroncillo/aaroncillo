function onUse(cid, item, frompos, item2, topos)
if item.uid == 5956 then
queststatus = getPlayerStorageValue(cid,5956)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma backpack of holding!.")
doPlayerAddItem(cid,2365,1)
setPlayerStorageValue(cid,5956,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 