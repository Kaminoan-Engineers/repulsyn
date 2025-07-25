-- Repulsyn_Engine.lua
local RS          = game:GetService("ReplicatedStorage")
local EngineRoot  = script
local Config      = require(EngineRoot.Loaders.ConfigLoader)    -- your ConfigLoader.module.lua
local Constants   = require(EngineRoot.Loaders.ConstantLoader)  -- your ConstantLoader.luau

-- 1) Require everything else in Engine (except our loaders)
local function requireAll(folder)
    for _, child in ipairs(folder:GetChildren()) do
        if child:IsA("ModuleScript") then
            if child.Name ~= "ConfigLoader" and child.Name ~= "ConstantLoader" then
                local ok, _ = pcall(require, child)
                if not ok then
                    warn("Failed to require:", child:GetFullName())
                end
            end
        elseif child:IsA("Folder") then
            requireAll(child)
        end
    end
end

-- 2) Kick it off
requireAll(EngineRoot)

-- 3) (Optional) If any of your modules return a table with an Init() method, call it:
for _, mod in pairs(getfenv()) do
    if type(mod) == "table" and type(mod.Init) == "function" then
        mod:Init(Config, Constants)
    end
end
