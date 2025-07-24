-- ReplicatedStorage/Configuration/CameraConfig.luau
-- Third-person camera offsets & smoothing

local CameraConfig = {
    FieldOfView     = 70,
    FollowDistance  = 12,   -- studs behind the vehicle
    HeightOffset    = 3,    -- studs above the vehicle center
    SmoothSpeed     = 0.15, -- interpolation alpha
    TiltAngle       = 15,   -- degrees downwards
}

return CameraConfig
