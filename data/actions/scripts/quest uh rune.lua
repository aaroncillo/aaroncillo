function onUse(cid, item, frompos, item2, topos)

if item.uid == 2273 then
queststatus = getPlayerStorageValue(cid,2273)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una UH.")
coins_uid = doPlayerAddItem(cid,2273,1)
setPlayerStorageValue(cid,2273,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end