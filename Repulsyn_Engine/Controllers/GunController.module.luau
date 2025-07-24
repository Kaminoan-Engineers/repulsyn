local GunController = {}
GunController.__index = GunController

function GunController.new(vehicle)
    local self = setmetatable({}, GunController)
    self.Vehicle = vehicle
    return self
end

function GunController:Enable(player)
    -- listen for RemoteEvent “FireWeapon”
    self.FiredConn = game.ReplicatedStorage.RemoteEvents.FireWeapon.OnServerEvent:Connect(function(p, ...)
        if p == player then
            error("TODO: Implement firing logic for player " .. player.Name)
        end
    end)
end

function GunController:Disable()
    if self.FiredConn then
        self.FiredConn:Disconnect()
        self.FiredConn = nil
    end
end

return GunController
