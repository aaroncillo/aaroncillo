function onUse(cid,item,frompos,itemEx,topos)
local pausa = 30*60*7200
local texto = "You received 2exp por 1 dia." 
textofinal = "It is just minutes."
local exp = 2 
expfinal = 1
if item.itemid == 8205 then
doRemoveItem(item.uid,1)
doPlayerSetExperienceRate(cid,exp)
doSendMagicEffect(frompos,13)
doPlayerSendTextMessage(cid,22,texto)
addEvent(potion,pausa,cid)
end
end
function potion(pos, cid)
doPlayerSetExperienceRate(pos,expfinal)
doPlayerSendTextMessage(pos,22,textofinal)
end
