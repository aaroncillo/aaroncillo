function onUse(cid, item, frompos, item2, topos)

if item.uid == 8909 then
queststatus = getPlayerStorageValue(cid,8909)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox rainbow shield.")
coins_uid = doPlayerAddItem(cid,8909,1)
setPlayerStorageValue(cid,8909,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end