if SERVER then AddCSLuaFile() end

ENT.Base = "base_nextbot"
ENT.Type = "nextbot"
ENT.PZClass = "scout"
ENT.Spawnable = false
ENT.AdminOnly = false
ENT.IsBoss = false
ENT.Difficulty = 0
ENT.PrintName		= "Scout"
ENT.Items = {}
ENT.Bot = nil
ENT.Category		= "TF2: MVM Bots"
ENT.PreferredName = nil
ENT.PreferredIcon = nil
list.Set( "NPC", "mvm_bot", {
	Name = ENT.PrintName,
	Class = "mvm_bot",
	Category = ENT.Category
} )

local function LeadBot_S_Add_Zombie(team,class,pos,ent)
	if !navmesh.IsLoaded() then
		ErrorNoHalt("There is no navmesh! Generate one using \"nav_generate\"!\n")
		return
	end

	local name = string.upper(string.sub(class,1,1))..string.sub(class,2)
	
	local bot
	if (ent.PZClass == "giantheavyheater") then
		bot = player.CreateNextBot("Heavyweapons")
	else
		if (ent.PreferredName != nil) then
			bot = player.CreateNextBot(ent.PreferredName)
		else
			bot = player.CreateNextBot(ent.PrintName)
		end
	end
	local teamv = TEAM_RED
	if team == 1 then
		if (ent.PZClass == "wtfdemoman") then
			teamv = TEAM_NEUTRAL
		else
			teamv = TEAM_BLU	
		end
	end

	if !IsValid(bot) then ErrorNoHalt("[LeadBot] Player limit reached!\n") return end
	bot.LastSegmented = CurTime() + 1

	bot.ControllerBot = ents.Create("ctf_bot_navigator")
	bot.ControllerBot:Spawn()
	bot.ControllerBot:SetOwner(bot)

	bot.LastPath = nil
	bot.CurSegment = 2
	bot.TFBot = true
	bot.IsL4DZombie = true
	bot.BotStrategy = math.random(0, 1)
	bot:SetNWString("PreferredIcon",ent.PreferredIcon)

    --timer.Simple(1, function()
        ----TalkToMe(bot, "join")
    --end)
	bot:SetTeam(teamv)
	bot:SetPlayerClass(class)
	bot:SetPos(pos)
	bot.IsMVMRobot = true
	bot.IsBoss = ent.IsBoss
	bot.Difficulty = ent.Difficulty
	timer.Simple(0.1, function()
		if IsValid(bot) then
			--bot:SetPlayerClass(class) 
			if (bot:GetPlayerClass() == "bowman_rapid_fire") then
				bot:ManipulateBoneScale(bot:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
			elseif (bot:GetPlayerClass() == "scout_shortstop") then
				bot:ManipulateBoneScale(bot:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
			end
			timer.Simple(0.3, function()
			
				bot:SetNWString("PreferredIcon",ent.PreferredIcon)
				
			end)
			bot:SetBloodColor(DONT_BLEED)
			bot.TFBot = true
			
			local class = bot.playerclass
			if (string.find(class,"demoman")) then
				class = "demo"
			elseif (string.find(class,"Demoman")) then
				class = "demo"
			elseif (string.find(class,"demoknight")) then
				class = "demo"
			end
		end
	end)

	MsgN("[LeadBot] Bot " .. name .. " with strategy " .. bot.BotStrategy .. " added!")
	return bot
end

function ENT:CustomOnInitialize(bot) -- i did not steal this
end
function ENT:Initialize()
	self:SetModel("models/bots/scout/bot_scout.mdl")
	self:ResetSequence(self:SelectWeightedSequence(ACT_MP_STAND_MELEE))
	self:SetSolid(SOLID_NONE)
	self:SetModelScale(1)
	self:SetFOV(90)
	self.bots = {}
	self.infected = {}
	
    local npc = LeadBot_S_Add_Zombie(1,self.PZClass,self:GetPos(),self)
    if (!IsValid(npc)) then 
        ErrorNoHalt("The bot could not spawn because you are in singleplayer!") 
        return 
    end
    self:SetModel(npc:GetModel())
	self:ResetSequence(self:SelectWeightedSequence(ACT_MP_STAND_MELEE))
	npc:SetNWString("PreferredIcon",self.PreferredIcon)
	timer.Simple(0.3, function()
	
		npc:SetSkin(1)
		local class = npc:GetPlayerClass()
		if (class != "scout" and 
			class != "soldier" and 
			class != "pyro" and 
			class != "demoman" and 
			class != "heavy" and 
			class != "engineer" and 
			class != "medic" and 
			class != "sniper" and 
			class != "spy" and 
			class != "gmodplayer") 
		then
			
			local class = npc.playerclass
			if (string.find(class,"demoman")) then
				class = "demo"
			elseif (string.find(class,"Demoman")) then
				class = "demo"
			elseif (string.find(class,"demoknight")) then
				class = "demo"
			end
			if (self.IsBoss) then
				if (self.PZClass == "wtfdemoman") then
					
					npc:SetModel("models/bots/"..class.."/bot_"..class..".mdl")
					npc:SetModelScale(0.45	)	
					npc:StopSound("MVM.GiantScoutLoop")
					npc:StopSound("MVM.GiantSoldierLoop")
					npc:StopSound("MVM.GiantPyroLoop")
					npc:StopSound("MVM.GiantDemomanLoop")
					npc:StopSound("MVM.GiantHeavyLoop")
					npc:StopSound("MVM.GiantWTFDemomanLoop")
					npc:EmitSound("MVM.GiantWTFDemomanLoop")
					
				else
					
					if (npc:GetPlayerClass() != "sentrybuster") then
						if (npc:GetPlayerClass() == "engineer" or npc:GetPlayerClass() == "medic" or npc:GetPlayerClass() == "giantmedic" or npc:GetPlayerClass() == "sniper" or npc:GetPlayerClass() == "spy") then
							npc:SetModel("models/bots/"..class.."/bot_"..class..".mdl")
							npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
						else
							npc:SetModel("models/bots/"..class.."_boss/bot_"..class.."_boss.mdl")
						end
					else
						npc:SetModel("models/bots/demo/bot_sentry_buster.mdl")
					end
					if (self.PZClass == "captain_punch") then
						npc:SetModelScale(1.9)	
					else
						npc:SetModelScale(1.75)	
					end
					npc:StopSound("MVM.GiantScoutLoop")
					npc:StopSound("MVM.GiantSoldierLoop")
					npc:StopSound("MVM.GiantPyroLoop")
					npc:StopSound("MVM.GiantDemomanLoop")
					npc:StopSound("MVM.GiantHeavyLoop")
					timer.Simple(0.2, function()
					
						if (npc.playerclass == "Scout") then
							npc:EmitSound("MVM.GiantScoutLoop")
						elseif (npc.playerclass == "Soldier") then
							npc:EmitSound("MVM.GiantSoldierLoop")
						elseif (npc.playerclass == "Pyro") then
							npc:EmitSound("MVM.GiantPyroLoop")
						elseif (npc.playerclass == "Demoman") then
							npc:EmitSound("MVM.GiantDemomanLoop")
						elseif (npc.playerclass == "Heavy") then
							npc:EmitSound("MVM.GiantHeavyLoop")
						end	
						self:CustomOnInitialize(npc)
					end)
				end
				
			else
				npc:SetModel("models/bots/"..class.."/bot_"..class..".mdl")
				if (npc:GetPlayerClass() == "bowman_rapid_fire") then
					npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
				elseif (npc:GetPlayerClass() == "scout_shortstop") then
					npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
				end
			end	
		else
			local class = npc:GetPlayerClass()
			if (string.find(class,"demoman")) then
				class = "demo"
			elseif (string.find(class,"Demoman")) then
				class = "demo"
			elseif (string.find(class,"demoknight")) then
				class = "demo"
			end
			if (self.IsBoss) then
				if (npc:GetPlayerClass() == "engineer" or npc:GetPlayerClass() == "medic" or npc:GetPlayerClass() == "giantmedic" or npc:GetPlayerClass() == "sniper" or npc:GetPlayerClass() == "spy") then
					npc:SetModel("models/bots/"..class.."/bot_"..class..".mdl")
					npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
				else
					npc:SetModel("models/bots/"..class.."_boss/bot_"..class.."_boss.mdl")
				end
				npc:SetModelScale(1.75)
			else
				npc:SetModel("models/bots/"..class.."/bot_"..class..".mdl")
				if (npc:GetPlayerClass() == "bowman_rapid_fire") then
					npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
				elseif (npc:GetPlayerClass() == "scout_shortstop") then
					npc:ManipulateBoneScale(npc:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
				end
			end		
			
		end
	end)
	self:SetNoDraw(true)
	self.Bot = npc
	timer.Simple(0.1, function()
		if (self.Items and !table.IsEmpty(self.Items)) then
			npc:StripWeapons() 
			for k,v in ipairs(self.Items) do
				npc:EquipInLoadout(v)
				timer.Simple(0.1, function()
					local wep = npc:GetWeapons()[1] or npc:GetWeapons()[2] or npc:GetWeapons()[3]
					npc:SelectWeapon(wep) 
				end)
			end
		end
	end)
end

function ENT:SpawnFunction( ply, tr, ClassName )

	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 16

	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()

	return ent

end

function ENT:RunBehaviour()
	while ( true ) do
		coroutine.yield()
	end
end

function ENT:OnRemove()
	if SERVER then
		self.Bot:Kick()
	end
end
function ENT:OnInjured()
	return false
end

function ENT:OnKilled()
	return false
end

function ENT:IsNPC()
	return false
end

function ENT:IsNextBot()
	return false
end

function ENT:Health()
	return nil
end