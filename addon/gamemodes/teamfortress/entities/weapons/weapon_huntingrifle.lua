
if (!IsMounted("left4dead")) then return end
AddCSLuaFile()
SWEP.Base = "weapon_smg_silenced"
SWEP.Category = "Left 4 Dead 2"
SWEP.PrintName = "Hunting Rifle"
SWEP.Author = "Daisreich"

SWEP.Slot = 0
SWEP.SlotPos = 4

SWEP.Spawnable = true

--SWEP.ViewModel = Model( "models/v_models/v_huntingrifle.mdl" )
SWEP.ViewModel = Model( "models/v_models/v_huntingrifle_new.mdl" )
SWEP.WorldModel = "models/w_models/weapons/w_sniper_mini14.mdl"
SWEP.ViewModelFOV = 50
SWEP.UseHands = true
SWEP.HoldType = "crossbow"
SWEP.Primary.Delay = 0.2
SWEP.Primary.ClipSize = 15  -- How much bullets are in the mag
SWEP.Primary.DefaultClip = 15 -- How much bullets preloaded when spawned
SWEP.Primary.Damage = 38
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Spread = 0.35
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Ammo = "SniperRound" 
SWEP.Secondary.Ammo = "none"
SWEP.Primary.Recoil = 0.25
SWEP.Primary.Automatic = false
SWEP.Secondary.Automatic = true
SWEP.DeployAfterPickup = false
SWEP.HitDistance = 48
SWEP.ShootSound = Sound(")weapons/hunting_rifle/gunfire/hunting_rifle_fire_1.wav")

function SWEP:ToggleZoom()
	if self.ZoomStatus then self:ZoomOut()
	else self:ZoomIn()
	end
end

function SWEP:Deploy()
	self:SetWeaponHoldType( self.HoldType ) 
	local vm = self:GetOwner():GetViewModel()
	local deploy = "sniper_pickup_partial"
	local timeMultipier = 0.75
	if (!self.DeployAfterPickup) then
		timeMultipier = 1
		deploy = "sniper_pickup"
		if SERVER then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_pickup")))
		end 
		self.DeployAfterPickup = true
	else
		if SERVER then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_pickup_partial")))
		end
		vm:SetPlaybackRate(1.5)
	end
	vm:SetCycle(0)
	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence(deploy)) * timeMultipier - 0.2, 1, function()
		if SERVER then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		end
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_idle")) , 0, function()
			if SERVER then
				self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
			end
		end)
	end)
	return true
end 

function SWEP:Holster()

	self:SetNextMeleeAttack( 0 )
	self:ZoomOut()
	timer.Stop("Idle2"..self.Owner:EntIndex())

	return true

end

function SWEP:Initialize()
	self:SetWeaponHoldType( self.HoldType )
end 

function SWEP:PrimaryAttack()
 
	if ( !self:CanPrimaryAttack() ) then return end
	 
	local vm = self:GetOwner():GetViewModel()
	local bullet = {} 
	bullet.Num = self.Primary.NumberofShots 
	bullet.Src = self.Owner:GetShootPos() 
	bullet.Dir = self.Owner:GetAimVector()
	if (!self.ZoomStatus) then
		bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
	end
	bullet.Tracer = 1
	bullet.Force = self.Primary.Force 
	bullet.Damage = self.Primary.Damage 
	bullet.AmmoType = self.Primary.Ammo 
	 
	local rnda = self.Primary.Recoil * -1 
	local rndb = self.Primary.Recoil * math.random(-1, 1) 
	 
	self:ShootEffects()
	 
	self.Owner:FireBullets( bullet ) 
	self:EmitSound(self.ShootSound, 75)	
	self.Owner:ViewPunch( Angle( rnda,0,0 ) ) 
	self:TakePrimaryAmmo(self.Primary.TakeAmmo) 
	self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_shoot1")))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay ) 
	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	local vm = self:GetOwner():GetViewModel()
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_shoot1")) , 1, function()
		if SERVER then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		end
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_idle")) , 0, function()
			if SERVER then
				self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
			end
		end)
	end)
end 

function SWEP:SecondaryAttack( right )
		if (self.Owner:KeyDown(IN_WALK)) then return end
		if (self.ZoomStatus) then
			self:ZoomOut()
			return
		end
	if SERVER then
		self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND,true,true )
	end

	local anim = "sniper_melee"

	local vm = self.Owner:GetViewModel()
	if SERVER then
		vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
	end
	self:EmitSound( ")player/survivor/swing/swish_weaponswing_swipe"..math.random(5,6)..".wav", 75, math.random(95,105) )

	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_melee")) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		end)
	end)
	self:SetNextMeleeAttack( CurTime() + 0.1 )

	self:SetNextPrimaryFire( CurTime() + 0.7 )
	self:SetNextSecondaryFire( CurTime() + 0.7 )

end
function SWEP:Reload()
	local vm = self:GetOwner():GetViewModel()
	local reload = "sniper_reload1"
	if (self.ZoomStatus) then
		self:ZoomOut()
	end
	if (self:Clip1() < 1) then
		reload = 'sniper_reload_empty'
		self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("sniper_reload_empty")))
	else
		self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("sniper_reload1")))
	end
	if SERVER then
		self.Owner:DoAnimationEvent( ACT_HL2MP_GESTURE_RELOAD_SMG1,true,true )
		if (string.find(self:GetClass(),"smg") or string.find(self:GetClass(),"m16a1")) then
			umsg.Start("PlaySMGNormalWeaponWorldReload")
				umsg.Entity(self)	
			umsg.End()
		end
	end
	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence(reload)) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("sniper_idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("sniper_idle")))
		end)
	end)
end

function SWEP:ZoomIn()
	if CLIENT then return end
	
	if SERVER then
		self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_PREFIRE, true)
		self.Owner:EmitSound("Default.Zoom")
	end
	self.NextAutoZoomIn = nil
	self.Owner:SetFOV(10,0.2,self)
	if not self.ZoomStatus then
		self.Primary.Spread = 0.001
		self.ZoomStatus = true
		umsg.Start("SetZoomStatus")
			umsg.Entity(self)
			umsg.Bool(true)
		umsg.End()
		--self.Owner:DoAnimationEvent(ACT_MP_DEPLOYED, true)
		
		--self.Owner:DrawViewModel(false)
	end
end

function SWEP:AdjustMouseSensitivity()
	if self.ZoomStatus then
		return 0.35
	end
end

function SWEP:Think()

	if (self.Owner:KeyPressed(IN_ATTACK2) and self.Owner:KeyDown(IN_WALK)) then
		if SERVER then
			if (not self.NextAllowZoom or CurTime()>self.NextAllowZoom) and self.Owner:IsOnGround() then
				self:ToggleZoom()
				self.NextAllowZoom = CurTime() + 0.4
			elseif self.NextAutoZoomIn then -- No, don't zoom me in automatically after that
				self.NextAutoZoomIn = nil
			end
		end
	end
	return self.BaseClass.Think(self)
end
function SWEP:ZoomOut()
	if CLIENT then return end
	
	if SERVER then
		self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_POSTFIRE, true)
	end
	self.Primary.Spread = 0.35
	self.NextAutoZoomOut = nil
	self.Owner:SetFOV(0,0.2,self)
	if self.ZoomStatus then
		self.Owner:EmitSound("Default.Zoom")
		self.ZoomStatus = false
		umsg.Start("SetZoomStatus")
			umsg.Entity(self)
			umsg.Bool(false)
		umsg.End()
		self.Owner:DoAnimationEvent(ACT_MP_STAND_PRIMARY, true)
		
		--self.Owner:DrawViewModel(true)
		self.ChargeTimerStart = nil
	end
	
	if not self.DisableZoomSpeedPenalty then
		local owner = self.CurrentOwner or self.Owner
		owner:ResetClassSpeed()
	end
end

function SWEP:ToggleZoom()
	if self.ZoomStatus and !self.Owner:KeyDown(IN_WALK) then 
		self.ZoomedVeryClose = false
		self:ZoomOut()
	else 
		if (self.Owner:KeyDown(IN_WALK) and self.ZoomStatus and !self.ZoomedVeryClose) then
			if SERVER then
				self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_PREFIRE, true)
				self.Owner:EmitSound("Default.Zoom")
			end
			self.ZoomedVeryClose = true
			self.Owner:SetFOV(2,0.2,self)
		else
			self.ZoomedVeryClose = false
			self:ZoomIn()
		end
	end
end