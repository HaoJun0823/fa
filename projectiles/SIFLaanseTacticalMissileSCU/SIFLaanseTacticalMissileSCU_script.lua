-- File     :  /data/projectiles/SIFLaanseTacticalMissile01/SIFLaanseTacticalMissileSCU_script.lua
-- Author(s):  Gordon Duclos, Aaron Lundquist
-- Summary  :  Laanse Tactical Missile Projectile script, XSL0301
-- Copyright © 2007 Gas Powered Games, Inc.  All rights reserved.
-----------------------------------------------------------------------------------------------------
local SLaanseTacticalMissile = import("/lua/seraphimprojectiles.lua").SLaanseTacticalMissile
local TacticalMissileComponent = import('/lua/sim/DefaultProjectiles.lua').TacticalMissileComponent
SIFLaanseTacticalMissile01 = ClassProjectile(SLaanseTacticalMissile, TacticalMissileComponent) {

    LaunchTicks = 6,
    LaunchTurnRate = 6,
    HeightDistanceFactor = 5,
    MinHeight = 5,
    FinalBoostAngle = 0,

    OnCreate = function(self)
        SLaanseTacticalMissile.OnCreate(self)
        self:SetCollisionShape('Sphere', 0, 0, 0, 2)
        self.MoveThread = self.Trash:Add(ForkThread(self.MovementThread, self))
    end,
}
TypeClass = SIFLaanseTacticalMissile01

