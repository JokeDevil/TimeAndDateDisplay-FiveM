function getTime()
    if Config.ShowDateAndTime or (Config.ShowOnlyDate and Config.ShowOnlyTime) then
        if Config.DayMonthYear then
            return os.date("%d-%m-%Y")
        elseif Config.MonthDayYear then
            return os.date("%m-%d-%Y")
        elseif Config.YearMonthDay then
            return os.date("%Y-%m-%d")
        elseif Config.YearDayMonth then
            return os.date("%Y-%d-%m")
        else
            return os.date("%d-%m-%Y")
        end
    elseif Config.ShowOnlyTime then
        return os.date("%H:%M")
    elseif Config.ShowOnlyDate then
        if Config.DayMonthYear then
            return os.date("%d-%m-%Y")
        elseif Config.MonthDayYear then
            return os.date("%m-%d-%Y")
        elseif Config.YearMonthDay then
            return os.date("%Y-%m-%d")
        elseif Config.YearDayMonth then
            return os.date("%Y-%d-%m")
        else
            return os.date("%d-%m-%Y")
        end
    else
        print('Config.ShowDateAndTime or Config.ShowOnlyDate or Config.ShowOnlyTime must to be set to true in the config.')
        return os.date("%d-%m-%Y at %H:%M")
    end
end

Citizen.CreateThread(function()
    while true do
        TriggerClientEvent('TimeAndDateDisplay-FiveM', -1, getTime())
        Wait(30000)
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        Wait(2500)
        TriggerClientEvent('TimeAndDateDisplay-FiveM', -1, getTime())
    end
end)
  

AddEventHandler("playerJoining", function (data)
    TriggerClientEvent('TimeAndDateDisplay-FiveM', source, getTime())
end)