function onUse(cid, item, frompos, item2, topos)

if item.uid == 2276 then
queststatus = getPlayerStorageValue(cid,2276)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una mr.")
coins_uid = doPlayerAddItem(cid,2276,1)
setPlayerStorageValue(cid,2276,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end