function onUse(cid, item, frompos, item2, topos)

-------- Pausa --------

local pausa = 1000
-------- Cordenadas --------

local door = {x=670, y=34, z=7, stackpos=1} 
local ddoor = getThingfromPos(door) 

-------- ITEM --------

local open_door = 5136 

local itemU = 25000 

local verify = 0 --- NÃO MEXA AQUI

-------- PRIMEIRO SISTEMA --------


if item2.uid == itemU then
if ddoor.itemid ~= verify then
doTransformItem(ddoor.uid,open_door)
addEvent(close,pausa,door)
end
else
doPlayerSendCancel(cid,"This key can not be used here") 
end
return 1
end

function close(door)
-------- ITEM --------

local to_close_door = 5135 

------- SEGUNDO SISTEMA --------

local the_close_door = getThingfromPos(door)
doTransformItem(the_close_door.uid,to_close_door)
end