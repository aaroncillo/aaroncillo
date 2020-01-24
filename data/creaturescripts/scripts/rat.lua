local function moveStone(p)
if isPlayer(getThingfromPos(p.stonePosition).uid) == TRUE then
doMoveCreature(cid, 2)
end
doSendMagicEffect(p.stonePosition, 13)
doCreateItem(p.stoneid, 1, p.stonePosition)
end

function onDeath(cid, corpse, killer)
local timeLimit = 1000 * 60 * 1
local stonePosition = {x=385, y=837, z=7, stackpos=1}
local stoneid = 7825
local stone = getTileItemById(stonepos, stoneid)

if stone.itemid == stoneid then
doRemoveItem(stone.uid, 1)
doSendMagicEffect(stonePosition, 13)
addEvent(moveStone, timeLimit, {stonePosition = stonePosition, stoneid = stoneid})
end

return TRUE
end