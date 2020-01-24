-- Spelkiba generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_FIRE,0,3,3,0,-3,0,0,-3}

-- Areas/Combat for 300ms
local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat3_Brush_2 = {CONST_ANI_FIRE,0,3,3,0,-3,0,0,-3}

-- Areas/Combat for 600ms
local combat6_Brush_4 = createCombatObject()
setCombatParam(combat6_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_CRAPS)
setCombatParam(combat6_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_4,createCombatArea({{1, 0, 0, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat6_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 800ms
local combat8_Brush_5 = createCombatObject()
setCombatParam(combat8_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
setCombatParam(combat8_Brush_5, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat8_Brush_5,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat8_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat8_Brush = {CONST_ANI_FIRE,1,0,-1,0,0,1,0,-1}

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
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,300,combat3_Brush_2,cid,var,dfcombat3_Brush_2,startPos)
	addEvent(RunPart,600,combat6_Brush_4,cid,var)
	addEvent(RunPart,800,combat8_Brush_5,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var,dfcombat8_Brush,startPos)
	return true
end