CreateThread(function()
    while true do
        Wait(1000) -- Every second
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            if GetPedInVehicleSeat(vehicle, -1) == ped then
                SetVehicleEngineHealth(vehicle, 1000.0)
            end
        end
    end
end)
