function onLogin(cid)
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "Online!", TEXTCOLOR_ORANGE)
	return TRUE
end