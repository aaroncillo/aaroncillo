function onEquip(cid, words, param)
playerpos = getPlayerPosition(cid)
doSendMagicEffect(getPlayerPosition(cid),30)
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
doPlayerSendTextMessage(cid,22,"Se eh fera Slayer uhuu.")
return TRUE
end
