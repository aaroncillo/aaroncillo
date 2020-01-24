function onLook(cid, thing, position, lookDistance)
 
      local quests = {2007,13540,3737,3090,2721,1355,2699,5010,1001,2645,2496,7500,9876,2517,9500,9501,9502,8200,1}
 
      local completed = {}
 
      if isPlayer(thing.uid) then
 
      for i = 1, #quests do
 
      if getPlayerStorageValue(thing.uid, quests[i]) > 0 then
 
      table.insert(completed, 1)
 
      end
 
      end
 
      doPlayerSetSpecialDescription(thing.uid, (getPlayerSex(thing.uid) == 0 and ".\nShe" or ".\nHe") .. " tiene completado ".. #completed .. "/" .. #quests .. " quests")
 
      doPlayerSendTextMessage(cid, 27, getPlayerName(thing.uid) .. " tiene completado " .. #completed .. "/" .. #quests .. " quests.")
 
      end
 
      return true
 
      end