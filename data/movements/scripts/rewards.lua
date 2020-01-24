local rewards = {10571, 2138, 6567, 10576, 8300, 8205, 10531, 5468, 12603, 12604, 12605, 12606, 12607, 12608, 12609, 12610}
function onStepIn(cid, item, position, fromPosition)
--item.actionid > 1000 then
--item.itemid == 426 then
	doCreatureSay(cid, item.actionid, TALKTYPE_ORANGE_1)
	local pos=item.actionid-6002
	doCreatureSay(cid, pos, TALKTYPE_ORANGE_1)
	item=rewards[pos]
	local itemWeight = getItemWeightById(item, 1, FALSE)
	local playerCap = getPlayerFreeCap(cid)
	if playerCap >= itemWeight then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Elegiste: ' .. getItemNameById(item) .. '.')
		doPlayerAddItem(cid, item, 1)
		doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)), TRUE)
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Elegiste: ' .. getItemNameById(item) .. ' pero pesa ' .. itemWeight .. ' oz necesitas mas cap.')
		doTeleportThing(cid, {x=160, y=54, z=7}, TRUE)
	end

	return TRUE
end

function onStepOut(cid, item, position, fromPosition)
	
	return TRUE
end
