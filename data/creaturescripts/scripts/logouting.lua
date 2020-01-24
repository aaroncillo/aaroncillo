function onLogout (cid)
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "Bye", TEXTCOLOR_GREEN)
    return TRUE
end