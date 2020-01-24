function onSay(cid, words, param, channel)

if doPlayerWithdrawAllMoney(cid) then
doPlayerSendTextMessage(cid,22,'Todo el dinero fue retirado con éxito.')
else
doPlayerSendTextMessage(cid,22,'hubo un error. Contacte a un GM , GOD o al ADM.')
end
return true

end