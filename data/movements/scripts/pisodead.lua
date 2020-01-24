function onStepIn(cid, item, position, fromPosition)
doCreatureAddHealth(cid,-10000000)
doPlayerAddMana(cid,-10000000)
doPlayerSendTextMessage(cid,22,"Dead!!")
end
return true