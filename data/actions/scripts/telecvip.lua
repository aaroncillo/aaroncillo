function onUse(cid, item, frompos, item2, topos)
pos = {x=155, y=28, z=7}
if item.itemid == 7633 then

doPlayerSendCancel(cid,"Abra el baul para ser vip!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falha :D!")


end

return 1

end 