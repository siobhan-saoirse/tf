	local allowedtaunts = {
"1",
"2",
"3",
}
local ENT_ID_CURRENT = 1
hook.Add("OnEntityCreated", "TF_DeathNoticeEntityID", function(ent)
	if IsValid(ent) then
		ent.DeathNoticeEntityID = ENT_ID_CURRENT
		ENT_ID_CURRENT = ENT_ID_CURRENT + 1
		if ENT_ID_CURRENT >= 16384 then
			ENT_ID_CURRENT = 1
		end
	end
end)

function GM:DoTFPlayerDeath(ent, attacker, dmginfo)
	if not IsValid(attacker) then return end
	
	local inflictor = (dmginfo and dmginfo:GetInflictor()) or game.GetWorld()
	
	local shouldgib = false
	
	if (IsValid(ent.ShovedAnimation)) then
		ent.ShovedAnimation:Remove()
		ent:SetNoDraw(false)
	end
	ent:StopSound("Weapon_Minifun.Fire")
	ent:StopSound("Weapon_Minigun.Fire")
	ent:StopSound("Weapon_Tomislav.ShootLoop")
	ent:StopSound("Weapon_Minifun.FireCrit")
	ent:StopSound("Weapon_Minigun.FireCrit")
	ent:StopSound("Weapon_Tomislav.FireCrit")
	if ent:IsNPC() and dmginfo and dmginfo:IsDamageType(DMG_BLAST) then
		umsg.Start("GibNPC")
			umsg.Entity(ent)
			umsg.Short(ent.DeathFlags)
		umsg.End()
		for _,v in pairs(ents.FindByClass("class C_ClientRagdoll")) do
			v:Fire("Kill", "", 0.1)
		end
	end

	if ent:IsPlayer() and ent:HasDeathFlag(DF_DECAP) then
		umsg.Start("GibPlayerHead")
			umsg.Entity(ent)
			umsg.Short(ent.DeathFlags)
		umsg.End()
	end
	if ent:IsPlayer() and ent:GetPlayerClass() == "l4d_zombie" then
		ent:EmitSound("vj_l4d_com/death/male/death_"..math.random(40,49)..".wav")
	end
	
	for k,v in ipairs(ents.FindByName("Spyragdoll"..ent:EntIndex())) do
		v:Fire("Kill", "", 0.1)
	end

	-- Remove all player states
	ent:SetPlayerState(0, true)
	if (ent:IsPlayer()) then
		if ent:GetNWBool("Taunting") == true then ent:SetNWBool("Taunting", false) ent:Freeze(false) ent:ConCommand("tf_firstperson") end
		if ent:GetNWBool("Bonked") == true then ent:SetNWBool("Bonked", false) ent:Freeze(false) ent:ConCommand("tf_firstperson") end
	end
	attacker.customdeath = ""
	local InflictorClass = gamemode.Call("GetInflictorClass", ent, attacker, inflictor)
	if (IsValid(InflictorClass)) then
		if string.find(InflictorClass, "headshot") then
			attacker.customdeath = "headshot"
			ent:SetNWBool("DeathByHeadshot", true)
		elseif string.find(InflictorClass, "backstab") then
			attacker.customdeath = "backstab"
			ent:SetNWBool("DeathByBackstab", true)
		end
	end

	
	if inflictor and inflictor.OnPlayerKilled then
		inflictor:OnPlayerKilled(ent)
	end
	
	ApplyAttributesFromEntity(inflictor, "on_kill", ent, inflictor, attacker)
	if attacker:IsPlayer() then
		ApplyGlobalAttributesFromPlayer(attacker, "on_kill", ent, inflictor, attacker)
	end
	
	self:ExtinguishEntity(ent)
	self:RemoveDamageCooperationsOnDeath(ent)
	
	if ent:IsPlayer() then
		ent:AddDeaths(1)
		ent:SetNWBool("Incapped", false)
	end
	
	if attacker:IsWeapon() then
		attacker = attacker:GetOwner()
	end
	
	if attacker:IsVehicle() and IsValid(attacker:GetDriver()) then
		attacker = attacker:GetDriver()
	end
	
	if attacker:IsPlayer() and attacker ~= ent then
		local score = inflictor.Score or 1
		if attacker.customdeath == "headshot" then
			attacker:AddHeadshots(1)
			score = score + (inflictor.HeadshotScore or 0.5)
		end
		if attacker.customdeath == "backstab" then
			attacker:AddBackstabs(1)
			score = score + 1
		end
		
		attacker:AddFrags(score * ent:GetScoreMultiplier())
		
		if ent:IsBuilding() then
			attacker:AddDestructions(1)
		else
			attacker:AddKills(1)
		end
	end
	
	local assistants = self:GetAllAssistants(ent, attacker)
	for a,v in pairs(assistants) do
		if a:IsPlayer() then
			a:AddAssists(1)
			a:AddFrags(0.5 * ent:GetScoreMultiplier())
			
			ApplyGlobalAttributesFromPlayer(a, "on_kill", ent, inflictor, attacker)
		end
		
		if v
			and isentity(v)
			and v.inflictor and
			v.inflictor:IsBuilding()
			and v.inflictor.AddAssists then
			v.inflictor:AddAssists(1)
		end
	end
	
	--[[
	print(ent)
	print("Global assist table")
	PrintTable(attacker.GlobalAssistants or {})
	print("Assist table")
	PrintTable(ent.DamageCooperations or {})
	print("Assistants")
	PrintTable(assistants)
	]]
	
	ent.KillerDominationInfo = 0
	
	if not ent.KillComboCounter then
		ent.KillComboCounter = {}
	end
	
	if not attacker.KillComboCounter then
		attacker.KillComboCounter = {}
	end
	
	ent.KillComboCounter[attacker] = 0
	attacker.KillComboCounter[ent] = (attacker.KillComboCounter[ent] or 0) + 1
	
	for a,_ in pairs(assistants) do
		if not a.KillComboCounter then
			a.KillComboCounter = {}
		end
		
		ent.KillComboCounter[a] = 0
		a.KillComboCounter[ent] = (a.KillComboCounter[ent] or 0) + 1
	end
	
	if attacker.KillComboCounter[ent] >= 4 then
		if self:PlayerIsNemesis(attacker, ent) then
			ent.KillerDominationInfo = 2 -- nemesis
		else
			self:TriggerDomination(ent, attacker)
			ent.KillerDominationInfo = 1 -- new nemesis
		end
	end
	
	for a,_ in pairs(assistants) do
		if a.KillComboCounter[ent] >= 4 then
			self:TriggerDomination(ent, a)
		end
	end
	
	if self:PlayerIsNemesis(ent, attacker) then
		self:TriggerRevenge(ent, attacker)
		ent.KillerDominationInfo = 3 -- revenge
	end
	
	for a,_ in pairs(assistants) do
		if self:PlayerIsNemesis(ent, a) then
			self:TriggerRevenge(ent, a)
		end
	end
	
	-- Voice responses
	if attacker:IsPlayer() and ent~=attacker then
		if ent:IsBuilding() then
				attacker:Speak("TLK_KILLED_OBJECT")
		else
			--self:AddKill(attacker)
			attacker.victimclass = ent.playerclass or ""
			attacker:Speak("TLK_KILLED_PLAYER")
		end
	end
	attacker.domination = ""
end

function GM:PostTFPlayerDeath(ent, attacker, inflictor)
	if GAMEMODE:EntityTeam(attacker) == TEAM_HIDDEN then
		return
	end
	
	if IsValid(inflictor) and attacker == inflictor and inflictor:IsPlayer() then
		inflictor = inflictor:GetActiveWeapon()
		if not IsValid(inflictor) then inflictor = attacker end
	end
	
	local cooperator = self:GetDisplayedAssistant(ent, attacker) or NULL
	--print("Displayed assistant")
	--print(cooperator)

	if attacker:IsWeapon() then
		attacker = attacker:GetOwner()
	end
	
	if attacker:IsVehicle() and IsValid(attacker:GetDriver()) then
		attacker = attacker:GetDriver()
	end
	
	local killer = attacker
	
	--[[if inflictor.KillCreditAsInflictor then
		killer = inflictor
	end]]
	
	-- X fell to a clumsy, painful death
	if ent.LastDamageInfo and ent.LastDamageInfo:IsFallDamage() then
		umsg.Start("Notice_EntityFell")
			umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
			umsg.Short(GAMEMODE:EntityTeam(ent))
			umsg.Short(GAMEMODE:EntityID(ent))
		umsg.End()
	elseif attacker == ent then
		-- Suicide
		if IsValid(cooperator) and GAMEMODE:EntityTeam(cooperator)~=TEAM_HIDDEN then
			-- Y finished off X
			umsg.Start("Notice_EntityFinishedOffEntity")
				umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
				umsg.Short(GAMEMODE:EntityTeam(ent))
				umsg.Short(GAMEMODE:EntityID(ent))
				
				umsg.String(GAMEMODE:EntityDeathnoticeName(cooperator))
				umsg.Short(GAMEMODE:EntityTeam(cooperator))
				umsg.Short(GAMEMODE:EntityID(cooperator))
			umsg.End()
		elseif attacker==inflictor then
			-- X bid farewell, cruel world!
			umsg.Start("Notice_EntitySuicided")
				umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
				umsg.Short(GAMEMODE:EntityTeam(ent))
				umsg.Short(GAMEMODE:EntityID(ent))
			umsg.End()
		else
			local InflictorClass = gamemode.Call("GetInflictorClass", ent, attacker, inflictor)
			
			-- <killicon> X
			umsg.Start("Notice_EntityKilledEntity")
				umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
				umsg.Short(GAMEMODE:EntityTeam(ent))
				umsg.Short(GAMEMODE:EntityID(ent))
				
				umsg.String(InflictorClass)
				
				umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
				umsg.Short(GAMEMODE:EntityTeam(ent))
				umsg.Short(GAMEMODE:EntityID(ent))
				
				umsg.String(GAMEMODE:EntityDeathnoticeName(cooperator))
				umsg.Short(GAMEMODE:EntityTeam(cooperator))
				umsg.Short(GAMEMODE:EntityID(cooperator))
				
				umsg.Bool(ent.LastDamageWasCrit)
			umsg.End()
		end
	else
		local InflictorClass = gamemode.Call("GetInflictorClass", ent, attacker, inflictor)
		
		-- Y <killicon> X
		umsg.Start("Notice_EntityKilledEntity")
			umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
			umsg.Short(GAMEMODE:EntityTeam(ent))
			umsg.Short(GAMEMODE:EntityID(ent))
			
			umsg.String(InflictorClass)
			
			umsg.String(GAMEMODE:EntityDeathnoticeName(killer))
			umsg.Short(GAMEMODE:EntityTeam(killer))
			umsg.Short(GAMEMODE:EntityID(killer))
			
			umsg.String(GAMEMODE:EntityDeathnoticeName(cooperator))
			umsg.Short(GAMEMODE:EntityTeam(cooperator))
			umsg.Short(GAMEMODE:EntityID(cooperator))
			
			umsg.Bool(ent.LastDamageWasCrit)
		umsg.End()
	end
	
	if ent.PendingNemesises then
		for _,v in ipairs(ent.PendingNemesises) do
			if IsValid(v) then
				umsg.Start("Notice_EntityDominatedEntity")
					umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
					umsg.Short(GAMEMODE:EntityTeam(ent))
					umsg.Short(GAMEMODE:EntityID(ent))
					
					umsg.String(GAMEMODE:EntityDeathnoticeName(v))
					umsg.Short(GAMEMODE:EntityTeam(v))
					umsg.Short(GAMEMODE:EntityID(v))
				umsg.End()
				if v:IsPlayer() then
					v:SendLua("surface.PlaySound('misc/tf_domination.wav')")
					if (ent:IsPlayer()) then
						ent:SendLua("surface.PlaySound('misc/tf_nemesis.wav')")
					end
				end
				umsg.Start("PlayerDomination")
					umsg.Entity(ent)
					umsg.Entity(v)
				umsg.End()
			end
		end
		ent.PendingNemesises = nil
	end
	
	if ent.PendingRevenges then
		for _,v in ipairs(ent.PendingRevenges) do
			if IsValid(v) then
				umsg.Start("Notice_EntityRevengeEntity")
					umsg.String(GAMEMODE:EntityDeathnoticeName(ent))
					umsg.Short(GAMEMODE:EntityTeam(ent))
					umsg.Short(GAMEMODE:EntityID(ent))
					
					umsg.String(GAMEMODE:EntityDeathnoticeName(v))
					umsg.Short(GAMEMODE:EntityTeam(v))
					umsg.Short(GAMEMODE:EntityID(v))
				umsg.End()
				
				if v:IsPlayer() then
					if (ent:IsPlayer()) then
						ent:SendLua("surface.PlaySound('misc/tf_revenge.wav')")
					end
					v:SendLua("surface.PlaySound('misc/tf_revenge.wav')")
				end
				umsg.Start("PlayerRevenge")
					umsg.Entity(ent)
					umsg.Entity(v)
				umsg.End()
			end
		end
		ent.PendingRevenges = nil
	end
	
	ent.LastDamageWasCrit = false
end

function GM:OnTFPlayerDominated(ent, attacker)
	if attacker:IsPlayer() then
		attacker:AddDominations(1)
	end
	
	if not ent.PendingNemesises then
		ent.PendingNemesises = {}
	end
	table.insert(ent.PendingNemesises, attacker)
end

function GM:OnTFPlayerRevenge(ent, attacker)
	if attacker:IsPlayer() then
		attacker:AddRevenges(1)
		attacker:AddFrags(1)
	end
	
	if not ent.PendingRevenges then
		ent.PendingRevenges = {}
	end
	table.insert(ent.PendingRevenges, attacker)
end

local player_gib_probability = CreateConVar("player_gib_probability", 0.33)

local function TransferBones( base, ragdoll ) -- Transfers the bones of one entity to a ragdoll's physics bones (modified version of some of RobotBoy655's code)
	if !IsValid( base ) or !IsValid( ragdoll ) then return end
	physenv.SetGravity(Vector(0,0,-386))
	for i = 0, ragdoll:GetPhysicsObjectCount() - 1 do
		local bone = ragdoll:GetPhysicsObjectNum( i )
		if ( IsValid( bone ) ) then
			local pos, ang = base:GetBonePosition( ragdoll:TranslatePhysBoneToBone( i ) )
			if ( pos ) then bone:SetPos( pos ) end
			if ( ang ) then bone:SetAngles( ang ) end
		end
	end
end

local function SetEntityStuff( ent1, ent2 ) -- Transfer most of the set things on entity 2 to entity 1
	if !IsValid( ent1 ) or !IsValid( ent2 ) then return false end
	ent1:SetModel( ent2:GetModel() )
	ent1:SetPos( ent2:GetPos() )
	ent1:SetAngles( ent2:GetAngles() )
	ent1:SetColor( ent2:GetColor() )
	ent1:SetSkin( ent2:GetSkin() )
	ent1:SetFlexScale( ent2:GetFlexScale() )
	for i = 0, ent2:GetNumBodyGroups() - 1 do ent1:SetBodygroup( i, ent2:GetBodygroup( i ) ) end
	for i = 0, ent2:GetFlexNum() - 1 do ent1:SetFlexWeight( i, ent2:GetFlexWeight( i ) ) end
	for i = 0, ent2:GetBoneCount() do
		ent1:ManipulateBoneScale( i, ent2:GetManipulateBoneScale( i ) )
		ent1:ManipulateBoneAngles( i, ent2:GetManipulateBoneAngles( i ) )
		ent1:ManipulateBonePosition( i, ent2:GetManipulateBonePosition( i ) )
		ent1:ManipulateBoneJiggle( i, ent2:GetManipulateBoneJiggle( i ) )
	end
end


function GM:DoPlayerDeath(ply, attacker, dmginfo)
	if (string.find(dmginfo:GetAttacker():GetClass(),"tf_weapon")) then
		dmginfo:SetAttacker(dmginfo:GetAttacker().Owner)
	end
	timer.Simple(0.1, function()
	
		if (IsValid(ply.ShovedAnimation)) then
			ply.ShovedAnimation:Remove()
			ply:SetNoDraw(false)
		end

	end)
	if (!ply:IsHL2() and !dmginfo:IsDamageType(DMG_BLAST) && !dmginfo:IsDamageType(DMG_ALWAYSGIB) and !(string.find(ply:GetModel(),"bot_") and string.find(ply:GetModel(),"_boss") or ply:GetModelScale() > 1.0)) then
		timer.Simple(0.1, function()
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
		end)
		local ragdoll = ents.Create("prop_ragdoll")
		ragdoll:SetModel(ply:GetModel())
		ragdoll:SetPos(ply:GetPos())
		ragdoll:SetAngles(ply:GetAngles())
		ragdoll:Spawn()
		ragdoll:Activate()
		ragdoll:SetSkin(ply:GetSkin())
		ragdoll:SetBodyGroups(ply:GetBodyGroups())
		--ragdoll:SetOwner(ply)
		if (!GetConVar("ai_serverragdolls"):GetBool()) then
			ragdoll:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		end
		if (ply:HasDeathFlag(DF_FIRE) or ply:IsOnFire() or dmginfo:IsDamageType(DMG_BURN)) then
			GAMEMODE:IgniteEntity(ragdoll, ragdoll, ragdoll, 10)
		end
		TransferBones(ply,ragdoll)
		ply.RagdollEntity = ragdoll
		if (ply:HasDeathFlag(DF_DECAP)) then
			ragdoll:EmitSound("TFPlayer.Decapitated")
			local b1 = ragdoll:LookupBone("bip_head")
			local b2 = ragdoll:LookupBone("bip_neck")
			local b3 = ragdoll:LookupBone("prp_helmet")
			local b4 = ragdoll:LookupBone("jaw_bone")
		
			local m1 = ragdoll:GetBoneMatrix(b1)
			local m2 = ragdoll:GetBoneMatrix(b2)
			ragdoll:ManipulateBoneScale(b1, Vector(0,0,0))
			ragdoll:ManipulateBoneScale(b2, Vector(0,0,0))	
			if ragdoll:GetModel() == "models/player/engineer.mdl" then
				ragdoll:ManipulateBoneScale(b3, Vector(0,0,0))
			end
		end
		if (!GetConVar("ai_serverragdolls"):GetBool()) then
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
		end
		local phys = ragdoll:GetPhysicsObject()
		if (IsValid(phys)) then
			phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
		end
		if (dmginfo:IsDamageType(DMG_DISSOLVE)) then
			timer.Simple(0.15, function()
				local dissolver = ents.Create( "env_entity_dissolver" )
				dissolver:SetPos( ragdoll:LocalToWorld(ragdoll:OBBCenter()) )
				dissolver:SetKeyValue( "dissolvetype", 0 )
				dissolver:Spawn()
				dissolver:Activate()
				local name = "Dissolving_"..math.random()
				ragdoll:SetName( name )
				dissolver:Fire( "Dissolve", name, 0 )
				dissolver:Fire( "Kill", name, 0.10 )
			end)
		end
	end
	local inflictor = dmginfo:GetInflictor()
	gamemode.Call("DoTFPlayerDeath", ply, attacker, dmginfo)
	ply:StopSound( "GrappledFlesh" )
	ply:StopSound("Grappling")
	local drop
	for _,v in pairs(ply:GetWeapons()) do
		if v.DropAsAmmo then
			if v.GetItemData and v:GetItemData().item_slot == "primary" then
				drop = v
			end
			
			if v == ply:GetActiveWeapon() and not v.DropPrimaryWeaponInstead then
				drop = v
				break
			end
		end
	end
	if (attacker:IsTFPlayer() and attacker != ply and !ply:Alive()) then
		ply:Spectate(OBS_MODE_DEATHCAM)
		ply:SpectateEntity(attacker)
		timer.Simple(0 + 2.0 + 0.4 - 0.3, function()
			if (!ply:Alive()) then
				ply:SendLua("surface.PlaySound('misc/freeze_cam.wav')")
			end
		end)
		timer.Simple(2.0, function()
			if (!ply:Alive()) then
				ply:Spectate(OBS_MODE_FREEZECAM)
				ply:SpectateEntity(attacker)
			end
		end)
	end
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "tf_weapon_builder" and IsValid(ply:GetActiveWeapon():GetItemData()) and ply:GetActiveWeapon():GetItemData().model_player == "models/weapons/c_models/c_p2rec/c_p2rec.mdl" then
		ply:EmitSound("Psap.Death")
	end
	
	ply:StopSound("MVM.GiantScoutLoop")
	ply:StopSound("MVM.GiantSoldierLoop")
	ply:StopSound("MVM.GiantPyroLoop")
	ply:StopSound("MVM.GiantDemomanLoop")
	ply:StopSound("MVM.GiantHeavyLoop")

	if ply:GetPlayerClass() == "merc_dm" then
		if dmginfo:GetInflictor().Critical and dmginfo:GetInflictor():Critical() then
			if not inflictor.IsSilentKiller then	
				ply:EmitSound("vo/mercenary_paincrticialdeath0"..math.random(1,4)..".wav")
			end
		elseif dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or inflictor.HoldType=="MELEE" then
			if not inflictor.IsSilentKiller then	
				ply:EmitSound("vo/mercenary_paincrticialdeath0"..math.random(1,4)..".wav")
			end
		else
			if not inflictor.IsSilentKiller then
				ply:EmitSound("vo/mercenary_painsevere0"..math.random(1,6)..".wav")
			end
		end
	end
	
	if ply:GetPlayerClass() == "hunter" then
		ply:EmitSound("player/hunter/voice/death/hunter_death_0"..table.Random({"2","4","6","7","8"})..".wav", 95, 100, 1, CHAN_VOICE)
	end
	if ply:GetPlayerClass() == "smoker" then
		ply:EmitSound("SmokerZombie.Death")
		ply:EmitSound("SmokerZombie.Explode")
	end
	if ply:GetPlayerClass() == "spitter" then
		ply:EmitSound("SpitterZombie.Death")
	end
	if ply:GetPlayerClass() == "witch" then
		ply:EmitSound("vj_l4d/witch/voice/die/headshot_death_"..math.random(1,3)..".wav", 95, 100, 1, CHAN_VOICE)
	end
	attacker.TargetEnt = nil
	timer.Stop("VoiceL4d"..ply:EntIndex(), 2.5)
	if ply:HasDeathFlag(DF_DECAP) and not ply:IsHL2() and math.random(1,3) == 1 then
		if (ply.RagdollEntity) then
			ply.RagdollEntity:Remove()
		end
		ply:RandomSentence("CritDeath")
		ply:EmitSound("player/flow.wav", 95)
		ply:Decap()
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos() - Vector(0,0,65))
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent

		local b1 = animent:LookupBone("bip_head")
		local b2 = animent:LookupBone("bip_neck")
		local b3 = animent:LookupBone("prp_helmet")
		local b4 = animent:LookupBone("jaw_bone")
	
		local m1 = animent:GetBoneMatrix(b1)
		local m2 = animent:GetBoneMatrix(b2)
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		animent:SetSequence( "primary_death_headshot" )
		animent:SetPlaybackRate( 1 )
		animent.AutomaticFrameAdvance = true
		animent:ManipulateBoneScale(b1, Vector(0,0,0))
		animent:ManipulateBoneScale(b2, Vector(0,0,0))	
		if animent:GetModel() == "models/player/engineer.mdl" then
			animent:ManipulateBoneScale(b3, Vector(0,0,0))
		end
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( animent:SequenceDuration( "primary_death_headshot" ) + 0.15, function() -- After the sequence is done, spawn the ragdoll

			local ragdoll = ents.Create("prop_ragdoll")
			ragdoll:SetModel(ply:GetModel())
			
		ragdoll:SetSkin(ply:GetSkin())
		ragdoll:SetBodyGroups(ply:GetBodyGroups())
		--ragdoll:SetOwner(ply)
			ragdoll:SetPos(ply:GetPos())
			ragdoll:SetAngles(ply:GetAngles())
			ragdoll:Spawn()
			ragdoll:Activate()
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
			local b1 = ragdoll:LookupBone("bip_head")
			local b2 = ragdoll:LookupBone("bip_neck")
			local b3 = ragdoll:LookupBone("prp_helmet")
			local b4 = ragdoll:LookupBone("jaw_bone")
		
			local m1 = ragdoll:GetBoneMatrix(b1)
			local m2 = ragdoll:GetBoneMatrix(b2)
			ragdoll:ManipulateBoneScale(b1, Vector(0,0,0))
			ragdoll:ManipulateBoneScale(b2, Vector(0,0,0))	
			if ragdoll:GetModel() == "models/player/engineer.mdl" then
				ragdoll:ManipulateBoneScale(b3, Vector(0,0,0))
			end
			local phys = ragdoll:GetPhysicsObject()
			if (IsValid(phys)) then
				phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
			end			
			local rag = ragdoll
			SetEntityStuff( rag, animent )
			rag:Spawn() 
			rag:Activate()
			rag:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
			TransferBones( animent, rag )
			animent:Remove()
		end )
	end	
	if ply:HasDeathFlag(DF_HEADSHOT) and not ply:IsHL2() and math.random(1,3) == 1 then
		if (ply.RagdollEntity) then
			ply.RagdollEntity:Remove()
		end
		ply:RandomSentence("CritDeath")
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos() - Vector(0,0,65))
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent

		local b1 = animent:LookupBone("bip_head")
		local b2 = animent:LookupBone("bip_neck")
		local b3 = animent:LookupBone("prp_helmet")
		local b4 = animent:LookupBone("jaw_bone")
	
		local m1 = animent:GetBoneMatrix(b1)
		local m2 = animent:GetBoneMatrix(b2)
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		animent:SetSequence( "primary_death_headshot" )
		animent:SetPlaybackRate( 1 )
		animent.AutomaticFrameAdvance = true
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( animent:SequenceDuration( "primary_death_headshot" ) + 0.15, function() -- After the sequence is done, spawn the ragdoll

			local ragdoll = ents.Create("prop_ragdoll")
			ragdoll:SetModel(ply:GetModel())
			
			ragdoll:SetSkin(ply:GetSkin())
			ragdoll:SetBodyGroups(ply:GetBodyGroups())
			--ragdoll:SetOwner(ply)
			ragdoll:SetPos(ply:GetPos())
			ragdoll:SetAngles(ply:GetAngles())
			ragdoll:Spawn()
			ragdoll:Activate()
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
			local b1 = ragdoll:LookupBone("bip_head")
			local b2 = ragdoll:LookupBone("bip_neck")
			local b3 = ragdoll:LookupBone("prp_helmet")
			local b4 = ragdoll:LookupBone("jaw_bone")
		
			local m1 = ragdoll:GetBoneMatrix(b1)
			local m2 = ragdoll:GetBoneMatrix(b2)
			local phys = ragdoll:GetPhysicsObject()
			if (IsValid(phys)) then
				phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
			end			
			local rag = ragdoll
			SetEntityStuff( rag, animent )
			rag:Spawn() 
			rag:Activate()
			rag:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
			TransferBones( animent, rag )
			animent:Remove()
		end )
	end	
	if ply:HasDeathFlag(DF_BACKSTAB) and not ply:IsHL2() and math.random(1,3) == 1 then
		if (ply.RagdollEntity) then
			ply.RagdollEntity:Remove()
		end
		ply:RandomSentence("CritDeath")
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos() - Vector(0,0,65))
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent

		local b1 = animent:LookupBone("bip_head")
		local b2 = animent:LookupBone("bip_neck")
		local b3 = animent:LookupBone("prp_helmet")
		local b4 = animent:LookupBone("jaw_bone")
	
		local m1 = animent:GetBoneMatrix(b1)
		local m2 = animent:GetBoneMatrix(b2)
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		animent:SetSequence( "primary_death_backstab" )
		animent:SetPlaybackRate( 1 )
		animent.AutomaticFrameAdvance = true
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( animent:SequenceDuration( "primary_death_backstab" ) + 0.15, function() -- After the sequence is done, spawn the ragdoll

			local ragdoll = ents.Create("prop_ragdoll")
			ragdoll:SetModel(ply:GetModel())
			
			ragdoll:SetSkin(ply:GetSkin())
			ragdoll:SetBodyGroups(ply:GetBodyGroups())
			--ragdoll:SetOwner(ply)
			ragdoll:SetPos(ply:GetPos())
			ragdoll:SetAngles(ply:GetAngles())
			ragdoll:Spawn()
			ragdoll:Activate()
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
			local b1 = ragdoll:LookupBone("bip_head")
			local b2 = ragdoll:LookupBone("bip_neck")
			local b3 = ragdoll:LookupBone("prp_helmet")
			local b4 = ragdoll:LookupBone("jaw_bone")
		
			local m1 = ragdoll:GetBoneMatrix(b1)
			local m2 = ragdoll:GetBoneMatrix(b2)
			local phys = ragdoll:GetPhysicsObject()
			if (IsValid(phys)) then
				phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
			end			
			local rag = ragdoll
			SetEntityStuff( rag, animent )
			rag:Spawn() 
			rag:Activate()
			rag:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
			TransferBones( animent, rag )
			animent:Remove()
		end )
	end	
	if ply:HasDeathFlag(DF_DECAP) and ply:IsHL2() and math.random(1,3) == 1 then
		if (ply.RagdollEntity) then
			ply.RagdollEntity:Remove()
		end
		ply:EmitSound("TFPlayer.Decapitated")
		umsg.Start("GibNPCHead")
			umsg.Entity(ply)
			umsg.Short(ply.DeathFlags)
		umsg.End()
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos())
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent

		local b1 = animent:LookupBone("ValveBiped.Bip01_Head1")
	
		local m1 = animent:GetBoneMatrix(b1)
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS - Vector(0,0,65) )
		animent:SetSequence( "death_01" )
		animent:SetPlaybackRate( 1 )
		animent.AutomaticFrameAdvance = true
		animent:ManipulateBoneScale(b1, Vector(0,0,0))
		if animent:GetModel() == "models/player/engineer.mdl" then
			animent:ManipulateBoneScale(b3, Vector(0,0,0))
		end
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( animent:SequenceDuration( "death_01" ) + 0.15, function() -- After the sequence is done, spawn the ragdoll
			
			local ragdoll = ents.Create("prop_ragdoll")
			ragdoll:SetModel(ply:GetModel())
			
		ragdoll:SetSkin(ply:GetSkin())
		ragdoll:SetBodyGroups(ply:GetBodyGroups())
		--ragdoll:SetOwner(ply)
			ragdoll:SetPos(ply:GetPos())
			ragdoll:SetAngles(ply:GetAngles())
			ragdoll:Spawn()
			ragdoll:Activate()
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
			local phys = ragdoll:GetPhysicsObject()
			if (IsValid(phys)) then
				phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
			end
			local rag = ragdoll
			SetEntityStuff( rag, animent )
			rag:Spawn() 
			rag:Activate()
			rag:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
			TransferBones( animent, rag )
			animent:Remove()
		end )
	end	
	if ply:HasDeathFlag(DF_FIRE) and not ply:IsHL2() and math.random(1,3) == 1 then
		if (ply.RagdollEntity) then
			ply.RagdollEntity:Remove()
		end
		ply:RandomSentence("CritDeath")
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos() - Vector(0,0,65))
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		GAMEMODE:IgniteEntity(animent, animent, animent, 10)
		ply.RagdollEntity = animent
	
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		animent:SetSequence( "primary_death_burning" )
		animent:SetPlaybackRate( 1 )
		animent.AutomaticFrameAdvance = true
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( animent:SequenceDuration( "primary_death_burning" ) + 0.15, function() -- After the sequence is done, spawn the ragdoll

			local ragdoll = ents.Create("prop_ragdoll")
			ragdoll:SetModel(ply:GetModel())
			
		ragdoll:SetSkin(ply:GetSkin())
		ragdoll:SetBodyGroups(ply:GetBodyGroups())
		--ragdoll:SetOwner(ply)
			ragdoll:SetPos(ply:GetPos())
			ragdoll:SetAngles(ply:GetAngles())
			ragdoll:Spawn()
			ragdoll:Activate()
			
			GAMEMODE:IgniteEntity(ragdoll, ragdoll, ragdoll, 10)
			ragdoll:Fire("FadeAndRemove","",math.random(5,30))
			local phys = ragdoll:GetPhysicsObject()
			if (IsValid(phys)) then
				phys:AddVelocity(ply:GetVelocity() * 8 + dmginfo:GetDamageForce())
			end			
			local rag = ragdoll
			SetEntityStuff( rag, animent )
			rag:Spawn() 
			rag:Activate()
			rag:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
			TransferBones( animent, rag )
			animent:Remove()
		end )
		
	end
	if ply:HasDeathFlag(DF_GOLDEN) then
	
		local engineer_golden_lines = {
			"scenes/Player/Engineer/low/3605.vcd",
			"scenes/Player/Engineer/low/3690.vcd",
			"scenes/Player/Engineer/low/3691.vcd",
		}
	
		if dmginfo:GetAttacker():GetPlayerClass() == "engineer" then
			dmginfo:GetAttacker():PlayScene(engineer_golden_lines[math.random( #engineer_golden_lines )])
		end
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos() - Vector(0,0,65))
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent
	
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		if ply:IsHL2() then
			animent:SetSequence("death_01")
		else
			animent:SetSequence( "primary_death_backstab" )
		end
		animent:SetPlaybackRate( 1 )
		animent:SetMaterial("models/player/shared/gold_player")
		timer.Simple(0.15, function()
			animent:SetPlaybackRate( 0 )
		end)
		animent.AutomaticFrameAdvance = true
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( 20, function() -- After the sequence is done, spawn the ragdoll
			animent:Remove()
		end )
		
	end
	if ply:HasDeathFlag(DF_FROZEN) then
		local animent = ents.Create( 'base_gmodentity' )
		animent:AddFlags(FL_GODMODE) -- The entity used for the death animation	
		animent:SetModel(ply:GetModel())
		animent:SetSkin(ply:GetSkin())
		animent:SetPos(ply:GetPos())
		animent:SetAngles(ply:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent
	
		animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
		animent:PhysicsInit( SOLID_OBB )
		animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		ply:EmitSound("weapons/icicle_freeze_victim_01.wav", 95, 100)
		if ply:IsHL2() then
			animent:SetSequence( "death_02" )
		else
			animent:SetSequence( "primary_death_backstab" )
		end
		animent:SetPlaybackRate( 1 )
		animent:SetMaterial("models/player/shared/ice_player")
		timer.Simple(0.2, function()
			animent:SetPlaybackRate( 0 )
		end)
		animent.AutomaticFrameAdvance = true
		if ply:GetRagdollEntity():IsValid() then
			ply:GetRagdollEntity():Remove()
		end
		function animent:Think() -- This makes the animation work
			if ply:GetRagdollEntity():IsValid() then
				ply:GetRagdollEntity():Remove()
			end
			self:NextThink( CurTime() )
			return true
		end
	
		timer.Simple( 20, function() -- After the sequence is done, spawn the ragdoll
			animent:Remove()
		end )
		
	end
	if (ply:IsOnFire()) then
		ply:GetRagdollEntity():Ignite(10)
	end
	if IsValid(drop) then
		drop:DropAsAmmo()
	end
	
	local killer = attacker
	if inflictor.KillCreditAsInflictor then
		killer = inflictor
	end
	
	if ply~=killer and not killer:IsWorld() and (killer:IsTFPlayer()) then
		umsg.Start("SetPlayerKiller", ply)
			umsg.Entity(killer)
			umsg.String(GAMEMODE:EntityDeathnoticeName(killer))
			umsg.Short(killer:EntityTeam())
			umsg.Char(ply.KillerDominationInfo)
			if killer ~= attacker then
				umsg.Entity(attacker)
			else
				umsg.Entity(NULL)
			end
		umsg.End()
	end
	
	--print("DoPlayerDeath", dmginfo:GetInflictor(), dmginfo:GetAttacker(), dmginfo:GetDamage(), dmginfo:GetDamageType())
	local shouldgib = false
	
	ply:Speak("PlayerDeath")
	if (killer:IsPlayer() and killer:IsBot()) then
		if (math.random(1,3) == 1) then
			timer.Simple(0.8, function()
				killer:TFTaunt(killer:GetActiveWeapon():GetSlot() + 1)
			end)
		end
	end
	if (string.find(ply:GetModel(),"bot_") and (string.find(ply:GetModel(),"_boss") or ply:GetModelScale() > 1.0)) then
		ply:GibBreakServer( dmginfo:GetDamageForce() )
		if (string.find(ply:GetModel(),"_boss")) then
			for k,v in ipairs(player.GetAll()) do
				v:SendLua("LocalPlayer():EmitSound(\"MVM.GiantCommonExplodes\")")
			end
		end
	end
	if dmginfo:IsFallDamage() then -- Fall damage
		ply.FallDeath = true
		ply:EmitSound("player/pl_fleshbreak.wav", 70,100)
		umsg.Start("Notice_EntityFell")
			umsg.String(GAMEMODE:EntityDeathnoticeName(ply))
			umsg.Short(GAMEMODE:EntityTeam(ply))
			umsg.Short(GAMEMODE:EntityID(ply))
		umsg.End()
	elseif dmginfo:IsDamageType(DMG_ALWAYSGIB) or dmginfo:IsDamageType(DMG_BLAST) or dmginfo:IsExplosionDamage() or inflictor.Explosive then -- Explosion damage
	
		if ply:GetMaterial() == "models/shadertest/predator" then return end
		ply:RandomSentence("ExplosionDeath")
		local p = player_gib_probability:GetFloat()
		p = 1
		
		if not ply:IsHL2() then
			if (!(string.find(ply:GetModel(),"bot_"))) then
				ply:Explode(dmginfo)
				ply:EmitSound("physics/flesh/flesh_squishy_impact_hard2.wav", 80, 100)
				shouldgib = true
			elseif (string.find(ply:GetModel(),"bot_")) then
				ply:GibBreakServer( dmginfo:GetDamageForce() )
				shouldgib = true
			end
		else
			ply:Explode(dmginfo)
			
			if (IsValid(ply:GetRagdollEntity())) then
				ply:GetRagdollEntity():Remove()
			end
		end
	elseif inflictor.Critical and inflictor:Critical() then -- Critical damage
		if not inflictor.IsSilentKiller then
			if ply:GetMaterial() == "models/shadertest/predator" then return end
			ply:RandomSentence("CritDeath")
		end
	elseif dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH) or inflictor.HoldType=="MELEE" then -- Melee damage
		if not inflictor.IsSilentKiller then	
			if ply:GetMaterial() == "models/shadertest/predator" then return end
			if ply:GetPlayerClass() == "engineer" and GetConVar("tf_pyrovision"):GetBool() then
				ply:Speak("TLK_PLAYER_LAUGH_DEATH")
			else
				ply:RandomSentence("MeleeDeath")
			end
		end
	else -- Bullet/fire damage
		if not inflictor.IsSilentKiller then
			if ply:GetMaterial() == "models/shadertest/predator" then return end
			if not ply:IsHL2() and ply:Team() == TEAM_BLU and string.find(game.GetMap(), "mvm_") then return end
			ply:RandomSentence("Death")
		end
	end

	if ply:GetPlayerClass() == "zombie" then
		ply:EmitSound("Zombie.Die")
	end
	if ply:GetPlayerClass() == "zombine" then
		ply:EmitSound("Zombine.Die")
	end
	if ply:GetPlayerClass() == "fastzombie" then
		ply:EmitSound("NPC_FastZombie.Die")
	end
	if ply:GetPlayerClass() == "poisonzombie" then
		ply:EmitSound("NPC_PoisonZombie.Die")
	end


	if not shouldgib then
		--ply:CreateRagdoll()
	end
	timer.Simple(0.015, function()
	
		if (IsValid(ply.RagdollEntity)) then
			ply.RagdollEntity.GetPlayerColor = ply:GetPlayerColor()
			ply:SetNWEntity("RagdollEntity",ply.RagdollEntity)
		end
	
	end)
	ply.LastDamageInfo = CopyDamageInfo(dmginfo)
end

function GM:OnNPCKilled(ent, attacker, inflictor)
	if inflictor.IsSilentKiller then
		umsg.Start("SilenceNPC")
			umsg.Entity(ent)
		umsg.End()
	end
	
	if inflictor and inflictor.OnPlayerKilled then
		inflictor:OnPlayerKilled(ent)
	end
	
	gamemode.Call("DoTFPlayerDeath", ent, attacker, ent.LastDamageInfo)
	
	-- for Gran <3
	-- NPCs should spawn silly gibs if killed by damage of type DMG_ALWAYSGIB+DMG_REMOVENORAGDOLL
	if ent.LastDamageInfo and ent.LastDamageInfo:IsDamageType(DMG_ALWAYSGIB) and ent.LastDamageInfo:IsDamageType(DMG_BLAST) and ent.LastDamageInfo:IsDamageType(DMG_REMOVENORAGDOLL) then
		umsg.Start("GibNPC")
			umsg.Entity(ent)
			umsg.Short(ent.DeathFlags)
		umsg.End()
	end
	
	gamemode.Call("PostTFPlayerDeath", ent, attacker, inflictor)
end

function GM:PlayerDeath(ent, inflictor, attacker)
	-- Don't spawn for at least 2 seconds
	if (GetConVar("civ2_allow_respawn_with_key_press"):GetBool()) then
		ent.NextSpawnTime = CurTime() + 2
	else
		ent.NextSpawnTime = CurTime() + 7
	end
	ent.DeathTime = CurTime()
	
	
	if GetConVar("tf_enable_revive_markers"):GetBool() then
		animent = ents.Create( 'reviver' ) -- The entity used for the death animation
		animent:SetPos(ent:GetPos())
		animent:SetAngles(ent:GetAngles())
		animent:Spawn()
		animent:Activate()
		ply.RagdollEntity = animent
		animent:SetOwner(ent)
		
		if ent:GetPlayerClass() == "soldier" then
			animent:SetBodygroup(1, 2)
		elseif ent:GetPlayerClass() == "pyro" then
			animent:SetBodygroup(1, 6)
		elseif ent:GetPlayerClass() == "demoman" then
			animent:SetBodygroup(1, 3)
		elseif ent:GetPlayerClass() == "heavy" then
			animent:SetBodygroup(1, 5)
		elseif ent:GetPlayerClass() == "engineer" then
			animent:SetBodygroup(1, 8)
		elseif ent:GetPlayerClass() == "medic" then
			animent:SetBodygroup(1, 4)
		elseif ent:GetPlayerClass() == "sniper" then
			animent:SetBodygroup(1, 1)
		elseif ent:GetPlayerClass() == "spy" then
			animent:SetBodygroup(1, 7)
		end
			
	end
	
	timer.Simple(6.5, function()
		if IsValid(animent) then
			animent:Fire("Kill", "", 0.1)
		end
		if IsValid(ent) then
			if !ent:Alive() then
				ent:Spawn()
			end
		end
	end)
	
	
	gamemode.Call("PostTFPlayerDeath", ent, attacker, inflictor)
end

-- No flatline sound
function GM:PlayerDeathSound()
	if GetConVar("gmod_suit"):GetBool() then
		return false
	else
		return true
	end 
end