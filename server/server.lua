Citizen.CreateThread(function()
    while true do
        Wait(5000)
        local time = nil
        if Config.ShowAll == true or (Config.ShowOnlyTime and Config.ShowOnlyDate) then
            time = os.date("%d/%m/%Y at %H:%M")
        elseif Config.ShowOnlyTime then
            time = os.date("%H:%M")
        elseif Config.ShowOnlyDate then
            time = os.date("%d/%m/%Y") 
        else
            time = "Something must be displayed, Change this in the config!"
            print('Something must be displayed, Change this in the config!')
        end
        TriggerClientEvent('TimeAndDate-Display', -1, time)
    end
end)