function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerStorageValue(cid,35966) < 1 then
if getPlayerLevel(cid) > 20 then
getPlayerStorageValue(cid, 35966)
doPlayerSendTextMessage(cid,22,"Ahora eres vip!! ahora puedes visitar mas lugares durante 1 semana!.")
setPlayerStorageValue(cid, 35966, (getPlayerStorageValue(cid,35966) + 7))
doRemoveItem(item.uid, 1)
doPlayerSendCancel(cid,"Necesitar Ser Nivel 20 o mas Para Poder Usar la Vip Flame.")
doRemoveItem(item.uid, 1)
 end
	else
doPlayerSendCancel(cid,"Ya eres Vip..")
	end	
return TRUE
end