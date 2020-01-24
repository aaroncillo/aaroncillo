local err = createCombatArea({
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}})
function onUse(cid, item, frompos, item2, topos) --Script "Bomba" by Snack
if frompos.x == 65535 then
doPlayerSendCancel(cid, 'You cannot use it here.')
else
doRemoveItem(item.uid, 1)
doSendMagicEffect(frompos, 3)
local m = {[0] = 0, [1] = 5, [2] = 4, [3] = 3, [4] = 2, [5] = 1}
for i, v in ipairs(m) do
addEvent(doSendAnimatedText, (i - 1)*1000, frompos, v, 180)
end
addEvent(af, 5050, cid, item, frompos, item2, topos)
end
end

function af(cid, item, frompos, item2, topos)
doSendAnimatedText(frompos, 'MuerePuto!', 180)
doAreaCombatHealth(0, 8, frompos, err, -90000000, -90000000, 6)
end