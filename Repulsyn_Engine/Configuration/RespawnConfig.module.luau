-- ReplicatedStorage/Configuration/RespawnConfig.luau
-- How vehicles & players come back

local RespawnConfig = {
    Vehicle = {
        Enabled      = true,
        DelaySeconds = 10,
        LocationTag  = "VehicleSpawn",  -- use tags/anchors in the world
    },
    Player = {
        DelaySeconds = 5,
        InvincibleTime = 3,   -- seconds after spawn
    },
}

return RespawnConfig
