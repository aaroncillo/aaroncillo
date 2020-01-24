local minlevel = 400
local price = 10
 
function onSay(cid, words, param, channel)
	if(param=="") then
	doPlayerSendTextMessage(cid,4,"Invalid Param Specified")
		return TRUE
	end
 
	if getPlayerLevel(cid) < minlevel then
	doCreatureSay(cid, 'You Need Level ' .. minlevel .. ' To Broadcast.', TALKTYPE_ORANGE_1, false, cid)
 
	elseif getPlayerMoney(cid) < price then
	doCreatureSay(cid, 'You Dont Have ' .. price .. ' To Broadcast.', TALKTYPE_ORANGE_1, false, cid)
	else
doPlayerSendTextMessage(cid,22,"Broadcast Successfull and Cost You 100 gold coins")
doPlayerRemoveMoney(cid, price)
		broadcastMessage(getPlayerName(cid) .. " [" .. getPlayerLevel(cid) .. "]: " .. param, MESSAGE_STATUS_WARNING)
 
		doPlayerSendTextMessage(cid, 22, "!b \"" .. param)
	end
end
