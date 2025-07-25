-- ReplicatedStorage/Configuration/SoundConfig.luau
-- Sound IDs, volumes, pitch ranges

local SoundConfig = {
    Engine = {
        SoundId     = "rbxassetid://1234567890", -- replace with your asset
        Volume      = 0.5,
        Pitch       = 1,
        IdlePitch   = 0.8,
        MaxPitch    = 1.2,
    },
    Shoot = {
        SoundId        = "rbxassetid://2345678901",
        Volume         = 0.7,
        PitchVariation = 0.1, -- random ±
    },
    Explode = {
        SoundId = "rbxassetid://3456789012",
        Volume  = 1,
        Pitch   = 1,
    },
}

return SoundConfig
