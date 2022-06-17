local time = nil

RegisterNetEvent('TimeAndDate-Display')
AddEventHandler('TimeAndDate-Display', function(time2)
    time = time2 .. " | © " .. Config.Servername
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)

		SetTextFont(0)
		SetTextProportional(1)
		SetTextScale(0.30, 0.30)
		SetTextColour(255, 255, 255, 255)
		SetTextDropshadow(0, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextRightJustify(true)
		SetTextWrap(0,0.99)
		SetTextEntry("STRING")

		AddTextComponentString(time)
		DrawText(0.5, 0.01)
	end
end)
