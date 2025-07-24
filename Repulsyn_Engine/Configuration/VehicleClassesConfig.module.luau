-- ReplicatedStorage/Configuration/VehicleClassesConfig.luau
-- Define each class’s defaults & overrides

local VehicleClassesConfig = {
    Light = {
        MaxSpeed      = 120,
        Armor         = 50,
        CrewCapacity  = 1,
        ModelTemplate = "Vehicles/LightChassis",
    },
    Medium = {
        MaxSpeed      = 100,
        Armor         = 100,
        CrewCapacity  = 2,
        ModelTemplate = "Vehicles/MediumChassis",
    },
    Heavy = {
        MaxSpeed      = 80,
        Armor         = 200,
        CrewCapacity  = 4,
        ModelTemplate = "Vehicles/HeavyChassis",
    },
}

return VehicleClassesConfig
