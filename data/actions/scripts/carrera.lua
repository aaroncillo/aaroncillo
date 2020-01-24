local function appear(pos)

	if getThingFromPos(pos).itemid ~= 1285 then
		doCreateItem(1285,1,pos)
		doSendMagicEffect(pos,45)
	end

end

function onUse(cid, item, fromPosition, itemEx, toPosition)
local posiciones = {
{x = 441, y = 592, z = 7, stackpos = 1},
{x = 441, y = 590, z = 7, stackpos = 1},
{x = 441, y = 588, z = 7, stackpos = 1},
{x = 441, y = 586, z = 7, stackpos = 1},
{x = 441, y = 584, z = 7, stackpos = 1}
}
-- POSICIONES DE LAS 5 ROCAS

doBroadcastMessage('CORRAN!', MESSAGE_EVENT_ADVANCE)

local seg = 10 -- SEGUNDOS PARA VOLVER A APARECER

	for i = 1,#posiciones do
		if getThingFromPos(posiciones[i]).itemid == 1285 then
			doSendMagicEffect(posiciones[i],46)
			doRemoveItem(getThingFromPos(posiciones[i]).uid)
			addEvent(appear,seg * 1000,posiciones[i])
		end
	end

	return TRUE
end