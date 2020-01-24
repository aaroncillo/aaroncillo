function executeClean()
	doCleanMap()
	doBroadcastMessage("el mapa se limpio :P, siguiente limpieza en 2 horas.")
	return TRUE
end

function onThink(interval, lastExecution)
	doBroadcastMessage("la limpieza del mapa empieza en 30 segundos, por favor wn recoje tus items!")
	addEvent(executeClean, 30000)
	return TRUE
end