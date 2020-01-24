-- SpellKiba generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 300ms
local combat3_Brush_3 = createCombatObject()
setCombatParam(combat3_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat3_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_3,createCombatArea({{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 2, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (600)*-700,(600)*-700
end
setCombatCallback(combat3_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")local combat3_Brush_7 = createCombatObject()
setCombatParam(combat3_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat3_Brush_7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_7,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (600)*-700,(600)*-700 
end
setCombatCallback(combat3_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- Areas/Combat for 0ms
local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{1, 0, 0, 0, 1},
{0, 0, 1, 0, 0},
{0, 1, 2, 1, 0},
{0, 0, 1, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (600)*-700,(600)*-700 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat0_Brush_6 = createCombatObject()
setCombatParam(combat0_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_6,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (600)*-700,(600)*-700 
end
setCombatCallback(combat0_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

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
	addEvent(RunPart,300,combat3_Brush_3,cid,var)
	addEvent(RunPart,300,combat3_Brush_7,cid,var)
	RunPart(combat0_Brush_2,cid,var)
	RunPart(combat0_Brush_6,cid,var)
	return true
end