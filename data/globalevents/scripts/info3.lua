function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Aggrox metal informacion: 
Para usar el pet system abre la lista de chanels y abre el chanel de pet y sigue las instrucciones y tambien pùedes ver todas las muertes en el death chanel
]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end