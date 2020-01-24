function onUse(cid, item, frompos, item2, topos)

if item.uid == 8880 then
queststatus = getPlayerStorageValue(cid,8880)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Razgos zec armor.")
coins_uid = doPlayerAddItem(cid,8880,1)
setPlayerStorageValue(cid,8880,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end