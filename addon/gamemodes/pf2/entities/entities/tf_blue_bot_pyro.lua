if (!IsMounted("tf")) then return end
if SERVER then AddCSLuaFile() end

ENT.Base = "tf_red_bot"
ENT.PZClass = "pyro"
ENT.Spawnable = false
ENT.AdminOnly = false
ENT.IsBoss = false
ENT.PrintName		= "Pyro"
ENT.Category		= "TF2: BLU Bots"
ENT.Team = "BLU"

list.Set( "NPC", "tf_blue_bot_pyro", {
	Name = ENT.PrintName,
	Class = "tf_blue_bot_pyro",
	Category = ENT.Category
} )