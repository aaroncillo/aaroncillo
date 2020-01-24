local ITEM_RED_COIN = 2157
local coins = {
[ITEM_GOLD_COIN] = {
to = ITEM_PLATINUM_COIN, effect = TEXTCOLOR_YELLOW
},
[ITEM_PLATINUM_COIN] = {
from = ITEM_GOLD_COIN, to = ITEM_CRYSTAL_COIN, effect = TEXTCOLOR_LIGHTBLUE
},
[ITEM_CRYSTAL_COIN] = {
from = ITEM_PLATINUM_COIN, to = ITEM_RED_COIN, effect = TEXTCOLOR_TEAL
},
[ITEM_RED_COIN] = {
from = ITEM_CRYSTAL_COIN, effect = TEXTCOLOR_SILVER
}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if(getPlayerFlagValue(cid, PLAYERFLAG_CANNOTPICKUPITEM)) then
return false
end

local coin = coins[item.itemid]
if(not coin) then
return false
end

if(coin.to and item.type == ITEMCOUNT_MAX) then
doChangeTypeItem(item.uid, item.type - item.type)
doPlayerAddItem(cid, coin.to, 1)
elseif(coin.from) then
doChangeTypeItem(item.uid, item.type - 1)
doSendAnimatedText(fromPosition, "$$$", TEXTCOLOR_PLATINUMBLUE)
doPlayerAddItem(cid, coin.from, ITEMCOUNT_MAX)
end
return true
end