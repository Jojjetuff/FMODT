Citizen.CreateThread(function() --About Menu
	local lastSelectionaboutMenu = 1
	while true do

		if (aboutMenu) then
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionaboutMenu
			else
				lastSelectionaboutMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. AboutTitle)

			TriggerEvent("FMODT:Option", "CHEM!CAL T0Ж!N: ~y~FlatracerMOD", function(cb)
				if (cb) then
					drawNotification("~italic~CHEM!CAL T0Ж!N: ~y~~bold~FlatracerMOD (aka Flatracer)")
				end
			end)

			TriggerEvent("FMODT:Option", MenuBaseTitle .. ": ~y~MrDaGree", function(cb)
				if (cb) then
					drawNotification("~italic~" .. MenuBaseTitle .. ": ~y~~bold~MrDaGree (aka TylerMcGrubber)")
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~forum.fivem.net/u/mrdagree", function(cb)
				if (cb) then
					drawNotification("~y~~italic~forum.fivem.net/u/mrdagree")
				end
			end)

			TriggerEvent("FMODT:Option", "~r~" .. FoundAnyBugTitle .. "? " .. ContactMeTitle .. "!", function(cb)
				if (cb) then
					drawNotification("~r~~italic~" .. FoundAnyBugTitle .. "? " .. ContactMeTitle .. "!")
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~forum.fivem.net/u/Flatracer", function(cb)
				if (cb) then
					drawNotification("~y~~italic~forum.fivem.net/u/Flatracer")
				end
			end)

			TriggerEvent("FMODT:Option", TranslationTitle .. ": ~y~" .. LanguageCredits, function(cb)
				if (cb) then
					drawNotification("~italic~" .. TranslationTitle .. ": ~y~~bold~" .. LanguageCredits)
				end
			end)
			
			if LanguageCredits ~= "FlatracerMOD" then
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. LanguageCreditsLink, function(cb)
					if (cb) then
						drawNotification("~y~~italic~" .. LanguageCreditsLink)
					end
				end)
			end

			TriggerEvent("FMODT:Option", "~p~" .. VersionTitle .. " " .. Version .. "", function(cb)
				if (cb) then
					drawNotification("~p~~italic~" .. VersionTitle .. " " .. Version .. "")
				end
			end)

			TriggerEvent("FMODT:Update")
		end

		Citizen.Wait(0)
	end
end)

