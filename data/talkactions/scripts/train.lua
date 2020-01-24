local storage = 242526
local directions = 
	{
	    ["up"] = {new = 3, name = "Up"},
	    ["down"] = {new = 4, name = "Down"}, 
	    ["left"] = {new = 1, name = "Left"}, 
	    ["right"] = {new = 2, name = "Right"},
	    ["stop"] = {new = 0, name = "Stop"}
	} 
function onSay(cid, words, param)
	local ndir = directions[param]
	if (ndir ~= nil) then
		setPlayerStorageValue(cid, storage, ndir.new)
		doCreatureSay(cid, ndir.name, TALKTYPE_SAY)
		doPlayerSendTextMessage(cid,22,"New Direction Set, your new direction is " .. ndir.name .. ".")
	else
		doSendMagicEffect(getPlayerPosition(cid), 2)
		doPlayerSendCancel(cid, "Invalid dirextion.")
	end
	return TRUE
end