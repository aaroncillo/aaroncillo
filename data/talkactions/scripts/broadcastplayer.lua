local precio = 1000
function onSay(cid, words, param, channel)
    if(param == "") then
        return TRUE
    end
    if getPlayerAccess(cid) > 2 then
        doBroadcastMessage(''..getPlayerName( cid)..' ['..getPlayerLevel(cid)..']: '..param..'',25)
        else     
            if getPlayerMoney(cid) > precio then
            doPlayerRemoveMoney( cid,precio)
            doBroadcastMessage( ''..getPlayerName(cid)..' ['..getPlayerLevel(cid)..']: '..param..'',22)
             else
            doPlayerSendTextMessage( cid,24,""..getPlayerName(cid).." don't have enough money.")
    end
end
return TRUE
end