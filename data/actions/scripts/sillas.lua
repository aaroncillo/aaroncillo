function onUse(cid, item, fromPosition, itemEx, toPosition)
local tp_id=5024

if getPlayerGroupId ( cid ) >= 2 then
doCreateItem(tp_id, toPosition)
end
return true

end
