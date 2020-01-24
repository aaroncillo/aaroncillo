function getValuePos(array, value)
    for i = 1, #array do
        if array[i] == value then
          Ret = i
          break
        end  
    end
  return Ret or FALSE
end

function onLogin(cid)
  Online = getPlayersOnline()
  MCPlayers = {}
  PlayerIP = getPlayerIp(cid)
    for rem = 1, #Online do
        if Online[rem] == cid then
          table.remove(Online, getValuePos(Online, Online[rem]))
        end
    end
    for psid = 1, #Online do
      sid = Online[psid]
      SecundaryIP = getPlayerIp(sid)
        if getPlayerAccess(cid) >= 5 or getPlayerAccess(sid) >= 5 then
          return TRUE
        end
        if PlayerIP == SecundaryIP then
          table.insert(MCPlayers, 1, sid)          
        end    
    end
    if #MCPlayers > 0 then
        for pmcp = 1, #MCPlayers do
          mcp = MCPlayers[pmcp]
          Log = io.open(getDataDir().."logs/MC Players.txt", "a+")
          Log:write("Nome: "..getCreatureName(mcp).."\n")
          doPlayerPopupFYI(mcp, "You have been kicked because you are using Multi-Client.")
          doRemoveCreature(mcp)
          table.remove(MCPlayers, 1)
        end
      Log:write("Nome: "..getCreatureName(cid).."\n")
      doPlayerPopupFYI(cid, "You have been kicked because you are using Multi-Client.")
      doRemoveCreature(cid)
      table.remove(MCPlayers, 1)
      Log:write("Date: "..os.date("%d/%m/%y").."\n")
      Log:write("Hour: "..os.date("%d/%m/%y").."\n")
      Log:write("IP: "..PlayerIP.."\n\n\n")
      Log:close()
    end
  return TRUE
end  