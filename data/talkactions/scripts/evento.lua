function onSay(cid, words, param)
local posx = getGlobalStorageValue(75311)
local posy = getGlobalStorageValue(75312)
local posz = getGlobalStorageValue(75313)

local evtpos = {x=posx, y=posy, z=posz}

if words == '!participar' then

if getGlobalStorageValue(75310) ~= 9 then
doPlayerSendCancel(cid,'No hay eventos en este momento.')
else
doTeleportThing(cid,evtpos)
end -- END Verifica si el evento esta abierto
elseif words == '/evtx' then
if getPlayerAccess(cid) >= 3 then
setGlobalStorageValue(75311, param)
else
doPlayerSendCancel(cid,'Usted nesesita ser GM.')
end -- END ACCESS
elseif words == '/evty' then
if getPlayerAccess(cid) >= 3 then
setGlobalStorageValue(75312, param)
else
doPlayerSendCancel(cid,'Usted nesesita ser GM.')
end -- END ACCESS
elseif words == '/evtz' then
if getPlayerAccess(cid) >= 3 then
setGlobalStorageValue(75313, param)
else
doPlayerSendCancel(cid,'Usted nesesita ser GM.')
end -- END ACCESS

elseif words == '/powerevent' then
if param == 'on' then
if getPlayerAccess(cid) >= 3 then
setGlobalStorageValue(75310, 9)
else
doPlayerSendCancel(cid,'Usted nesesita ser GM.')
end -- END ACCESS
elseif param == 'off' then
if getPlayerAccess(cid) >= 3 then
setGlobalStorageValue(75310, 0)
else
doPlayerSendCancel(cid,'Usted nesesita ser GM.')
end -- END ACCESS
end -- PARAM

end -- END IF
end -- END SCRIPT