--[[INFO
Perfect clean rune 100% by Colandus
This rune will have a bigger area, the more charges the rune has.
The maximum amount of charges (counted) is 4. I don't recommend you to change it (higher)!
The rune removes all items on the tile (not only the top item), also it removes items under players :D
The rune cannot be used on inventory.
]]--
 
-- >>CONFIG<< --
local groupIdToUse = 4 -- Enter the minimum groupid needed to use the rune (Do not let players and maybe even tutors be able to use this rune)
-- >>CONFIG<< --
 
local thingPos, getThing, area, removedItems, removeStatus, getPos
function onUse(cid, item, frompos, item2, topos)
	removedItems = 0
	if getPlayerGroupId(cid) >= groupIdToUse then
		if topos.x ~= 65535 and topos.x ~= 31 and topos.y ~= 31 then
			area = math.min(item.type - 1, 3)
			for xCheck = topos.x-area, topos.x+area do
				for yCheck = topos.y-area, topos.y+area do
					thingPos = {x=xCheck, y=yCheck, z=topos.z, stackpos=255}
					removeStatus = 0
					if isCreature(getThingfromPos(thingPos).uid) == 1 then
						print(thingPos.stackpos)
						thingPos.stackpos = 2
					end
					while getThingfromPos(thingPos).itemid > 1 do
						doRemoveItem(getThingfromPos(thingPos).uid, math.max(getThingfromPos(thingPos).type, 1))
						removedItems = removedItems + 1
						removeStatus = 1
					end
					if removeStatus == 1 then
						doSendMagicEffect(thingPos, 14)
					else
						doSendMagicEffect(thingPos, 2)
					end
				end
			end
			if removedItems > 0 then
				doPlayerSendTextMessage(cid, 24, "Amount of removed items: " .. removedItems)
			end
		else
			doPlayerSendCancel(cid, "Sorry, not possible.")
		end
		return 1
	else
		return 0
	end
end