
local BASESPEED = 3

GM.PlayerClasses = {}
GM.PlayerClassesAutoComplete = {}
GM.GibTypeTable = {}

local TFHull = {Vector(-24, -24, 0), Vector(24, 24, 72)}
local TFHullDuck = {Vector(-24, -24, 0), Vector(24, 24, 48)}

local DefaultHull = {Vector(-24, -24, 0), Vector(24,  24,  62)}
local DefaultHullDuck = {Vector(-24, -24, 0), Vector(24,  24,  36)}

local randomizer = CreateConVar( "tf_randomizer", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY, FCVAR_ARCHIVE} )
local randomizerit = CreateConVar( "tf_randomizer_class_specific", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY, FCVAR_ARCHIVE} )
local dgmod = CreateConVar( "tf_disable_fun_classes", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE} )
local botrobot = CreateConVar( "tf_bots_are_robots", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY, FCVAR_ARCHIVE} )

cvars.AddChangeCallback("tf_disable_fun_classes", function(_, _, val)
	if SERVER and val == "1" then
		for k, v in pairs(player.GetAll()) do
			if v:GetPlayerClass() == "gmodplayer" then
				v:SetPlayerClass("scout")  
				v:Kill()
			end
		end
	end
end)

function GM:RegisterPlayerClass(name, tbl)
	for k,v in pairs(tbl.Gibs or {}) do  
		self.GibTypeTable[v] = k
	end
	
	local mdl = "models/player/"..(tbl.ModelName or "scout")..".mdl"
	util.PrecacheModel(mdl)
	--PrintTable(tbl)
	self.PlayerClasses[name] = tbl
	table.insert(self.PlayerClassesAutoComplete, "changeclass "..name)
end

function GM:LoadPlayerClasses()
	local path = string.Replace(GM.Folder, "gamemodes/", "").."/gamemode/playerclasses/"
	for _,f in pairs(file.Find(path.."*.lua", "LUA")) do
		CLASS = {}
		AddCSLuaFile(path..f)
		include(path..f)
		
		local classname = string.Replace(f, ".lua", "")
		self:RegisterPlayerClass(classname, CLASS)
		
		if SERVER then
			Msg("Registered class \""..classname.."\"\n")
		end
	end
end

GM:LoadPlayerClasses()

-- Player extension

local meta = FindMetaTable( "Player" )
if (!meta) then return end 

-- Serverside only
if SERVER then

local function InitPlayerBodygroups(pl)
	if IsValid(pl) then
		for _,v in pairs(pl:GetTFItems()) do
			if v.ApplyPlayerBodygroups then
				v:ApplyPlayerBodygroups()
			end
		end
	end
end

function meta:SetPlayerClass(class)
	self.anim_Deployed = false
	class = string.lower(class)

	if dgmod:GetBool() and (class == "gmodplayer" or class == "civilian") then
		return
	end
	
	local oldclass = self:GetPlayerClass()
	local t1 = GAMEMODE.PlayerClasses[oldclass]
	
	if t1 and t1.ChangeClass then t1.ChangeClass(self, class) end
	
	local c = GAMEMODE.PlayerClasses[class]
	if not c then
		-- idiot proof
		ErrorNoHalt("WARNING : Class \""..class.."\" not found\n")
		return
	end
	
	if PlayerNamedBodygroups[oldclass] then
		for _,v in pairs(PlayerNamedBodygroups[oldclass]) do
			self:SetBodygroup(v, 0)
		end
		
		for _,v in pairs(PlayerNamedViewmodelBodygroups[oldclass]) do
			self:GetViewModel():SetBodygroup(v, 0)
		end
	end
	
	self.TempAttributes = {}
	self.NextSpeak = nil
	
	-- Update all the needed Networked info
	if class~=self:GetNWString("PlayerClass") then
		if c.DefaultLoadout then
			self.ItemLoadout = table.Copy(c.DefaultLoadout)
			self.ItemProperties = {}
		else
			self.ItemLoadout = nil
			self.ItemProperties = nil
		end
	end
	self:SetNWInt("Heads", 0)
	self:SetNWString("PlayerClass", class)
	self:SetNWBool("IsHL2", (c.IsHL2~=false and c.IsHL2~=nil)) -- Doing this so the result is an actual boolean (else it seems not to work properly)
	self:SetNWBool("IsL4D", (c.IsL4D~=false and c.IsL4D~=nil)) -- Doing this so the result is an actual boolean (else it seems not to work properly)
	
	-- Set speed and health
	if (class != "scout" and self:GetInfoNum("tf_giant_robot",0) == 1) then
		self:SetClassSpeed((c.Speed or 100) * 0.5)
	else
		self:SetClassSpeed(c.Speed or 100)
	end
	self:ResetMaxHealth()
	
	if c.IsHL2 then -- ...however, only gmodplayers use the default view offset, TF2 players keep their own view height even when playing a HL2 map

		self.PlayerJumpPower = 200
	else

		self.PlayerJumpPower = 240
	end
	self:SetJumpPower(self.PlayerJumpPower)

	-- Hull and view offset
	if self:ShouldUseDefaultHull() then -- In HL2 maps, all players should have a normal collision hull so they can go through doors properly...
		-- Default hull
		self:ResetHull()
		self:SetStepSize(18)
		self:SetViewOffset(Vector(0,0,62))
		self:SetViewOffsetDucked(Vector(0, 0, 28))
		--self:SetCollisionBounds(unpack(DefaultHull))
	else
		-- Special hull, because TF2 players are larger than HL2 players
		self:SetHull(unpack(TFHull))
		self:SetHullDuck(unpack(TFHullDuck))
		--self:SetCollisionBounds(unpack(TFHull))
		self:SetStepSize(18)
	end
	self:SetDuckSpeed(0.2)
	
	-- Remove all weapons
	self:StripTFItems()
	self:ClearItemSetAttributes()
	self:GiveItemSetAttributes()
	
	-- Give ammo, and weapons
	self.AmmoMax = table.Copy(c.AmmoMax or {}) 
	
	for k,v in pairs(c.AdditionalAmmo or {}) do
		self:GiveAmmo(v, k, true)
	end
	
	if self.ItemLoadout then
		for k,v in ipairs(self.ItemLoadout or {}) do
			self:GiveItem(v, self.ItemProperties[k])
		end
	else
		for k,v in ipairs(c.Loadout or {}) do
			self:Give(v)
		end
	end
	
	self:ResetHealth()
	self:ResetArmor()
	
	if c.Buildings then
		self.Buildings = tf_objects.GetBuildables(c.Buildings)
		self:GiveItem("TF_WEAPON_BUILDER")
	end
	
	for k,v in pairs(self.AmmoMax or {}) do
		self:SetAmmoCount(v, k)
	end
	
	-- Capitalize player class because the talker system wants to :/
	-- This is used for playing scenes
	if (self:GetPlayerClass() == "superscout" || self:GetPlayerClass() == "melee_scout" || self:GetPlayerClass() == "melee_scout_expert" || self:GetPlayerClass() == "melee_scout_sandman" || self:GetPlayerClass() == "giantscout" || self:GetPlayerClass() == "scoutfan" || self:GetPlayerClass() == "scout_shortstop" || self:GetPlayerClass() == "superscoutfan" || self:GetPlayerClass() == "bonk_scout") then
		self.playerclass = "Scout"
	elseif (self:GetPlayerClass() == "demoknight" || self:GetPlayerClass() == "samuraidemo" || self:GetPlayerClass() == "sentrybuster" || self:GetPlayerClass() == "giantdemoman" || self:GetPlayerClass() == "wtfdemoman" || self:GetPlayerClass() == "giantdemoknight") then
		self.playerclass = "Demoman"
	elseif (self:GetPlayerClass() == "soldierblackbox" || self:GetPlayerClass() == "soldierbuffed" || self:GetPlayerClass() == "giantsoldier" || self:GetPlayerClass() == "giantsoldiercharged" || self:GetPlayerClass() == "giantsoldierrapidfire") then
		self.playerclass = "Soldier"
	elseif (self:GetPlayerClass() == "giantheavy" || self:GetPlayerClass() == "giantheavyheater" || self:GetPlayerClass() == "giantheavyshotgun" || self:GetPlayerClass() == "heavyshotgun" || self:GetPlayerClass() == "heavyweightchamp" || self:GetPlayerClass() == "steelgauntlet" || self:GetPlayerClass() == "steelgauntletpusher" || self:GetPlayerClass() == "captain_punch" || self:GetPlayerClass() == "superheavyweightchamp") then
		self.playerclass = "Heavy"
	elseif (self:GetPlayerClass() == "bowman" or self:GetPlayerClass() == "bowman_rapid_fire") then		
		self.playerclass = "Sniper"
	elseif (self:GetPlayerClass() == "giantpyro" || self:GetPlayerClass() == "pyro_flare") then
		self.playerclass = "Pyro"
	elseif (self:GetPlayerClass() == "giantmedic" || self:GetPlayerClass() == "kritzmedic") then
		self.playerclass = "Medic"
	else
		if (self:GetPlayerClass() == "spy") then
			if (self:GetModel() == "models/player/scout.mdl") then
				self.playerclass = "Scout"
			elseif (self:GetModel() == "models/player/soldier.mdl") then
				self.playerclass = "Soldier"
			elseif (self:GetModel() == "models/player/pyro.mdl") then
				self.playerclass = "Pyro"
			elseif (self:GetModel() == "models/player/demo.mdl") then
				self.playerclass = "Demoman"
			elseif (self:GetModel() == "models/player/heavy.mdl") then
				self.playerclass = "Heavy"
			elseif (self:GetModel() == "models/player/engineer.mdl") then
				self.playerclass = "Engineer"
			elseif (self:GetModel() == "models/player/medic.mdl") then
				self.playerclass = "Medic"
			elseif (self:GetModel() == "models/player/sniper.mdl") then
				self.playerclass = "Sniper"
			else
				self.playerclass = string.upper(string.sub(class,1,1))..string.sub(class,2)	
			end
		else
			self.playerclass = string.upper(string.sub(class,1,1))..string.sub(class,2)	
		end
	end
	if (class == "nick") then
		self.Who = "Gambler"
	elseif (class == "coach") then
		self.Who = "Coach"
	elseif (class == "rochelle") then
		self.Who = "Producer"
	elseif (class == "ellis") then
		self.Who = "Mechanic"
	elseif (class == "bill") then
		self.Who = "Namvet"
	elseif (class == "francis") then
		self.Who = "Biker"
	elseif (class == "louis") then
		self.Who = "Manager"
	elseif (class == "zoey") then
		self.Who = "Teengirl"
	else
		self.Who = string.upper(string.sub(class,1,1))..string.sub(class,2)
	end
	if (self:Team() == TEAM_RED) then
		self.Team = "Survivor"
	else
		self.Team = "Infected"
	end
	
	-- Setting the model, obviously
	-- Stupid way to enable robots, but we just comment out class model already being defined!
	--if not c.Model then
		if self:GetInfoNum("tf_robot", 0) == 1 or (botrobot:GetBool() and self:IsBot()) or (self:IsBot() and self:Team() == TEAM_BLU and string.find(game.GetMap(), "mvm_") or (self:IsBot() and self.IsMVMRobot and !self.IsBoss)) then--or self:IsBot() then
			c.Model = "models/bots/"..(c.ModelName or "scout").."/bot_"..(c.ModelName or "scout")..".mdl"
		elseif self:GetInfoNum("tf_tfc_model_override", 0) == 1 then--or self:IsBot() then
			c.Model = "models/player/tfc_"..(c.ModelName or "scout")..".mdl"
		else 
			c.Model = "models/player/"..(c.ModelName or "scout")..".mdl"
		end
		if self:GetInfoNum("tf_giant_robot", 0) == 1 then
			if self:GetPlayerClass() != "medic" and self:GetPlayerClass() != "sniper" and self:GetPlayerClass() != "engineer" and self:GetPlayerClass() != "spy" then
				c.Model = "models/bots/"..(c.ModelName or "scout").."_boss/bot_"..(c.ModelName or "scout").."_boss.mdl"
			else
				c.Model = "models/bots/"..(c.ModelName or "scout").."/bot_"..(c.ModelName or "scout")..".mdl"
			end
			self:StopSound("MVM.GiantScoutLoop")
			self:StopSound("MVM.GiantSoldierLoop")
			self:StopSound("MVM.GiantPyroLoop")
			self:StopSound("MVM.GiantDemomanLoop")
			self:StopSound("MVM.GiantHeavyLoop")
			if (self:GetPlayerClass() == "scout") then
				self:EmitSound("MVM.GiantScoutLoop")
			elseif (self:GetPlayerClass() == "soldier") then
				self:EmitSound("MVM.GiantSoldierLoop")
			elseif (self:GetPlayerClass() == "pyro") then
				self:EmitSound("MVM.GiantPyroLoop")
			elseif (self:GetPlayerClass() == "demoman") then
				self:EmitSound("MVM.GiantDemomanLoop")
			elseif (self:GetPlayerClass() == "heavy") then
				self:EmitSound("MVM.GiantHeavyLoop")
			elseif (self:GetPlayerClass() == "engineer") then
				self:EmitSound("MVM.GiantHeavyLoop")
			elseif (self:GetPlayerClass() == "medic") then
				self:EmitSound("MVM.GiantSoldierLoop")
			elseif (self:GetPlayerClass() == "sniper") then
				self:EmitSound("MVM.GiantHeavyLoop")
			elseif (self:GetPlayerClass() == "spy") then
				self:EmitSound("MVM.GiantDemomanLoop")
			end	
			self:SetModelScale(1.75)
			if self:GetPlayerClass() == "medic" and self:GetPlayerClass() == "pyro" and self:GetPlayerClass() == "soldier" and self:GetPlayerClass() == "demoman" and self:GetPlayerClass() == "engineer" and self:GetPlayerClass() == "sniper" then
				self:SetHealth(3600)
				self:SetMaxHealth(3600)
			elseif self:GetPlayerClass() == "scout" and self:GetPlayerClass() == "spy" then
				self:SetHealth(1300)
				self:SetMaxHealth(1300)	
			elseif self:GetPlayerClass() == "heavy" then
				self:SetHealth(5000)
				self:SetMaxHealth(5000)			
			end
			self:SetModelScale(1.75)
		end
	--end
	
	self:SetModelScale(1.0)
	self:SetModel(c.Model)
	-- If this class needs some special initialization, do it
	if c.Initialize then c.Initialize(self) end
	
	-- Notify the client that their class has changed
	umsg.Start("PlayerClassChanged")
		umsg.Long(self:EntIndex()) 
		umsg.String(oldclass)
		umsg.String(class)
	umsg.End()
	
	timer.Simple(0, function() InitPlayerBodygroups(self) end)
	self:ResetClassSpeed()
	
	if (!self:IsHL2() and !self:IsL4D()) then
		if (self:GetPlayerClass() == "bowman_rapid_fire") then
			self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(0.7, 0.7, 0.7))
		elseif (self:GetPlayerClass() == "scout_shortstop") then
			self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
		elseif (self:GetPlayerClass() != "	" and self:GetInfoNum("tf_giant_robot",0) == 1) then
			self:SetModelScale(1.75) 
				if (!string.find(self:GetModel(),"boss")) then
					self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
				else
					self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(1, 1, 1))
				end
		elseif (self:GetPlayerClass() == "scout" and self:GetInfoNum("tf_giant_robot",0) == 1) then
			self:SetModelScale(1.75)
				if (!string.find(self:GetModel(),"boss")) then
					self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(0.75, 0.75, 0.75))
				else
					self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(1, 1, 1))
				end
		else
				self:ManipulateBoneScale(self:LookupBone("bip_head"),Vector(1, 1, 1))
		end
	end
end


function meta:SetClassSpeed(sp)
	if !self:IsHL2() then
		if (self:GetPlayerClass() != "scout" and self:GetInfoNum("tf_giant_robot",0) == 1) then
			self:SetModelScale(1.75)
			sp = sp * 0.5
		elseif (self:GetPlayerClass() == "scout" and self:GetInfoNum("tf_giant_robot",0) == 1) then
			self:SetModelScale(1.75)
		end
		self:SetWalkSpeed(sp) 
		self:SetRunSpeed(sp) 
		--self:SetJumpPower(self.PlayerJumpPower)
		self:SetCrouchedWalkSpeed(0.33)
		self:SetNWFloat("ClassSpeed", sp) 
	else
		self:SetWalkSpeed(240)
		self:SetRunSpeed(400)
		self:SetCrouchedWalkSpeed(0.30)
		self:SetNWFloat("ClassSpeed", sp)
	end
end

function meta:ResetClassSpeed()
	local c = self:GetPlayerClassTable()
	local sp = 100
	if c and c.Speed then sp = c.Speed end
	
	if self.TempAttributes then
		--[[sp = sp * (self.TempAttributes.SpeedBonus or 1) * (self:GetActiveWeapon().LocalSpeedBonus or 1)
		+ (self.TempAttributes.AdditiveSpeedBonus or 0) + (self:GetActiveWeapon().LocalAdditiveSpeedBonus or 0)]]
		
		local mul_speedbonus = self.TempAttributes.SpeedBonus or 1
		local add_speedbonus = self.TempAttributes.AdditiveSpeedBonus or 0
		
		for _,v in ipairs(self:GetTFItems()) do
			if v == self:GetActiveWeapon() or not v.OnlyProvideAttributesOnActive then
				mul_speedbonus = mul_speedbonus * (v.SpeedBonus or 1)
				add_speedbonus = add_speedbonus + (v.AdditiveSpeedBonus or 0)
			end
			
			if v == self:GetActiveWeapon() then
				mul_speedbonus = mul_speedbonus * (v.LocalSpeedBonus or 1)
				add_speedbonus = add_speedbonus + (v.LocalAdditiveSpeedBonus or 0)
			end
		end
		
		if self.ItemSetTable then
			mul_speedbonus = mul_speedbonus * (self.ItemSetTable.SpeedBonus or 1)
			add_speedbonus = add_speedbonus + (self.ItemSetTable.AdditiveSpeedBonus or 0)
		end
		
		sp = sp * mul_speedbonus + add_speedbonus
	end
	
	self:SetClassSpeed(sp)
	self:SetJumpPower(self.PlayerJumpPower)
end

end

if CLIENT then

local function PlayerClassChanged(id, oldclass, newclass, timeout)
	local pl = Entity(id)
	
	-- Because when the player spawns for the first time, their clientside entity seems not to have been created yet when this is called
	-- So we keep on trying till we run out of cake, err... I mean, until LocalPlayer() exists
	-- Also, there is no failsafe exit, because this should never loop forever unless something really wrong happens
	if not IsValid(pl) then
		if timeout then
			timeout = timeout - 0.05
			if timeout <= 0 then
				return
			end
		end
		
		timer.Simple(0.05, function() PlayerClassChanged(id, oldclass, newclass, timeout) end)
		return
	end
	
	--MsgFN("PlayerClassChanged %s", tostring(pl))
	
	local t1 = GAMEMODE.PlayerClasses[oldclass]
	local t2 = GAMEMODE.PlayerClasses[newclass]
	
	if t2 then
		pl:SetNWBool("IsHL2", t2.IsHL2 or false)
	end
	
	if pl:ShouldUseDefaultHull() then
		pl:ResetHull()
	else
		pl:SetHull(unpack(TFHull))
		pl:SetHullDuck(unpack(TFHullDuck))
	end
	
	pl:SetDuckSpeed(0.2)
	pl.TempAttributes = {}
	
	if pl == LocalPlayer() then
		--GAMEMODE:InitWeaponSelection(newclass)
		LocalPlayer().ShouldUpdateWeaponSelection = true
		
		if t1 and t1.ChangeClass then t1.ChangeClass(LocalPlayer(), newclass) end
		if t2 and t2.Initialize then t2.Initialize(LocalPlayer()) end
	end
	
	if t2.Buildings then
		pl.Buildings = tf_objects.GetBuildables(t2.Buildings)
		pl.BuilderInit = pl.Buildings
	end
end

usermessage.Hook("PlayerClassChanged", function(msg)
	local id = msg:ReadLong()
	local oldclass = msg:ReadString()
	local newclass = msg:ReadString()
	
	PlayerClassChanged(id, oldclass, newclass, 2)
end)

end

-- Shared

function meta:GetPlayerClass()
	return self:GetNWString("PlayerClass")
end

function meta:GetPlayerClassTable()
	return GAMEMODE.PlayerClasses[self:GetPlayerClass()]
end

function meta:GetRealClassSpeed()
	local sp = self:GetNWFloat("ClassSpeed")
	
	if sp==0 then return 100
	else return sp
	end
end

function meta:GetClassSpeed()
	return self:GetNWFloat("ClassSpeed")
end


PlayerNamedBodygroups = {
	["demo"] = {},
	["engineer"] = {hat=1,rightarm=2},
	["heavy"] = {hands=1},
	["medic"] = {},
	["pyro"] = {head=1,grenades=2},
	["scout"] = {hat=1,headphones=2,shoes_socks=3},
	["sniper"] = {arrows=1,hat=2,bullets=3},
	["soldier"] = {hat=2,medal=3,grenades=4},
	["spy"] = {},
}

PlayerNamedViewmodelBodygroups = {
	["demo"] = {},
	["engineer"] = {rightarm=1},
	["heavy"] = {},
	["medic"] = {},
	["pyro"] = {},
	["scout"] = {},
	["sniper"] = {},
	["soldier"] = {},
	["spy"] = {},
}

ClassToMedalBodygroup = {
	["scout"] 		= 0,
	["sniper"] 		= 1,
	["soldier"] 	= 2,
	["demo"] 		= 3,
	["medic"] 		= 4,
	["heavy"] 		= 5,
	["pyro"] 		= 6,
	["spy"] 		= 7,
	["engineer"] 	= 8,
}