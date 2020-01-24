function onSay(cid, words, param, channel)

local t = string.explode(param, ",")
if doPlayerTransferMoneyTo(cid, t[1], t[2]) then
doPlayerSendTextMessage(cid,22,t[2]..' gps transferidos con exito para ' ..t[1])
else
doPlayerSendTextMessage(cid,22,'Error al transferir. Asegúrese de que escribió la cantidad correcta que tiene en el banco.')
end
return true

end