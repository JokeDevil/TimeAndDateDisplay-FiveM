PerformHttpRequest("https://api.github.com/repos/LucaNL/TimeAndDateDisplay-FiveM/releases/latest", function(err, text, headers)
	Citizen.Wait(5000)
	if text then
		local info = json.encode(text) info = json.decode(text)
		local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version") 
		local newestVersion = info.tag_name

		print("  //\n  ||    "..GetCurrentResourceName().." is Created by "..info.author.login.."#2230\n  ||")

		if ( newestVersion ~= nil ) then
			if newestVersion ~= currentVersion then
				print("  ||    Current version: ^1" .. currentVersion .. "^0")
				print("  ||    Latest version: ^2" .. newestVersion .."^0\n  ||")
				print("  ||    ^1An update is available for "..GetCurrentResourceName()..", visit https://github.com/LucaNL/TimeAndDateDisplay-FiveM to get the latest version.\n^0  \\\\")
			elseif newestVersion == currentVersion then
				print("  ||    Current version: ^2" .. currentVersion .. "^0")
				print("  ||    Latest version: ^2" .. newestVersion .."^0\n  ||")
				print("  ||    ^2"..GetCurrentResourceName().." is up to date!\n^0  \\\\")
			end
		else
			print("  ||    ^1There was an error getting the latest version information.\n^0  \\\\")
		end
	end
end)