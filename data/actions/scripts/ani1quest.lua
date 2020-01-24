-- annihilator chests
function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 5555 then
   		queststatus = getPlayerStorageValue(cid,5555)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "as sacado la Smr.")
   			doPlayerAddItem(cid,2270,1)
   			setPlayerStorageValue(cid,5555,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5556 then
   		queststatus = getPlayerStorageValue(cid,5556)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "as sacado la razgos armor.")
   			doPlayerAddItem(cid,8880,1)
   			setPlayerStorageValue(cid,5556,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5557 then
   		queststatus = getPlayerStorageValue(cid,5557)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "as sacado la carlin sword.")
   			doPlayerAddItem(cid,2395,1)
   			setPlayerStorageValue(cid,5557,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5558 then
   		queststatus = getPlayerStorageValue(cid,5558)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "as sacado la super arrows.")
   			doPlayerAddItem(cid,7839,1)
   			setPlayerStorageValue(cid,5558,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end