function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 3
mensagem = 'Usted es residente de vip City'

if item.uid == 17301 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end