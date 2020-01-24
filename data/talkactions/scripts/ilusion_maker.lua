function onSay(cid, words, param)
ppos = getPlayerPosition(cid)
dir = getPlayerLookDir(cid)
posnor = {x=ppos.x, y=ppos.y-ilusion.dist, z=ppos.z, stackpos=1}
possou = {x=ppos.x, y=ppos.y+ilusion.dist, z=ppos.z, stackpos=1}
poses = {x=ppos.x+ilusion.dist, y=ppos.y, z=ppos.z, stackpos=1}
poswes = {x=ppos.x-ilusion.dist, y=ppos.y, z=ppos.z, stackpos=1}

if getPlayerAccess(cid) >= ilusion.access then
local x = {pos = pos}
    if dir == 0 then
        i = doCreateItem(ilusion.item,ilusion.itemcount,posnor)
         pos = getThingPos(i)
        doSendAnimatedText(posnor, ilusion.msg, ilusion.color)
        doAreaCombatHealth(cid, ilusion.type, posnor, 0, -ilusion.min, -ilusion.max, ilusion.effect)
        addEvent(stopEffectnor, ilusion.duration, x)
    elseif dir == 2 then
        i = doCreateItem(ilusion.item,ilusion.itemcount,possou)
         pos = getThingPos(i)
        doSendAnimatedText(possou, ilusion.msg, ilusion.color)
        doAreaCombatHealth(cid, ilusion.type, possou, 0, -ilusion.min, -ilusion.max, ilusion.effect)
        addEvent(stopEffectsou, ilusion.duration, x)
    elseif dir == 1 then
        i = doCreateItem(ilusion.item,ilusion.itemcount,poses)
         pos = getThingPos(i)
        doSendAnimatedText(poses, ilusion.msg, ilusion.color)
        doAreaCombatHealth(cid, ilusion.type, poses, 0, -ilusion.min, -ilusion.max, ilusion.effect)
        addEvent(stopEffectes, ilusion.duration, x)
    elseif dir == 3 then
        i = doCreateItem(ilusion.item,ilusion.itemcount,poswes)
         pos = getThingPos(i)
        doSendAnimatedText(poswes, ilusion.msg, ilusion.color)
        doAreaCombatHealth(cid, ilusion.type, poswes, 0, -ilusion.min, -ilusion.max, ilusion.effect)
        addEvent(stopEffectwes, ilusion.duration, x)
    end
end
end
function stopEffectnor(x)
    itemnort = getThingfromPos(x,pos)
    doRemoveItem(itemnort.uid,ilusion.itemcount) 
end
function stopEffectsou(x)
    itemsou = getThingfromPos(x,pos)
    doRemoveItem(itemsou.uid,ilusion.itemcount) 
end
function stopEffectes(x)
    itemes = getThingfromPos(x,pos)
    doRemoveItem(itemes.uid,ilusion.itemcount) 
end
function stopEffectwes(x)
    itemwes = getThingfromPos(x,pos)
    doRemoveItem(itemwes.uid,ilusion.itemcount) 
end