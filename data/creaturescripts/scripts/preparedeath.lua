-- Sebasbe and vodkart --
function onPrepareDeath(cid, lastHitKiller, mostDamageKiller) 
if isPlayer(cid) == TRUE then 
if (getPlayerSlotItem(cid, 2).itemid == 2196) and getPlayerSkullType(cid) >= 4 then  
doCreatureSetDropLoot(cid, false) 
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA) 
return TRUE 
end 
end 
return TRUE 
end
