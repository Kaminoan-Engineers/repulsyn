-- ReplicatedStorage/Configuration/EffectsConfig.luau
-- Particle/visual effect parameters

local EffectsConfig = {
    Exhaust = {
        ParticleRate = 50,
        Lifetime     = NumberRange.new(0.5, 1),
        Size         = NumberSequence.new{
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(1, 0)
        },
        Color        = ColorSequence.new(Color3.fromRGB(100, 100, 100)),
    },
    MuzzleFlash = {
        Lifetime   = 0.1,
        Size       = 5,
        Brightness = 2,
    },
    Impact = {
        ParticleCount = 20,
        Spread        = 1,
    },
}

return EffectsConfig
