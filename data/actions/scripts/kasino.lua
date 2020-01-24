function onUse(cid, item, frompos, item2, topos)

local chance1 = math.random(1,5) -- 50% posibidad de ganar el item
local chance2 = math.random(1,5) -- 25%
local chance3 = math.random(1,5) -- 17%
local chance4 = math.random(1,5) -- 13%
local chance5 = math.random(1,5) -- 5%
local ficha = 10581
local effect = 26 --los efectos
local effect2 = 29
local effect3 = 28
local effect4 = 30

if item2.itemid == 9899 then ---- id ke sera la makina
if (doPlayerRemoveItem (cid,ficha,1) ) then
if chance1 == 1 then
doSendMagicEffect(topos,effect2)
doSendAnimatedText(getPlayerPosition(cid), "Ganaste", TEXTCOLOR_GREEN)
doPlayerAddItem(cid,11221,1)
elseif chance2 == 1 then
doSendMagicEffect(topos,effect)
doSendAnimatedText(getPlayerPosition(cid), "Perdiste", TEXTCOLOR_RED)
doPlayerRemoveItem(cid,ficha,1)
elseif chance3 == 1 then
doSendMagicEffect(topos,effect3)
doSendAnimatedText(getPlayerPosition(cid), "Ganaste", TEXTCOLOR_GREEN)
doPlayerAddItem(cid,11221,1)
elseif chance1 == 1 then
doSendMagicEffect(topos,effect)
doSendAnimatedText(getPlayerPosition(cid), "Perdiste", TEXTCOLOR_RED)
doPlayerRemoveItem(cid,ficha,1)
elseif chance5 == 1 then
doSendMagicEffect(topos,effect4)
doSendAnimatedText(getPlayerPosition(cid), "Ganaste", TEXTCOLOR_GREEN)
doPlayerAddItem(cid,11221,1)
elseif chance4 == 1 then
doSendMagicEffect(topos,effect)
doSendAnimatedText(getPlayerPosition(cid), "Perdiste", TEXTCOLOR_RED)
doPlayerRemoveItem(cid,ficha,1)
end
else
doPlayerSendCancel(cid, "Necesitas 1 ficha para poder jugar.")
end
elseif item2.itemid == 9898 then
if (doPlayerRemoveItem (cid,ficha,1) ) then
if chance1 == 1 then
doSendMagicEffect(topos,effect2)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Ganaste.')
doPlayerAddItem(cid,11221,1)
elseif chance2 == 1 then
doSendMagicEffect(topos,effect)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Perdiste.')
doPlayerRemoveItem(cid,ficha,1)
elseif chance3 == 1 then
doSendMagicEffect(topos,effect3)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Ganaste.')
doPlayerAddItem(cid,11221,1)
elseif chance1 == 1 then
doSendMagicEffect(topos,effect)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Perdiste.')
doPlayerRemoveItem(cid,ficha,1)
elseif chance5 == 1 then
doSendMagicEffect(topos,effect4)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Ganaste.')
doPlayerAddItem(cid,11221,1)
elseif chance4 == 1 then
doSendMagicEffect(topos,effect)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Perdiste.')
doPlayerRemoveItem(cid,ficha,1)
end
else
doPlayerSendCancel(cid, "Necesitas 1 ficha para poder jugar.")
end
end
end