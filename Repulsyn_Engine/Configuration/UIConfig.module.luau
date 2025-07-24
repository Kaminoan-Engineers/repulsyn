-- ReplicatedStorage/Configuration/UIConfig.luau
-- Sizes, positions, and colors for the HUD

local UIConfig = {
    CrosshairSize = 32,  -- in pixels
    HUDOffset     = UDim2.new(0, 10, 0, 10),
    HealthBarSize = UDim2.new(0.3, 0, 0.03, 0),
    FuelBarSize   = UDim2.new(0.3, 0, 0.03, 0),
    Colors = {
        HealthFull  = Color3.fromRGB(0, 255, 0),
        HealthEmpty = Color3.fromRGB(255, 0, 0),
        Fuel        = Color3.fromRGB(0, 170, 255),
    },
}

return UIConfig
