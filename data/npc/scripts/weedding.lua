local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	if msgcontains(msg, 'casar') or msgcontains(msg, 'marriage') then
		if getPlayerStorageValue(cid,3066) == -1 then
			selfSay('te quieres casar?', cid)
			talkState[talkUser] = 1
		elseif getPlayerStorageValue(cid,3066) == 1 then
			local fid = getPlayerGUID(cid)
			local marrystatus = getOwnMarryStatus(fid)
			if marrystatus ~= 0 then
				local newpartner = getPlayerNameByGUID(marrystatus)
				selfSay('¿Alguna vez ha fijado una fecha de la boda con {' .. newpartner .. '}, ahora tengo que hablar con su pareja. uested quiere {cancelar}?', cid)
				talkState[talkUser] = 5
			else
				setPlayerStorageValue(cid,3066,-1)
				selfSay('¿Te quieres casar?', cid)
				talkState[talkUser] = 1
			end
		elseif getPlayerStorageValue(cid,3066) == 2 then
			selfSay('Usted ya está casado. si decea {divorcio}, simplemente decir.', cid)
			talkState[talkUser] = 0
		end

	elseif msgcontains(msg, 'divorcio') then
		if getPlayerStorageValue(cid,3066) == 2 then
			selfSay('¿Estás seguro de que desea divorciarse de su pareja?', cid)
			talkState[talkUser] = 6
		else
			selfSay('Usted no se ha casado. Quieres {casar}?', cid)
			talkState[talkUser] = 0
		end
	end

	if talkState[talkUser] == 1 then
		if msgcontains(msg, 'yes') then
			local fid = getPlayerGUID(cid)
			local marrystatus = getMarryStatus(fid)
			if marrystatus == FALSE then
				selfSay('cual es el nombre de su futura pareja?', cid)
				talkState[talkUser] = 2
			else
				local marryname = getPlayerNameByGUID(marrystatus)
				selfSay('{' .. marryname .. '} marca la fecha de la boda con usted. usted quiere {continuar} o {cancelar} con el casamiento?', cid)
				talkState[talkUser] = 4
			end
		end

	elseif talkState[talkUser] == 2 then
		local p = msg
		local player = getPlayerName(cid)
		local fid = getPlayerGUID(cid)
		local sid = getPlayerGUIDByName(p)
		if sid == 0 then
			selfSay('No hay ningún jugador con ese nombre.', cid)
			talkState[talkUser] = 0
		elseif sid == fid then
			selfSay('No te preocupes, siempre vas a estar casada con usted, chico.', cid)
			talkState[talkUser] = 0
		else
			local marrystatus = getMarryStatus(fid)
			local pmarriage = getPlayerMarriage(sid)
			local ownstatus = getOwnMarryStatus(cid)
			if pmarriage == FALSE then
				if marrystatus == FALSE then
					if ownstatus == FALSE then
						setPlayerStorageValue(cid,3066,1)
						addMarryStatus(fid,sid)
						selfSay('Usted acaba de marcar un matrimonio con {' .. p .. '}.', cid)
						talkState[talkUser] = 0
					else
						local partnername = getPlayerNameByGUID(ownstatus)
						selfSay('{' .. p .. '} que ya está marcada la fecha del matrimonio {' .. partnername .. '}.', cid)
						talkState[talkUser] = 0
					end
				else
					local marryname = getPlayerNameByGUID(marrystatus)
					selfSay('{' .. marryname .. '} marca la fecha de la boda con usted. Desea {continuar} o {cancelar} el casamiento?', cid)
					talkState[talkUser] = 4
				end
			else
				local pname = getPlayerNameByGUID(pmarriage)
				selfSay('Disculpe, pero {' .. p .. '} esta casado con {' .. pname .. '}.', cid)
				talkState[talkUser] = 0
			end
		end

	elseif talkState[talkUser] == 4 then
		if msgcontains(msg, 'continuar') then
			local fid = getPlayerGUID(cid)
			local sid = getMarryStatus(fid)
			local marryname = getPlayerNameByGUID(sid)
			local pid = getPlayerByNameWildcard(marryname)
				local tmf = getCreaturePosition(cid)
				local	tms = getCreaturePosition(pid)
				local text = {'Yo te amo!','Mi amor!','Te amo washon :Z!'}
				local chance1 = math.random(1,table.getn(text))
				local chance2 = math.random(1,table.getn(text))
				local dateFormat = "%A %d"..getMonthDayEnding(os.date("%d")).." %B %Y"
                                local ring = doPlayerAddItem(cid,10502,1)
                                local ring2 = doPlayerAddItem(pid,10502,1)

			if isOnline(fid) == TRUE and isOnline(sid) == TRUE then
			if getDistanceBetween(tmf, tms) <= 3 then
					setPlayerStorageValue(cid,3066,2)
					setPlayerStorageValue(pid,3066,2)
					doCancelMarryStatus(fid)
					doCancelMarryStatus(sid)
					setPlayerPartner(cid,sid)
					setPlayerPartner(pid,fid)
                                        doPlayerAddOutfitId(cid,23,0)
                                        doPlayerAddOutfitId(pid,23,0)
                                        doItemSetAttribute(ring, "description", "" .. getCreatureName(cid) .. " & " .. getCreatureName(pid) .. " forever - married on " ..os.date(dateFormat).. ".")
                                        doItemSetAttribute(ring2, "description", "" .. getCreatureName(cid) .. " & " .. getCreatureName(pid) .. " forever - married on " ..os.date(dateFormat).. ".")
					doCreatureSay(cid, text[chance1], TALKTYPE_ORANGE_1)
					doCreatureSay(pid, text[chance2], TALKTYPE_ORANGE_1)
					doSendMagicEffect(tmf, 35)
					doSendMagicEffect(tms, 35)
					selfSay('Felicidades! Ahora usted puede besar! Siempre que quiera esto, simplemente diga {love}. usted necesidad de estar cerca de su pareja.', cid)
					talkState[talkUser] = 0

				else
					selfSay('Tu pareja debe estar cerca de usted para que pueda casarse!', cid)
					talkState[talkUser] = 0
				end
			else
				selfSay('Usted y su nuevo socio deberá estar en línea al mismo tiempo.', cid)
				talkState[talkUser] = 0
			end
			


		elseif msgcontains(msg, 'cancelar') then
			local fid = getPlayerGUID(cid)
			local sid = getMarryStatus(fid)
			local marryname = getPlayerNameByGUID(sid)
			local pid = getPlayerByNameWildcard(marryname)
			if isOnline(sid) == TRUE then
				setPlayerStorageValue(pid,3066,-1)
			end
			doCancelMarryStatus(sid)
			selfSay('Ha cancelado su fecha de matrimonio con {' .. marryname .. '}.', cid)
			talkState[talkUser] = 0
		end

	elseif talkState[talkUser] == 5 then
		if msgcontains(msg, 'cancelar') or msgcontains(msg, 'yes') then
			local fid = getPlayerGUID(cid)
			setPlayerStorageValue(cid,3066,-1)
			doCancelMarryStatus(fid)
			talkState[talkUser] = 0
		end

	elseif talkState[talkUser] == 6 then
		if msgcontains(msg, 'yes') then
			local fid = getPlayerGUID(cid)
			local sid = getPlayerPartner(cid)
			local marryname = getPlayerNameByGUID(sid)
			local pid = getPlayerByNameWildcard(marryname)
			if (isOnline(fid) == TRUE and isOnline(sid) == TRUE) then
				setPlayerStorageValue(cid,3066,-1)
				setPlayerStorageValue(pid,3066,-1)
				setPlayerPartner(cid,0)
				setPlayerPartner(pid,0)
                                doPlayerAddOutfitId(cid,23,-1)
                                doPlayerAddOutfitId(pid,23,-1)
				selfSay('Usted sólo se divorció de su ex pareja.', cid)
				talkState[talkUser] = 0
			else
				selfSay('Usted y su pareja deben estar en online al mismo tiempo.', cid)
				talkState[talkUser] = 0
			end
		end

	end


	return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())