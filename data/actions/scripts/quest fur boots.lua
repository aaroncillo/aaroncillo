function onUse(cid, item, frompos, item2, topos)

if item.uid == 7457 then
queststatus = getPlayerStorageValue(cid,7457)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una DSM.")
coins_uid = doPlayerAddItem(cid,7457,1)
setPlayerStorageValue(cid,7457,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end