if (!IsMounted("tf")) then return end
if SERVER then AddCSLuaFile() end

ENT.Base = "mvm_bot"
ENT.PZClass = "heavy"
ENT.Spawnable = false
ENT.AdminOnly = false
ENT.IsBoss = false
ENT.PrintName		= "Heavyweapons" 
ENT.Category		= "TF2: MVM Bots" 

list.Set( "NPC", "mvm_bot_heavy", {
	Name = ENT.PrintName,
	Class = "mvm_bot_heavy",
	Category = ENT.Category
} )