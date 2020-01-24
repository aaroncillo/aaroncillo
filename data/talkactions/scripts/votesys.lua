local cmds = { -- Atenção, abaixo seguem os comandos do sistema, caso deseje mudar, mude também em talkactions.xml
        cmdAbrirVot = '/ligarvota', -- Ligar a votação, e em seguida, após as aspas, a mensagem
        cmdFecharVot = '/fechavota', -- Encerrar votação
        cmdVotar = '!votar' -- Para votar, e após as aspas, sim ou nao, caso contrario o volo não será contabilizado    
}
local basicConfig = {
        access = 3, -- Access minimo para abrir e fechar votações
        storagePower = 27900, -- Storage value sobre se o sistema esta ligado ou desligado
        strS = 27901, -- Votos Sim
        strN = 27902 -- Votos Não
}
        

        local playersVotaram = {}
        
function onSay(cid, words, param)

        if words == cmds.cmdAbrirVot and getPlayerAccess(cid) >= basicConfig.access then -- (Z)
                if getGlobalStorageValue(basicConfig.storagePower) == -1 then -- (ZA)
                        setGlobalStorageValue(basicConfig.storagePower,1)
                        print('Votacao iniciada por ' .. getPlayerName(cid) .. ', com a seguinte pergunta:\n'..param)
                        doPlayerSay(cid,'/B Votação iniciada:\n'..param..'\nUse: '.. cmds.cmdVotar..' "sim para votar sim\n'.. cmds.cmdVotar ..' "nao para votar nao.',1)
                else -- (ZA)
                        doPlayerSendCancel(cid,'No momento já existe uma votação no ar, digite: ' .. cmds.cmdFecharVot .. ' para finalizar a atual e começar uma nova.')
                end-- (ZA)
        elseif words == cmds.cmdVotar then -- (Z)
                if getGlobalStorageValue(basicConfig.storagePower) == 1 then -- (ZC)
                        local vot = 0
                        for i = 0,#playersVotaram do -- (ZD)
                                if getPlayerName(cid) == playersVotaram[i] then -- (ZDA)
                                        vot = 1
                                        break
                                else -- (ZDA)
                                        vot = 0
                                end -- (ZDA)
                        end -- (ZD)
                        if vot == 0 then -- (ZE)
                                if param == 'sim' then -- (ZEA)
                                        if getGlobalStorageValue(basicConfig.strS) == -1 then -- (ZEAA)
                                                setGlobalStorageValue(basicConfig.strS,1)
                                        else -- (ZEAA)
                                                setGlobalStorageValue(basicConfig.strS,getGlobalSt  orageValue(basicConfig.strS)+1)
                                        end -- (ZEAA)
                                        doPlayerSendTextMessage(cid,22,'Obrigado pelo seu voto.')
                                        print(getPlayerName(cid)..' votou sim.')
                                        table.insert(playersVotaram,getPlayerName(cid))
                                elseif param == 'nao' then -- (ZEA)
                                        if getGlobalStorageValue(basicConfig.strN) == -1 then -- (ZEAB)
                                                setGlobalStorageValue(basicConfig.strN,1)
                                        else -- (ZEAB)
                                                setGlobalStorageValue(basicConfig.strN,getGlobalSt  orageValue(basicConfig.strN)+1)
                                        end -- (ZEAB)
                                        print(getPlayerName(cid)..' votou nao.')
                                        doPlayerSendTextMessage(cid,22,'Obrigado pelo seu voto.')
                                        table.insert(playersVotaram,getPlayerName(cid))
                                else -- (ZEA)
                                        doPlayerSendCancel(cid,'Desculpe, não entendemos seu voto, use apenas as opções \'sim\' e \'nao\'.')
                                end -- (ZEA)
                        else -- (ZE)
                                doPlayerSendCancel(cid,'Desculpe, mas você não pode votar mais de uma vez em uma unica votação.')
                        end -- (ZE)
                else -- (ZC)
                        doPlayerSendCancel(cid,'Não esta ocorrendo votações no momento.')
                end -- (ZC)
        elseif words == cmds.cmdFecharVot and getPlayerAccess(cid) >= basicConfig.access then -- (Z)
                if getGlobalStorageValue(basicConfig.storagePower) == 1 then -- (ZB)
                        if getGlobalStorageValue(basicConfig.strS) == -1 then -- (ZBA)
                                setGlobalStorageValue(basicConfig.strS,0)
                        end -- (ZBA)
                        if getGlobalStorageValue(basicConfig.strN) == -1 then -- (ZBB)
                                setGlobalStorageValue(basicConfig.strN,0)
                        end -- (ZBB)
                        doPlayerSay(cid,'/B A votação terminou, Resultado:\nSIM > ' ..getGlobalStorageValue(basicConfig.strS).. ' x ' ..getGlobalStorageValue(basicConfig.strN)..' < NÃO.',1)
                        print('Votacao terminada em Sim '..getGlobalStorageValue(basicConfig.strS).. 'x' .. getGlobalStorageValue(basicConfig.strN) ..' Nao.')
                        playersVotaram = nil
                        setGlobalStorageValue(basicConfig.storagePower,-1)              
                        setGlobalStorageValue(basicConfig.strS,-1)              
                        setGlobalStorageValue(basicConfig.strN,-1)                                      
                else -- (ZB)
                        doPlayerSendCancel(cid,'Não existe uma votação iniciada.')
                end -- (ZB)
        end -- (Z)
        
end