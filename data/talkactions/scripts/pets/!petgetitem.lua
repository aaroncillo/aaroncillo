dofile("./petConfig. lua")


function onSay(cid, words, param)
local daPet = getPlayerStorageValue(cid, storages.petUid)
if isCreature(daPet) == 1 then
if param ~= "" then
param = tonumber(param)
if type(param) == "number" then
if param <= maxItems then
if getPlayerStorageValue(cid, petItems[param]) ~= 0 and getPlayerStorageValue(cid, petItems[param]) ~= -1 then
doPlayerAddItem(cid, getPlayerStorageValue(cid, petItems[param]), 1)
doCreatureSay(daPet, 'Here is your ' .. getItemName(getPlayerStorageValue(cid, petItems[param])) .. '', TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, petItems[param], 0)
end
end
end
end
end
return FALSE
end