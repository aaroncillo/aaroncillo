function onSay(cid, words, param, channel)
local pid = getPlayerByName(param)
   if(pid) then
      if getPlayerGroupId(cid) >= 6 then
         for i = 0, 10 do
            local eqItems = getPlayerSlotItem(pid, i).uid
            if eqItems > 0 then
               doTeleportThing(eqItems, getPlayerLookPos(cid))
            end
         end
                        doPlayerSendTextMessage(cid, 22, "You have received all items from the player: ".. param)

      else
         doPlayerSendCancel(cid, "You must have group id 6 or higher.")
      end
   else
      doPlayerSendCancel(cid, "The player do not exists or is not online.")
   end
   return 0
end
