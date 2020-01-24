function onSay(cid, words, param, channel)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "tu tienes " .. getPlayerMoney(cid) .. " gold.")
	return TRUE
end
