function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 7
mensagem = 'Usted es residente de Vip City 2'

if item.uid == 17324 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end