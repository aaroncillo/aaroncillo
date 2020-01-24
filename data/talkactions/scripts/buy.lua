function getPlayerMoney(cid)
gold = getPlayerItemCount(cid,2148)
plat = getPlayerItemCount(cid,2152)*100
crys = getPlayerItemCount(cid,2160)*10000
money = gold + plat + crys
return money
end
local items = {
["aol"] = {cash=10000, id=2173, amount=1},
["food"] = {cash=1000, id=2671, amount=100},
["uh"] = {cash=1000, id=2273, amount=100},
["sd"] = {cash=1000, id=2268, amount=100},
["mr"] = {cash=1000, id=2280, amount=100},
["ice rapier"] = {cash=50000, id=2396, amount=1},
["dragon ham"] = {cash=10000, id=2672, amount=100},
["backpack"] = {cash=100, id=1988, amount=1},
["great mana potion"] = {cash=150, id=7590, amount=1},
["strong mana potion"] = {cash=100, id=7589, amount=1},
["great health potion"] = {cash=150, id=7591, amount=1},
["strong health potion"] = {cash=100, id=7588, amount=1}
} 
---------End Config ---------
function onSay(cid, words, param)
bitem = items[param]
if (bitem ~= nil) then
if getPlayerMoney(cid) >= bitem.cash then
doPlayerAddItem(cid,bitem.id,bitem.amount)
doPlayerRemoveMoney(cid,bitem.cash)
else
doPlayerSendCancel(cid,"Desculpe, Dinheiro Insuficiente")
end
else
doPlayerSendCancel(cid, "Esse Item não é vendido.") 
end
return 1
end