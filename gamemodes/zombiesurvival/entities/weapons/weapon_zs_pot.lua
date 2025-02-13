AddCSLuaFile()

if CLIENT then
	SWEP.PrintName = "Pot"

	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = true

	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/weapons/w_pot.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5, 1.363, -6.818), angle = Angle(0, 90, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.VElements = {
		["pot"] = { type = "Model", model = "models/weapons/w_pot.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.282, 2.484, 0), angle = Angle(0, 180, -90), size = Vector(1, 0.8, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_CLUB

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/weapons/w_pot.mdl"
SWEP.UseHands = true

SWEP.MeleeDamage = 47
SWEP.MeleeRange = 50
SWEP.MeleeSize = 1.15

SWEP.UseMelee1 = true

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.MissGesture = SWEP.HitGesture

SWEP.SwingRotation = Angle(30, -30, -30)
SWEP.SwingTime = 0.3
SWEP.SwingHoldType = "grenade"

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/frying_pan/pan_hit-0"..math.random(4)..".ogg")
end
