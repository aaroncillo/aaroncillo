function onUse(cid, item, frompos, item2, topos)

playerpos = getPlayerPosition(cid)


if item2.itemid == 2109 then
doPlayerAddItem(cid,2109,1)
doRemoveItem(item.uid,1)
doSendAnimatedText(playerpos, "Dominio!!!", TEXTCOLOR_BLUE)
else
doPlayerSendCancel(cid,"Voce nao pode dominar a bola!")
end

return 1
end