function onUse(cid, item, fromPosition, itemEx, toPosition)
	local exhaust = getPlayerStorageValue(cid, 66660) + 300
	if (os.time() >= exhaust) then
		setPlayerStorageValue(cid, 66660, os.time())
		doSendMagicEffect(toPosition, CONST_ME_GIFT_WRAPS)
		doPlayerSendTextMessage(cid, 22, 'Ahora est� usando un cond�n para pr�ximos 5 minutos.')
		doRemoveItem(item.uid, 1)
	else
		doPlayerSendCancel(cid, 'Usted ya est� seguro para el sexo!')
	end
	return TRUE
end