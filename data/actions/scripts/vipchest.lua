--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==13541 then
queststatus = getPlayerStorageValue(cid,13540)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"usted ya tiene su recompensa.")
 
else
doPlayerSendTextMessage(cid,22,"Usted recibio aceseso a vip permanentemente una Medalla para gays de Honor y una Blue Orb presente de Hoster Aggresor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5785,1)
coins_uid = doPlayerAddItem(cid,7632,1)
setPlayerStorageValue(cid,13540,1)
end
return 0
end
return 1
end
