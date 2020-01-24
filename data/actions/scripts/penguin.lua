function onUse(cid,item,frompos,itemEx,topos)
queststatus = getPlayerStorageValue(cid,3072)
if queststatus == -1 then
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "You now have Penguin Outfit")
doSendMagicEffect(getPlayerPosition(cid), 39)
doPlayerAddOutfit(cid,250,1)
setPlayerStorageValue(cid,3072,1)
else
doCreatureSay(cid,'Ya tienes el quest', TALKTYPE_MONSTER)
end
end