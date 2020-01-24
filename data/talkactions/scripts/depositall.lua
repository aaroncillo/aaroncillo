function onSay(cid, words, param, channel)

if doPlayerDepositAllMoney(cid) then
doPlayerSendTextMessage(cid,22,'todo el dinero fue depositado con exito.')
else
doPlayerSendTextMessage(cid,22,'hubo un error. Contacte a un GM , GOD o al ADM.')
end
return true

end