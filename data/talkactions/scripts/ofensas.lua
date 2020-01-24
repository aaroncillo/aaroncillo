function onSay(cid, words, param)
local playerpos = getPlayerPosition(cid)
 
if math.max(math.abs(playerpos.x-23), math.abs(playerpos.y-30)) < 9999 then
doSendAnimatedText(playerpos, "SelfOwned!" , math.random(1, 255))
doSetMonsterOutfit(cid, "Rat", 10*1000)
return 0
end
return 1
end

