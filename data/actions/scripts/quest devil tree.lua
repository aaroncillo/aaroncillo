function onUse(cid, item, frompos, item2, topos)

if item.uid == 6132 then
queststatus = getPlayerStorageValue(cid,6132)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una DSM.")
coins_uid = doPlayerAddItem(cid,6132,1)
setPlayerStorageValue(cid,6132,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end