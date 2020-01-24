function onSay(cid, words, param)

local posx = getGlobalStorageValue(75311)
local posy = getGlobalStorageValue(75312)
local posz = getGlobalStorageValue(75313)
 
local evtpos = {x=998, y=483, z=7}
 
	if words == '!player' then
		if getGlobalStorageValue(75310) ~= 9 then
                doPlayerPopupFYI(cid, "No ahi eventos por el momento.")
		else	
			doTeleportThing(cid,evtpos)
		end
	elseif words == '/eventx' then
		if getPlayerAccess(cid) >= 3 then
			setGlobalStorageValue(75311, param)
		else
			doPlayerSendCancel(cid,'You not have access for use this command.')
		end
	elseif words == '/eventy' then
		if getPlayerAccess(cid) >= 3 then
			setGlobalStorageValue(75312, param)
		else
		doPlayerSendCancel(cid,'You not have access for use this command.')
		end
	elseif words == '/eventz' then
		if getPlayerAccess(cid) >= 3 then
			setGlobalStorageValue(75313, param)
		else
			doPlayerSendCancel(cid,'You not have access for use this command.')
		end
	elseif words == '/player' then
		if param == 'on' then
			if getPlayerAccess(cid) >= 3 then
				setGlobalStorageValue(75310, 9)
                                     doTeleportThing(cid,evtpos)
									 doBroadcastMessage(' '.. getCreatureName(cid) ..' Ha ACTivado el concurso de: player para entrar di: !player', MESSAGE_EVENT_ADVANCE)
                else
                        doPlayerSendCancel(cid,'You not have access for use this command.')
                end
                elseif param == 'off' then
                        if getPlayerAccess(cid) >= 3 then
                                setGlobalStorageValue(75310, 0)
doBroadcastMessage(' '.. getCreatureName(cid) ..' Ha DESactivado el concurso de: player', MESSAGE_EVENT_ADVANCE)
                else
                        doPlayerSendCancel(cid,'You not have access for use this command.')
                        end
end
 
end
return TRUE
end