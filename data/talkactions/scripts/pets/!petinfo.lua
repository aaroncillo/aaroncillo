dofile("./petConfig.lua" )
function onSay(cid, words, param)

local daPet = getPlayerStorageValue(cid, storages.petUid)
if isCreature(daPet) == 1 then
if param ~= nil then
if string.len(param) < lenght then 
doCreatureSay(daPet, '' .. param .. '', TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'No more than ' .. lenght .. ' character. ')
end
else
doPlayerSendCancel(cid, 'You must enter a text')
end 
else
doPlayerSendCancel(cid, 'You haven\'t call your pet!')
end 
return FALSE
end