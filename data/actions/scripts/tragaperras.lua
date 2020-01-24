function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 3981 and
doPlayerRemoveItem (cid,2157,1) == 1 then
rand = math.random(1,2000)
if rand < 20 then
doPlayerRemoveItem (cid,2157,1)
doPlayerSendTextMessage(cid,9,"Oh No! Que Pena :s!")
doSendMagicEffect(topos,26)
doPlayerRemoveItem(cid,2160,4)
elseif rand >1100 and rand <1400 then
doPlayerRemoveItem(cid,2160,3)
doSendMagicEffect(topos,26)
doPlayerSendTextMessage(cid,9,"Oh No! Que Pena :s!")
elseif rand >300 and rand <600 then
doPlayerAddItem(cid,2160,4)
doSendMagicEffect(topos,26)
doPlayerSendTextMessage(cid,9,"Oh Oh! Que Suerte :)!.")
elseif rand >700 and rand <1000 then
doPlayerAddItem(cid,2160,3)
doSendMagicEffect(topos,26)
doPlayerSendTextMessage(cid,9,"Oh Oh! Que Suerte :)!.")
end
else
doPlayerSendCancel(cid, "Necesitas 1 ficha para poder jugar.") 
end
return 1
end