function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22 -- Defina a cor da mensagem (22 = green)
    local mensagens ={
[[Aggrox metal informacion: 
Hola si tu eres knight para curarte puedes usar King healing y si eres druid o paladin usa exura mana 
]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end