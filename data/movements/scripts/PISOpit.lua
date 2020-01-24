local cfg = {
level = 30000,
city = {x=654, y=718, z=7}
}

function onStepIn(cid, item, position, fromPosition)
if getPlayerLevel(cid) >= cfg.level then
doSendAnimatedText(getCreaturePosition(cid), 'Ok', TEXTCOLOR_LIGHTGREEN)
doSendMagicEffect(getPlayerPosition(cid), 39)
  doTeleportThing(cid, cfg.city)
else
doCreatureSay(cid, "Sorry but, you need level 30k for pass.", TALKTYPE_ORANGE_1)
doTeleportThing(cid, fromPosition, FALSE)
end
return true
end