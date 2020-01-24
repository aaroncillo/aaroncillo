function onUse(cid, item, frompos, item2, topos)

if item.uid == 9931 then
queststatus = getPlayerStorageValue(cid,9931)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox boots.")
coins_uid = doPlayerAddItem(cid,9931,1)
setPlayerStorageValue(cid,9931,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end