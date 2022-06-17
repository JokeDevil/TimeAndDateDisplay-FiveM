local label =
[[ 
  //   
  ||            __                                    __    __  __       
  ||           |  \                                  |  \  |  \|  \      
  ||           | $$      __    __   _______  ______  | $$\ | $$| $$      
  ||           | $$     |  \  |  \ /       \|      \ | $$$\| $$| $$      
  ||           | $$     | $$  | $$|  $$$$$$$ \$$$$$$\| $$$$\ $$| $$      
  ||           | $$     | $$  | $$| $$      /      $$| $$\$$ $$| $$      
  ||           | $$_____| $$__/ $$| $$_____|  $$$$$$$| $$ \$$$$| $$_____ 
  ||           | $$     \\$$    $$ \$$     \\$$    $$| $$  \$$$| $$     \
  ||            \$$$$$$$$ \$$$$$$   \$$$$$$$ \$$$$$$$ \$$   \$$ \$$$$$$$$                                                                                                                                                                 
  ||                           Created by LucaNL#2230
  ||]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest("https://version.lucadev.nl/TimeAndDateDisplay-FiveM/version.txt", function( err, text, headers )
    PerformHttpRequest("https://version.lucadev.nl/TimeAndDateDisplay-FiveM/changelog.txt", function( err2, text2, headers2 )
        Wait(2000)
        local curVer = GetCurrentVersion()
        if curVer then else print("Can't load version checker due to custom fxmanifest.lua") return end
        print( label )
        if ( text2 ~= nil ) then
            if ( text ~= nil ) then
                print( "  ||    TimeAndDateDisplay version checker:^7\n  ||    ")
                if ( text ~= curVer ) then
                    print( "  ||    Current version: ^1" .. curVer .. "^7" )
                    print( "  ||    Latest recommended version: ^2" .. text .."^7\n  ||" )
                else
                    print( "  ||    Current version: ^2" .. curVer .. "^7" )
                    print( "  ||    Latest recommended version: ^2" .. text .."^7\n  ||" )
                end

                if ( text ~= curVer ) then
                    print( "  ||    Changelog for " .. text .. " that you ^1Dont^7 have installed:\n"..text2.."^7\n  ||")

                else
                    print( "  ||    Changelog for " .. text .. " that you ^2Have^7 installed:\n"..text2.."^7\n  ||")

                end

                if ( text ~= curVer ) then
                    print( "  ||    ^1Your "..GetCurrentResourceName().." version "..curVer.." is outdated, we recommend you update to the latest version that is "..text.." You can download it at^0\n^0  ||    ^1https://forum.cfx.re/t/release-free-time-and-date-display-fivem^7 \n^0  ||\n^0  ||    If you don't update, there can and will be bugs in the scripts that can lead to serious trouble.\n  \\\\\n" )
                else
                    print( "  ||    ^2"..GetCurrentResourceName().." is up to date!\n^0  ||  \n  \\\\\n" )
                    return
                end
            else
                print( "  ||    ^1There was an error getting the latest version information.\n^0  ||  \n  \\\\\n" )
            end
        else
            print( "  ||    ^1There was an error getting the latest version changelog information.\n^0  ||  \n  \\\\\n" )
        end
    end)
end)