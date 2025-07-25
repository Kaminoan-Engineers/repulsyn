-- ReplicatedStorage/Repulsyn_Engine/Loaders
--[[
    ConfigLoader.module.luau
    This module dynamically loads configuration settings from ModuleScripts
    located in game:GetService("ReplicatedStorage").Repulsyn_Engine.Configuration.
]]
local Config = {}

local RS = game:GetService("ReplicatedStorage")
local ConfigurationFolder = RS:WaitForChild("Repulsyn_Engine"):WaitForChild("Configuration")

for _, moduleScript in ipairs(ConfigurationFolder:GetChildren()) do
    if moduleScript:IsA("ModuleScript") and moduleScript.Name ~= script.Name then
        Config[moduleScript.Name] = require(moduleScript)
    end
end

return Config
