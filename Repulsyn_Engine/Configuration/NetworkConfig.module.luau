-- ReplicatedStorage/Configuration/NetworkConfig.luau
-- Throttling/debounce settings and event names

local NetworkConfig = {
    DebounceTime = 0.2,  -- minimum seconds between same-event fires
    MaxEventRate = {
        EnterVehicle = 1, -- max calls per second
        ExitVehicle  = 1,
        FireWeapon   = 5,
    },
    RemoteNames = {
        Enter = "EnterVehicle",
        Exit  = "ExitVehicle",
        Fire  = "FireWeapon",
    },
}

return NetworkConfig
