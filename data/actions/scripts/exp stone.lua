function onUse(cid, item, frompos, item2, topos)
if item.uid == 5944 then

doPlayerAddExp(cid,5000)
doSendMagicEffect(topos,12)
else

doPlayerSendTextMessage(cid,22,"usted obtuvo 5000 de exp")


end

return 1

end 