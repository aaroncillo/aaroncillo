function onUse(cid, item, frompos, item2, topos)
    mag = getPlayerMagLevel(cid)
    if mag >= 0 then
        doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_ORANGE)
        doPlayerAddMana(cid, math.random(35000, 50000))
        doSendMagicEffect(topos, 12)

        if item.type > 1 then
            doChangeTypeItem(item.uid,item.type-1)
        else
        end
    else
        doSendMagicEffect(topos, 55)
        doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
    end
    
    return 1
end