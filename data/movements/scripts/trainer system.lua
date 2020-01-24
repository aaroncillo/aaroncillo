function onStepIn(cid, item, pos, fromPos)
   local t = {
      [5000]={{x=pos.x-1, y=pos.y+1, z=pos.z},{x=pos.x-1, y=pos.y-1, z=pos.z}},
      [5001]={{x=pos.x+1, y=pos.y+1, z=pos.z},{x=pos.x+1, y=pos.y-1, z=pos.z}},
      [5002]={{x=pos.x+1, y=pos.y-1, z=pos.z},{x=pos.x-1, y=pos.y-1, z=pos.z}},
      [5003]={{x=pos.x+1, y=pos.y+1, z=pos.z},{x=pos.x-1, y=pos.y+1, z=pos.z}}
   }
   local v = t[item.uid]
   if v then
      doSummonCreature('mystic wolf', v[1])
      doSummonCreature('mystic wolf', v[2])
      doSendMagicEffect(v[1],CONST_ME_TELEPORT)
      doSendMagicEffect(v[2],CONST_ME_TELEPORT)
   end
end

function onStepOut(cid, item, pos)
   local t = {
      [5000]={{x=pos.x-1, y=pos.y+1, z=pos.z, stackpos = 253},{x=pos.x-1, y=pos.y-1, z=pos.z, stackpos = 253}},
      [5001]={{x=pos.x+1, y=pos.y+1, z=pos.z, stackpos = 253},{x=pos.x+1, y=pos.y-1, z=pos.z, stackpos = 253}},
      [5002]={{x=pos.x+1, y=pos.y-1, z=pos.z, stackpos = 253},{x=pos.x-1, y=pos.y-1, z=pos.z, stackpos = 253}},
      [5003]={{x=pos.x+1, y=pos.y+1, z=pos.z, stackpos = 253},{x=pos.x-1, y=pos.y+1, z=pos.z, stackpos = 253}}
   }
   local v = t[item.uid]
   if v then
      doRemoveCreature(getThingfromPos(v[1]).uid)
      doRemoveCreature(getThingFromPos(v[2]).uid)
      doSendMagicEffect(v[1],CONST_ME_POFF)
      doSendMagicEffect(v[2],CONST_ME_POFF)
      end
end


