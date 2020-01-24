function onUse(cid, item2, fromPosition, itemEx, toPosition)
if(itemEx.itemid == 1499) then
		doSendMagicEffect(toPosition, CONST_ME_WATERSPLASH)
		doRemoveItem(itemEx.uid)
		doSendAnimatedText(toPosition, 'Chingaste.', TEXTCOLOR_LIGHTGREEN)
		return true
	else
	
		doSendMagicEffect(getPlayerPosition(cid), 2)
		doSendAnimatedText(toPosition, 'Noob!', TEXTCOLOR_RED)
		doPlayerSendCancel(cid, 'Tas pendejo aqui no xD.')
	end
	return TRUE
end
