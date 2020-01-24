function onEquip(cid, item, slot)
if slot ~= 9 then
local outfit = {
lookType = 275,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 0
}
doSetCreatureOutfit(cid, outfit, 5000)
else
end
end

function onDeEquip(cid, item, slot)
	local pos = {x = 65535}
	doSendMagicEffect(pos, 14)
end