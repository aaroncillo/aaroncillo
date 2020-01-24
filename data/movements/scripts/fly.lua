---Script by mock the bear
function doCopyItem(item,pos) 
	for i=1,6 do
		pos.z = pos.z+1
		if hasSqm(pos) and getSqmId(pos).itemid ~= 10217 then
				local i = doCreateItem(item.itemid,item.type,pos)
				if item.actionid ~= 0 then
					doSetItemActionid(i,item.actionid)
				end
				doSendMagicEffect(pos,9)
				return i
		else
			local p2 = {x=pos.x+1,y=pos.y+1,z=pos.z}
			doSendDistanceShoot(pos,p2,40)
			doSendMagicEffect(pos,2)
		end
	end
end
function onAddItem(item,pos,k) 
  doCopyItem(item,k)
  doRemoveItem(item.uid,item.type == 0 and 1 or item.type)
end
function onStepIn(cid, item, position, fromPosition) 
	local dir = {
	[30004] = {0,6,7},
	[30007] = {7,0,6,1,5},
	[30008] = {1,5,7},
	[30009] = {5,4,2,1,7},
	[30006] = {2,5,4},
	[30003] = {4,3,6,2,5},
	[30002] = {3,4,6},
	[30001] = {6,0,7,3,4},
	}
	if isPlayer(cid) then
		local chkps = {x=position.x,y=position.y,z=position.z}
		local ig = false
		for i,b in pairs(dir[item.actionid]) do
			local nw = getPosByDir(chkps,b)
			local g = getTileThingByPos(nw)
			if hasSqm3(nw) or g.itemid == CONST_FLYVOID or nw.x < 35 or nw.y < 35 then
				ig = true
				break
			end
		end
		if not ig then
			deletarEmVolta(fromPosition)
			gerarEmVolta(getCreaturePosition(cid))
		else
			doTeleportThing(cid,fromPosition,false)
			doPlayerSendTextMessage(cid,27, "Lo siento, no puedes volar aqui.")
		end
	end
end
function onStepOut(cid, item, position, fromPosition,q)
	addEvent(function(pos) if fly.checkAround(pos) then deletarEmVolta(pos) end end,10000,position)
end
