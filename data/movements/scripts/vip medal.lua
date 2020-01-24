local time = 2 

function onEquip(cid, words, param)
playerpos = getPlayerPosition(cid)
zero1 = {x=playerpos.x, y=playerpos.y, z=playerpos.z, stackpos=1}
zero1 = {x=playerpos.x, y=playerpos.y, z=playerpos.z, stackpos=1}
doSendMagicEffect(zero1,47)
doSendAnimatedText(getPlayerPosition(cid),"soy vip", math.random(01,255))
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
return TRUE
end