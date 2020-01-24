-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_megatest = createCombatObject()
setCombatParam(combat0_megatest, COMBAT_PARAM_EFFECT, CONST_ME_DRAGONHEAD)
setCombatParam(combat0_megatest, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat0_megatest, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_megatest,createCombatArea({{1, 0, 1, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 0, 1, 0, 0},
{1, 0, 0, 0, 1},
{0, 0, 1, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_megatest(cid, level, maglevel)
	return (30000)*-1,(50000)*-1 
end
setCombatCallback(combat0_megatest, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_megatest")
local dfcombat0_megatest = {CONST_ANI_ENERGYBALL,0,2,2,1,-2,1,0,-2,2,3,-2,3,0,4,2,5,-2,5,-2,-2,2,-2}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	RunPart(combat0_megatest,cid,var,dfcombat0_megatest,startPos)
	return true
end