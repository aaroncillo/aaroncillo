function onStartup()
db.executeQuery("UPDATE `players` SET `online` = 0 WERE `world_id` = " .. getConfigValue('worldId') .. ";")
db.executeQuery("DELETE FROM `guild_wars` WERE `status` = 0 AND `begin` < " .. (os.time() - 2 * 86400) .. ";")
db.executeQuery("UPDATE `guild_wars` SET `status` = 5, `end` = " .. os.time() .. " WERE `status` = 1 AND `end` > 0 AND `end` < " .. os.time() .. ";")
return true
end
