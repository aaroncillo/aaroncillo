function onSay(cid, words, param)
local counsellor = 1 --Access to use the Command
local time = -1 --Infinity time at the moment
if getPlayerGroupId(cid) >= counsellor then
if param ~= "" then
doSetMonsterOutfit(cid, param, time)
doPlayerSendTextMessage(cid, 25, "You have changed your outfit to a ".. param ..".")
else
doPlayerSendCancel(cid,"You need to use the right name for the outfit.")
end
else
doPlayerSendCancel(cid,"You cannot execute this command.")
end
return FALSE
end
