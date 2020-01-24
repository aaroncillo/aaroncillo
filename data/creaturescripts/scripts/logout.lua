dofile("./petConfig.lua")

function onLogout(cid)
if isCreature(getPlayerStorageValue(cid, storages.petUid)) == 1 then
if getPlayerStorageValue(cid, storages.petIsOnline) == 2 then
setPlayerStorageValue(cid, storages.petIsOnline, 1)
end
end
return TRUE
end