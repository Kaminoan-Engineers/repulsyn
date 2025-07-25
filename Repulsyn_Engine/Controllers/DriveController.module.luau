local DriveController = {}
DriveController.__index = DriveController

function DriveController.new(vehicle)
    local self = setmetatable({}, DriveController)
    self.Vehicle = vehicle
    self.Connection = nil
    return self
end

function DriveController:Enable(player)
    -- example: connect RunService or ContextActionService
    local seat = self.Vehicle.Chassis.DriverSeat
    self.Connection = seat.Changed:Connect(function()
        -- read throttle/steer from player input, apply to seat.Velocity
    end)
end

function DriveController:Disable()
    if self.Connection then
        self.Connection:Disconnect()
        self.Connection = nil
    end
end

return DriveController
