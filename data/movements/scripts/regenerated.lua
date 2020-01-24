function onStepIn(cid, item, position, fromPosition)
     doCreatureAddHealth(cid,10000000)
     doPlayerAddMana(cid,10000000)
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Regenerado")
        doSendAnimatedText(getThingPos(cid), "+HP +MANA", TEXTCOLOR_YELLOW)
        

end
return true