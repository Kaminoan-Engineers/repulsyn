-- ReplicatedStorage/Repulsyn_Engine/Loaders/ConstantLoader.module.luau

--[[
    ConstantLoader.module.luau
    This module is responsible for loading and exposing constants and services used throughout the Repulsyn Engine.
]]

--[[
    Game Engine Services:
    Provides access to various game services such as Workspace, Lighting, SoundService, etc.
    These services are essential for game functionality and are used across the engine.
]]
-- Game Services
local game = game
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
local SoundService = game:GetService("SoundService")

-- Server Services
local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")

-- Client Services
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")
local StarterPack = game:GetService("StarterPack")

-- Player Services
local Players = game:GetService("Players")
local StarterPlayer = game:GetService("StarterPlayer")
local GroupService = game:GetService("GroupService")
local Teams = game:GetService("Teams")
local ChatService = game:GetService("Chat")

-- Runtime Services
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local PathfindingService = game:GetService("PathfindingService")
local TeleportService = game:GetService("TeleportService")

-- API Services
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local AssetService = game:GetService("AssetService")
local MarketplaceService = game:GetService("MarketplaceService")
local DataStoreService = game:GetService("DataStoreService")

--[[
    Repulsyn Engine Constants Loader
    This module dynamically loads and exposes constants, services, and remote events used throughout the Repulsyn Engine.
    It also includes a ConfigLoader for managing configuration settings.
]]
-- Base Folders
local Repulsyn_Engine = ReplicatedStorage:WaitForChild("Repulsyn_Engine")
local Repulsyn_Server = ServerScriptService:WaitForChild("Repulsyn_Server")

-- Engine Folders
local Components = Repulsyn_Engine:WaitForChild("Components")
local Modules = Repulsyn_Engine:WaitForChild("Modules")
local Loaders = Repulsyn_Engine:WaitForChild("Loaders")
local Config = Repulsyn_Engine:WaitForChild("Configuration")
local Controllers = Repulsyn_Engine:WaitForChild("Controllers")

-- Client Folders
local Client = Repulsyn_Engine:WaitForChild("Client")
local ClientHUD = Client:WaitForChild("HUD")
local ClientModules = Client:WaitForChild("Modules")
local ClientServices = Client:WaitForChild("Services")


-- dynamically grab every config module
local ConfigLoader = require(Loaders.ConfigLoader)

local Constants = {}

-- Service shortcuts
Constants.Services = {
    ReplicatedStorage       = ReplicatedStorage,
    ContextActionService    = ContextActionService,
    Players                 = Players,
    RunService              = RunService,
    HttpService             = HttpService,
    TweenService            = TweenService,
    UserInputService        = UserInputService,
    PathfindingService      = PathfindingService,
    TeleportService         = TeleportService,
    Lighting                = Lighting,
    SoundService            = SoundService,
    AssetService            = AssetService,
    MarketplaceService      = MarketplaceService,
    DataStoreService        = DataStoreService,
    GroupService            = GroupService,
    Teams                   = Teams,
    ChatService             = ChatService,
    ServerScriptService     = ServerScriptService,
    ServerStorage           = ServerStorage,
    StarterGui              = StarterGui,
    StarterPack             = StarterPack,
    StarterPlayer           = StarterPlayer,
    Workspace               = Workspace,
    ReplicatedFirst         = ReplicatedFirst
}

-- RemoteEvent references
local remotesFolder = ReplicatedStorage:WaitForChild("RemoteEvents")
Constants.Remotes = {
    EnterVehicle = remotesFolder:WaitForChild(ConfigLoader.NetworkConfig.RemoteNames.Enter),
    ExitVehicle  = remotesFolder:WaitForChild(ConfigLoader.NetworkConfig.RemoteNames.Exit),
    FireWeapon   = remotesFolder:WaitForChild(ConfigLoader.NetworkConfig.RemoteNames.Fire),
}

-- All your configs stay in their own files under Config/, exposed here:
Constants.Config = ConfigLoader

return Constants
