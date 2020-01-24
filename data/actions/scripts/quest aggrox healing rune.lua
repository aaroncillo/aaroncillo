function onUse(cid, item, frompos, item2, topos)

if item.uid == 2281 then
queststatus = getPlayerStorageValue(cid,2281)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox healing rune.")
coins_uid = doPlayerAddItem(cid,2281,1)
setPlayerStorageValue(cid,2281,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end