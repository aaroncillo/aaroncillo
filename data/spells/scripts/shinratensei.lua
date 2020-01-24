function getRepelTiles(cid)
local tile = {
{20, 3},
{40, 4},
{50, 5},
{80, 6},
{100, 7},
{120, 8}
}
table.sort(tile, function(a, b) return a[1] > b[1] end)
for _, t in ipairs(tile) do 
if(getPlayerLevel(cid) >= t[1]) then
return t[2]
end
end
return tile[1][2]
end

function getNextPos(cid, tiles)
p = getCreaturePosition(cid)
x,y,z = p.x,p.y,p.z
local places = {
[0] = {x=x, y=(y-tiles), z=z, stackpos = 253},
[1] = {x=(x+tiles), y=y, z=z, stackpos = 253},
[2] = {x=x, y=(y+tiles), z=z, stackpos = 253},
[3] = {x=(x-tiles), y=y, z=z, stackpos = 253}}
return places[getPlayerLookDir(cid)]
end

function doRepel(cid, target, tiles)
if queryTileAddThing(cid, getNextPos(cid, 2)) == RETURNVALUE_NOERROR then
doCreatureSetLookDirection(target, getCreatureLookDirection(cid))
repeat
doTeleportThing(target, getNextPos(target, 1), true)
doSendMagicEffect(getCreaturePosition(target), CONST_ME_GROUNDSHAKER)
tiles = tiles-1
until tiles == 0 or queryTileAddThing(target, getNextPos(target, 1)) ~= RETURNVALUE_NOERROR
end
end

function onCastSpell(cid, var)
targ = getThingfromPos(getNextPos(cid, 1))
if (isPlayer(targ.uid)) or (isMonster(targ.uid)) then
if queryTileAddThing(cid, getNextPos(cid, 2)) == RETURNVALUE_NOERROR then
if (isPlayer(targ.uid)) or (isMonster(targ.uid)) and getTilePzInfo(getCreaturePosition(cid)) == FALSE then
doRepel(cid, targ.uid, getRepelTiles(cid))
doCreatureAddHealth(targ.uid, -getPlayerLevel(cid))
doCreatureAddMana(cid, -10)
end
else
doPlayerSendCancel(cid, "Something is in the way to repel the target.")
end
else
doPlayerSendCancel(cid, "There is no target to repel.")
end
end