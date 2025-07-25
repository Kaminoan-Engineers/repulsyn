-- ReplicatedStorage/Configuration/LoggingConfig.luau
-- Debugging toggles & levels

local LoggingConfig = {
    EnableDebug       = true,
    ShowNetworkLogs   = false,
    ShowPhysicsLogs   = false,
    LogLevel          = "Info",  -- "Debug", "Info", "Warn", "Error"
    RemoteLogEndpoint = nil,     -- e.g. "https://your.log.server/collect"
}

return LoggingConfig
