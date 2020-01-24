-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_MIRRORVERTICAL)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 0, 0, 0, 1},
{1, 0, 0, 0, 1},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{1, 0, 0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (1200)*-800,(1250)*-700
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_EXPLOSION,-2,0,-2,2,-2,-3,-2,-1,-2,1,2,0,2,1,2,2,2,-1,-2,-2,2,-2,2,-3}local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MIRRORHORIZONTAL)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{0, 1, 1, 1},
{0, 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 2, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{1, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (1200)*-800,(1250)*-700
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat0_Brush_2 = {CONST_ANI_EXPLOSION,1,3,0,3,-1,3,-2,3,-1,-3,0,-3,1,-3}local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_SMALLCLOUDS)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{1, 1, 1},
{1, 1, 1},
{1, 3, 1},
{1, 1, 1},
{1, 1, 1}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (1200)*-800,(1250)*-700
end
setCombatCallback(combat0_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")
local dfcombat0_Brush_4 = {CONST_ANI_SUDDENDEATH,1,2,0,2,-1,2,-1,1,-1,0,0,1,1,1,1,0,1,-1,1,-2,0,-2,-1,-2,-1,-1,0,-1,0,0}

-- Areas/Combat for 200ms
local combat2_Brush_5 = createCombatObject()
setCombatParam(combat2_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat2_Brush_5, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat2_Brush_5,createCombatArea({{1, 1, 1},
{1, 1, 1},
{1, 3, 1},
{1, 1, 1},
{1, 1, 1}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (1200)*-800,(1250)*-700
end
setCombatCallback(combat2_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")
local dfcombat2_Brush_5 = {CONST_ANI_FIRE,1,2,1,1,1,0,1,-1,1,-2,0,-2,-1,-2,-1,-1,-1,0,-1,1,-1,2,0,2,0,1,0,0,0,-1}

-- Areas/Combat for 600ms
local combat6_Brush_6 = createCombatObject()
setCombatParam(combat6_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_STONES)
setCombatParam(combat6_Brush_6, COMBAT_PARAM_TYPE, COMBAT_UNDEFINEDDAMAGE)
setCombatArea(combat6_Brush_6,createCombatArea({{1, 1, 1},
{1, 1, 1},
{1, 3, 1},
{1, 1, 1},
{1, 1, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (1200)*-800,(1250)*-700
end
setCombatCallback(combat6_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")
local dfcombat6_Brush_6 = {CONST_ANI_WHIRLWINDCLUB,1,2,1,1,1,0,1,-1,1,-2,0,-2,0,-1,-1,-1,-1,-2,-1,0,-1,1,-1,2,0,2,0,1,0,0}

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
	RunPart(combat0_Brush_2,cid,var,dfcombat0_Brush_2,startPos)
	RunPart(combat0_Brush_4,cid,var,dfcombat0_Brush_4,startPos)
	addEvent(RunPart,200,combat2_Brush_5,cid,var,dfcombat2_Brush_5,startPos)
	addEvent(RunPart,600,combat6_Brush_6,cid,var,dfcombat6_Brush_6,startPos)
	return true
end