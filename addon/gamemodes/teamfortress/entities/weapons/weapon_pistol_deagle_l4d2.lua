
if (!IsMounted("left4dead")) then return end
AddCSLuaFile()
SWEP.Base = "weapon_smg_silenced"
SWEP.Category = "Left 4 Dead 2"
SWEP.PrintName = "Desert Eagle"
SWEP.Author = "Daisreich"

SWEP.Slot = 1
SWEP.SlotPos = 4

SWEP.Spawnable = true

SWEP.ViewModel = Model( "models/v_models/v_desert_eagle.mdl" )
SWEP.WorldModel = "models/w_models/weapons/w_desert_eagle.mdl"
SWEP.ViewModelFOV = 52
SWEP.UseHands = true
SWEP.HoldType = "pistol"
SWEP.Primary.Delay = 0.2
SWEP.Primary.ClipSize = 7  -- How much bullets are in the mag
SWEP.Primary.DefaultClip = 7 -- How much bullets preloaded when spawned
SWEP.Primary.Damage = 40
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Spread = 0.3
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Ammo = "Pistol" 
SWEP.Secondary.Ammo = "none"
SWEP.Primary.Recoil = 0.25
SWEP.Primary.Automatic = false
SWEP.Secondary.Automatic = true

SWEP.HitDistance = 48
SWEP.ShootSound = Sound(")weapons/magnum/gunfire/magnum_shoot.wav")

function SWEP:Deploy()
	self:SetWeaponHoldType( self.HoldType )
	local vm = self:GetOwner():GetViewModel()
	if SERVER then
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("deploy")))
	end
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("deploy")) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		end)
	end)
	return true
end 

function SWEP:Holster()

	self:SetNextMeleeAttack( 0 )
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
	bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
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
	
	self.Owner:AnimRestartGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL,true )
	self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("fire")))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay ) 
	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	local vm = self:GetOwner():GetViewModel()
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("fire")) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		end)
	end)
end 

function SWEP:SecondaryAttack( right )
	if SERVER then
		self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND,true,true )
	end

	local anim = "melee"

	local vm = self.Owner:GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )

	self:EmitSound( ")player/survivor/swing/swish_weaponswing_swipe"..math.random(3,6)..".wav", 75, math.random(95,105) )

	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("melee")) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		end)
	end)
	self:SetNextMeleeAttack( CurTime() + 0.1 )

	self:SetNextPrimaryFire( CurTime() + 0.7 )
	self:SetNextSecondaryFire( CurTime() + 0.7 )

end

function SWEP:Reload()
	local vm = self:GetOwner():GetViewModel()
	local reload = "reload"
	if (self:Clip1() < 1) then
		reload = 'reload_empty'
		self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("reload_empty")))
	else
		self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("reload")))
	end
	self.Owner:AnimRestartGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, ACT_HL2MP_GESTURE_RELOAD_PISTOL,true )
	timer.Stop("Idle"..self.Owner:EntIndex())
	timer.Stop("Idle2"..self.Owner:EntIndex())
	timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence(reload)) , 1, function()
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
		end)
	end)
end