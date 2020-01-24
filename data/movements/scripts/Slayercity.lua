function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 1
mensagem = 'Usted es residente de Slayer City'

if item.uid == 17320 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end