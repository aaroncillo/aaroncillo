function getPlayerFrags(cid)
    local time = os.time()
    local times = {today = (time - 86400), week = (time - (7 * 86400))}
 
    local contents, result = {day = {}, week = {}, month = {}}, db.getResult("SELECT `pd`.`date`, `pd`.`level`, `p`.`name` FROM `player_killers` pk LEFT JOIN `killers` k ON `pk`.`kill_id` = `k`.`id` LEFT JOIN `player_deaths` pd ON `k`.`death_id` = `pd`.`id` LEFT JOIN `players` p ON `pd`.`player_id` = `p`.`id` WHERE `pk`.`player_id` = " .. getPlayerGUID(cid) .. " AND `k`.`unjustified` = 1 AND `pd`.`date` >= " .. (time - (30 * 86400)) .. " ORDER BY `pd`.`date` DESC")
    if(result:getID() ~= -1) then
        repeat
            local content = {date = result:getDataInt("date")}
            if(content.date > times.today) then
                table.insert(contents.day, content)
            elseif(content.date > times.week) then
                table.insert(contents.week, content)
            else
                table.insert(contents.month, content)
            end
        until not result:next()
        result:free()
    end
 
    local size = {
        day = table.maxn(contents.day),
        week = table.maxn(contents.week),
        month = table.maxn(contents.month)
    }
 
    return size.day + size.week + size.month
end
function getTime(s)
        local n = math.floor(s / 60)
        s = s - (60 * n)
        return n, s
end
local tiempo = 1800 -- por segundos.... 1300 SERIA MEDIA HORA.
local timestor = 283847 -- preferiblemente no tocar, si coincide con alguno de tus storages (que nocreo) pues cambialo.xd
function onUse(cid, item, fromPosition, itemEx, toPosition)
   if os.time()-getPlayerStorageValue(cid, timestor)+1 <= tiempo then
      minutes,seconds = getTime(tiempo-(os.time()-getPlayerStorageValue(cid, timestor)))
      return  doPlayerSendTextMessage(cid, 27, "You must wait ".. minutes .." minutes and ".. seconds .." seconds.")
   end
   db.executeQuery("UPDATE `killers` SET `unjustified` = ".. getPlayerFrags(cid)-1 .." WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
        setPlayerStorageValue(cid, timestor, os.time())
doCreatureSay(cid, "Frag Bye!", TALKTYPE_ORANGE_1)
   doPlayerSendTextMessage(cid, 22, "Se te ha removido 1 frag, tendras que esperar 30 minutos mas para volver a usar este objeto.")
   return true
end