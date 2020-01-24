function onUse(cid,item,frompos,itemEx,topos)
doPlayerAddSoul(cid,200)
doSendMagicEffect(topos,48)
doSendAnimatedText(getPlayerPosition(cid), "Soulfull", 181)
doPlayerRemoveItem(cid, 10576, 1)
end
