function onUse(cid, item, frompos, item2, topos)

if item.uid == 2195 then
queststatus = getPlayerStorageValue(cid,2195)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una DSM.")
coins_uid = doPlayerAddItem(cid,2195,1)
setPlayerStorageValue(cid,2195,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end
