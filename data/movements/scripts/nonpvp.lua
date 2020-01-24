function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 2
mensagem = 'Ahora usted es residente de NoN PvP city'

if item.uid == 17202 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end