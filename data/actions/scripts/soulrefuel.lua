function onUse(cid, item, fromPosition, itemEx, toPosition)
	local cfg = {}
	cfg.refuel = 42 * 60 * 1000
	if(getPlayerSoul(cid) >= cfg.refuel) then
		doPlayerSendCancel(cid, "Your soul is already full.")
	elseif(not isPremium(cid)) then
		doPlayerSendCancel(cid, "You must have a premium account.")
	else
		doPlayerSetStamina(cid, cfg.refuel)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Your Soul has been refilled.")
		doRemoveItem(item.uid)
	end
	return true
end