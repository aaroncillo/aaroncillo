local config = {
    lottery_hora = "20 Minutos",
    reward_count = 100,
    website = 0
    }
function onThink(interval, lastExecution)
    local players = getPlayersOnline()
    local list = {}
    for i, tid in ipairs(players) do
    list[i] = tid
end
    local winner = list[math.random(1, #list)]
    if(config.website == 1) then
        db.executeQuery("INSERT INTO `lottery` (`name`) VALUES ('".. getCreatureName(winner) .."');")
    end
    doBroadcastMessage('[SYSTEMA DE LOTERIA] ganador: '.. getCreatureName(winner) ..', recompensa: '.. config.reward_count ..'0k! - felicitaciones! (siguiente Loteria en '.. config.lottery_hora ..')')
    doPlayerAddItem(winner, 2160,config.reward_count)
    return TRUE
end