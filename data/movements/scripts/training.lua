function onStepIn(cid, item, pos)

if isPlayer(cid) then

local Outfit = {lookType=251,lookHead=0,lookAddons=0,lookLegs=0,lookBody=0,lookFeet=0} -- tantofaz
OutfitTime = 1 -- aqui está o segredo
doSetCreatureOutfit(cid, NewOutfit,OutfitTime)
end
return 1
end