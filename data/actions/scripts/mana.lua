function onUse(cid, item, frompos, item2, topos)
	mag = getPlayerMagLevel(cid)
	if mag >= 0 then
		doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_WHITE)
		doPlayerAddMana(cid, math.random(25000, 50000))
		doSendMagicEffect(topos, 1)

		if item.type > 1 then
			doChangeTypeItem(item.uid,item.type-1)
		else
			doRemoveItem(item.uid,1)
		end
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
	end
	
	return 1
end