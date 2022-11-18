RegisterNetEvent('TimeAndDateDisplay-FiveM')
AddEventHandler('TimeAndDateDisplay-FiveM', function(time)
    if Config.ShowServerName and Config.ServerName then
        time = time .." | © " .. Config.ServerName
    end
    if Config.ShowPlayerName then
        time = time .."\nPlayer Name: " .. GetPlayerName(NetworkGetEntityOwner(PlayerPedId()))
    end
    if Config.ShowPlayerID then
        time = time .."\nPlayer ID: " .. GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
    end
    SendNUIMessage({
        action = "setTimeAndDate",
        time = time
    })
end)