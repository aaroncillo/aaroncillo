local storages = {isMoving = 12550, direction = 12551, speed = 12552}
 
function onSay(cid, words, param)
	local status = 
	{
	    isMoving = getPlayerStorageValue(cid, storages.isMoving),
	    direction = getPlayerStorageValue(cid, storages.direction),
	    speed = getPlayerStorageValue(cid, storages.speed)
	}
	local controls = 
	{
	    ["arriba"] = {storage = storages.direction, new = 3, txt = "up"},
	    ["abajo"] = {storage = storages.direction, new = 4, txt = "down"}, 
	    ["izquierda"] = {storage = storages.direction, new = 1, txt = "left"}, 
	    ["derecha"] = {storage = storages.direction, new = 2, txt = "right"},
	    ["velocidadalta"] = {storage = storages.speed, new = status.speed-50, txt = "fast"},
	    ["velocidadbaja"] = {storage = storages.speed, new = status.speed+50, txt = "slow"},
	    ["para"] = {storage = storages.direction, new = -1, txt = "stop"}
	}
	if status.isMoving == 1 then
	    local ctrl = controls[param]
	    if (ctrl ~= nil) then
	        setPlayerStorageValue(cid, ctrl.storage, ctrl.new)
	        doCreatureSay(cid, ctrl.txt, TALKTYPE_SAY)
	    else
	        doSendMagicEffect(getPlayerPosition(cid), 2)
	        doPlayerSendCancel(cid, "Invalid operation.")
	    end
	else
		doPlayerSendCancel(cid, "You are not in a car.")
	end
	return TRUE
end