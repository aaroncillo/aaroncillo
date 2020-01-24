function onUse(cid, item, fromPosition, itemEx, toPosition)
 
if (getPlayerStorageValue(cid, 9812) == -1) then
	for i = 1, #maleOutfits do
		doPlayerAddOutfit(cid, maleOutfits[i], 3)
	end
	for i = 1, #femaleOutfits do
		doPlayerAddOutfit(cid, femaleOutfits[i], 3)
	end
	setPlayerStorageValue(cid, 9182, 1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have found a all addons.")
else
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "The chest is empty.")
end
 
return TRUE
end