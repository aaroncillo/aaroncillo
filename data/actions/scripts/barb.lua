function onUse(cid,item,frompos,itemEx,topos)
queststatus = getPlayerStorageValue(cid,3065)
if queststatus == -1 then
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "You now have Barbarian Apocalypto Outfit")
doSendMagicEffect(getPlayerPosition(cid), 39)
doPlayerAddOutfit(cid,253,1)
setPlayerStorageValue(cid,3065,1)
else
doCreatureSay(cid,'Ya tienes el quest.', TALKTYPE_MONSTER)
end
end