local config = {
   lever_uid = 1946,
   wall = 1285,{
      [1] = {id = 1285, pos = {x=547, y=781, z=7}, relocate = {x=547, y=781, z=7}} 
   }
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
   if item.uid == 1945 then  
      if item.itemid == 1945 then 
         for i = 1, #config.wall do
            local getWall = getTileItemById(config.wall[i].pos, config.wall[i].id).uid
            if getWall > 0 then
               doRemoveItem(getWall)
            end
         end
         doTransformItem(item.uid, item.itemid+1)
         return TRUE
      elseif item.itemid == 1946 then 
         for i = 1, #config.wall do
            local getWall = getTileItemById(config.wall[i].pos, config.wall[i].id).uid
            if getWall == 0 then
               doRelocate(config.wall[i].pos, config.wall[i].relocate)
               doCreateItem(config.wall[i].id, 1, config.wall[i].pos)
            end
         end
         doTransformItem(item.uid,item.itemid-1)    
         return TRUE
      end
   end
   return FALSE
end

