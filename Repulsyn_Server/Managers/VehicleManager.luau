local RS       = game:GetService("ReplicatedStorage")
local Repulsyn = require(RS:WaitForChild("Repulsyn_Engine"))
local BaseVeh  = require(script.Components.BaseVehicle)

local vehicles = {}  -- map Model → Vehicle instance

RS.RemoteEvents.EnterVehicle.OnServerEvent:Connect(function(player, chassisModel)
    if vehicles[chassisModel] then
        vehicles[chassisModel]:EnableGunner(player)
    else
        local v = BaseVeh.new(chassisModel)
        vehicles[chassisModel] = v
        v:EnableDriver(player)
    end
end)

RS.RemoteEvents.ExitVehicle.OnServerEvent:Connect(function(player, chassisModel)
    local v = vehicles[chassisModel]
    if v then
        v:DisableDriver()
        v:DisableGunner()
        vehicles[chassisModel] = nil
    end
end)
