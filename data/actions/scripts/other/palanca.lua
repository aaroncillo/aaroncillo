local t = {
   [9825] = { -- UniqueID of the switch/lever
      405, -- ground tile ID
      {x = 521, y = 840, z = 7}, -- relocate position (creatures and items will be moved here)
      {x = 521, y = 840, z = 7}, -- tile positions start here
      {x = 521, y = 841, z = 7},
      {x = 521, y = 841, z = 7},
      {x = 521, y = 841, z = 7}
   }
}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
   local v = t[item.uid]
   if v then
      for i = 3, #v do
         v[i].stackpos = 0
         local k = getThingFromPos(v[i]).uid
         if k ~= 0 then
            doRelocate(v[i], v[2])
            doRemoveItem(k)
         else
            doCreateItem(v[1], 1, v[i])
         end
      end
   end
 
   return doTransformItem(item.uid, item.itemid == 1945 and 1946 or 1945)
end
