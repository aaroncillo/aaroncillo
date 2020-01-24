function onUse(cid, item, fromPosition, itemEx, toPosition)
        if item.itemid == 1740 then
            local pPos = getPlayerPosition(cid)
            doSendMagicEffect(pPos, 28)
                doPlayerAddOutfit(cid,366,1)
                doPlayerAddOutfit(cid,367,1)
                doPlayerAddOutfit(cid,366,2)
                doPlayerAddOutfit(cid,367,2)
                    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Ahora tienes el wayfarer addon!.")
        end
        return TRUE
end