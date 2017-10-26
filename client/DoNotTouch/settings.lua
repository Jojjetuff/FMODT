xPos = menuX; outfitSpawn = false; OutfitIndex = 1; keepWeapons = false; SettingsTable = {}
local getWeapons = false; HasOutfits = false, ChangeName, ChangePassword

Citizen.CreateThread(function() --Settings Menu
	while true do

		if (settingsMenu) then
		
			for i = 1, 20 do
				if OutfitNames[i] ~= NoOutfitName then
					HasOutfits = true
					break
				else
					HasOutfits = false
				end
			end

			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionsettingsMenu
			else
				lastSelectionsettingsMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. SettingsMenuTitle)
			
			if HasOutfits then
				TriggerEvent("FMODT:Bool", RestoreAppearanceBySpawnTitle, outfitSpawn, function(cb)
					outfitSpawn = cb
				end)
				
				if outfitSpawn then
					TriggerEvent("FMODT:StringArray", SelectOutfitTitle, OutfitNames, OutfitIndex, function(cb)
						OutfitIndex = cb
					end)
				end
			end
			
			TriggerEvent("FMODT:Bool", KeepWeaponsTitle, keepWeapons, function(cb)
				keepWeapons = cb
				getWeapons = keepWeapons
			end)
			
			TriggerEvent("FMODT:Float", MenuPositionHorizontalTitle, xPos, 0.15, 0.85, 0.01, 9, function(cb)
				xPos = cb
				menuX = xPos
			end)
			
			TriggerEvent("FMODT:StringArray", LanguageTitle .. ": ", Languages, SelectedLanguage, function(cb)
				SelectedLanguage = cb
			end)
			
			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. AccountMenuTitle, function(cb)
				if (cb) then
					settingsMenu = false
					accountMenu = true
				end
			end)

			TriggerEvent("FMODT:Update")
			
		elseif accountMenu then
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionaccountMenu
			else
				lastSelectionaccountMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. AccountMenuTitle)
			
			TriggerEvent("FMODT:Option", ChangeUsernameTitle, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', ChangeUsernameKeyboardMessage .. ':')
					ChangeName = true
				end
			end)

			TriggerEvent("FMODT:Option", ChangePasswordTitle, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', ChangePasswordKeyboardMessage .. ':')
					ChangePassword = true
				end
			end)

			TriggerEvent("FMODT:Option", LogOutTitle, function(cb)
				if (cb) then
					SaveSettings()
					godmode = false
					godmodeCount = 0
					playerVisible = true
					playerVisibleCount = 1
					nowantedlevel = false
					nowantedlevelCount = 0
					superjump = false
					stamina = false
					supermanmode = false
					WantedLevel = 0
					maxWantedLevel = 5
					Run = 1.0
					Swim = 1.0
					vehgodmode = false
					flyingvehicle = false
					reducevehgrip = false
					vehicleVisible = true
					gravity = true
					boosthorn = false
					bunnyhop = false
					DriveOnWater = false
					seatbelt = false
					despawnable = true
					autodelete = true
					mapblip = true
					LastGameTimer = 0
					noclipmode = false
					isRadarExtended = false
					isScoreboardShowing = false
					fps = 0
					prevframes = 0
					curframes = 0
					prevtime = 0
					curtime = 0
					player = -1
					radioname = ""
					speedoDefault = 1
					autoparachute = true
					heatvision = false
					nightvision = false
					CoordsOverMap = true
					HideHUD = false
					HideRadar = false
					HideHUDCount = 0
					freezeradio = false
					nocinecam = true
					mobileradio = false
					dfps = true
					simpleSpeedo = true
					RadioFreezePosition = 1
					deletegun = false
					vehiclegun = false
					whalegun = false
					teleportgun = false
					fireammo = false
					VehicleWeaponsPosition = 1
					setinfinite = false
					oneshot = false
					vehicleweapons = false
					explosiveammo = false
					ExplosiveBulletEnumPosition = 1
					freezetime = false
					blackout = false
					explodevehicles = false
					jumpmode = false
					nonpcstraffic = false
					SelectedLanguage = 1
					Username = ""
					Password = ""
					loggedIn = false
					MenuOpen = false
				end
			end)

			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Disables Weapon Saving, When The Player Is Dead 
	while true do
		Citizen.Wait(0)
		if IsPedDeadOrDying(GetPlayerPed(-1), 1) then
			getWeapons = false
		end
	end
end)

Citizen.CreateThread(function() --Gets Players Weapons
	while true do
		Citizen.Wait(15000)
		if getWeapons then
			local gotWeap = {}
			local weaponHashes = {
								  -1716189206, 1737195953, 1317494643, -1786099057, -2067956739, 1141786504, -102323637, -102323637, --Melee
								  -102973651, -656458692, -581044007, -1951375401, -538741184, -1810795771, 419712736, -853065399, --Melee
								  453432689, 1593441988, -1716589765, -1076751822, -771403250, 137902532, --Handguns
								  -598887786, -1045183535, 584646201, 911657153, 1198879012, 3219281620, --Handguns
								  324215364,  -619010992, 736523883, -270015777, 171789620, -1660422300, 2144741730, --MachineGuns
								  1627465347, -1121678507, 2024373456, 3686625920, --MachineGuns
								  -1074790547, -2084633992, -1357824103, -1063057011, 2132975508, 1649403952, --AssaultRifles
								  961495388, 4208062921, --AssaultRifles
								  100416529, 205991906, -952879014, 177293209, --SniperRifles
								  487013001, 2017895192, -1654528753, -494615257, -1466123874, 984333226, -275439685, 317205821, --Shotguns
								  -1568386805, -1312131151, 1119849093, 2138347493, 1834241177, 1672152130, 125959754, --HeavyWeapons
								  -1813897027, 741814745, -1420407917, -1600701090, 615608432, 101631238, 883325847, 1233104067, --ThrownWeapons
								  600439132, 126349499, -37975472, -1169823560 --ThrownWeapons
								  -72657034 --Parachute
								 }
			
			for i = 1, tablelength(weaponHashes) do
				if HasPedGotWeapon(GetPlayerPed(-1), weaponHashes[i], false) then
					local bool, clipAmmo = GetAmmoInClip(GetPlayerPed(-1), weaponHashes[i])
					table.insert(gotWeap, weaponHashes[i])
					table.insert(gotWeap, GetAmmoInPedWeapon(GetPlayerPed(-1), weaponHashes[i]))
					table.insert(gotWeap, clipAmmo)
				end
			end
			local weapons = table.tostring(gotWeap)
				  weapons = weapons:gsub("{", "")
				  weapons = weapons:gsub("}", "")
			TriggerServerEvent("WeaponSaving", weapons)
		end
	end
end)

Citizen.CreateThread(function() --Change Name / Password
	local result
	while true do
		Citizen.Wait(0)
		if ChangeName then
			DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", Username, "", "", "", 16)
			blockinput = true
			while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
				Citizen.Wait(0)
			end
			if UpdateOnscreenKeyboard() ~= 2 then
				result = GetOnscreenKeyboardResult()
				Citizen.Wait(500)
				if result:len() >= 3 and not result:match("%W") then
					Username = result
					blockinput = false
					ChangeName = false
					TriggerServerEvent("ChangeUsername", Username)
				else
					drawNotification("~r~" .. NameInvalidMessage .. "!")
				end
			else
				Citizen.Wait(500)
				blockinput = false
				ChangeName = false
			end
		elseif ChangePassword then
			DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", Password, "", "", "", 30)
			blockinput = true
			while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
				Citizen.Wait(0)
			end
			if UpdateOnscreenKeyboard() ~= 2 then
				result = GetOnscreenKeyboardResult()
				Citizen.Wait(500)
				if result:len() >= 6 then
					Password = result
					drawNotification("~g~" .. ChangePasswordSuccessMessage .. "!")
					blockinput = false
					ChangePassword = false
					TriggerServerEvent("ChangePassword", Password)
				else
					drawNotification("~r~" .. PasswordTooShortMessage .. "!")
				end
			else
				Citizen.Wait(500)
				blockinput = false
				ChangePassword = false
			end
		end
	end
end)

AddEventHandler("ChangeUsernameClient", function(Changed, Name)
	Username = Name
	if Changed then
		drawNotification("~g~" .. ChangeUsernameSuccessMessage .. "!")
	else
		drawNotification("~r~" .. ChangeUsernameFailMessage .. "!")
	end
end)

AddEventHandler("MenuSettingsSet", function(Settings) --Restores Settings
	local SettingsSplitted = stringsplit(Settings, ',')

	for i = 1, 20 do
		if OutfitNames[i] ~= NoOutfitName then
			HasOutfits = true
			break
		else
			HasOutfits = false
		end
	end

	if SettingsSplitted[1] then menuX = tonumber(SettingsSplitted[1])/100.0; xPos = menuX end
	
	if HasOutfits then
		if SettingsSplitted[2] then outfitSpawn = tobool(SettingsSplitted[2]) end
		if SettingsSplitted[3] then OutfitIndex = tonumber(SettingsSplitted[3]) end
		if outfitSpawn and OutfitNames[OutfitIndex] ~= NoOutfitName then
			TriggerServerEvent("OutfitLoad", OutfitIndex)
		end
	end
	
	if SettingsSplitted[4] then keepWeapons = tobool(SettingsSplitted[4]) end
	if SettingsSplitted[5] then godmode = tobool(SettingsSplitted[5]) end
	if SettingsSplitted[6] then godmodeCount = tonumber(SettingsSplitted[6]) end
	if SettingsSplitted[7] then playerVisible = tobool(SettingsSplitted[7]) end
	if SettingsSplitted[8] then playerVisibleCount = tonumber(SettingsSplitted[8]) end
	if SettingsSplitted[9] then nowantedlevel = tobool(SettingsSplitted[9]) end
	if SettingsSplitted[10] then nowantedlevelCount = tonumber(SettingsSplitted[10]) end
	if SettingsSplitted[11] then superjump = tobool(SettingsSplitted[11]) end
	if SettingsSplitted[12] then stamina = tobool(SettingsSplitted[12]) end
	if SettingsSplitted[13] then supermanmode = tobool(SettingsSplitted[13]) end
	if SettingsSplitted[14] then maxWantedLevel = tonumber(SettingsSplitted[14]) end
	if SettingsSplitted[14] then SetMaxWantedLevel(tonumber(SettingsSplitted[14])) end
	if SettingsSplitted[15] then Run = tonumber(SettingsSplitted[15]) / 10.0 end
	if SettingsSplitted[16] then Swim = tonumber(SettingsSplitted[16]) / 10.0 end
	if SettingsSplitted[17] then vehgodmode = tobool(SettingsSplitted[17]) end
	if SettingsSplitted[18] then flyingvehicle = tobool(SettingsSplitted[18]) end
	if SettingsSplitted[19] then reducevehgrip = tobool(SettingsSplitted[19]) end
	if SettingsSplitted[20] then vehicleVisible = tobool(SettingsSplitted[20]) end
	if SettingsSplitted[21] then gravity = tobool(SettingsSplitted[21]) end
	if SettingsSplitted[22] then boosthorn = tobool(SettingsSplitted[22]) end
	if SettingsSplitted[23] then bunnyhop = tobool(SettingsSplitted[23]) end
	if SettingsSplitted[24] then DriveOnWater = tobool(SettingsSplitted[24]) end
	if SettingsSplitted[25] then seatbelt = tobool(SettingsSplitted[25]) end
	if SettingsSplitted[26] then despawnable = tobool(SettingsSplitted[26]) end
	if SettingsSplitted[27] then autodelete = tobool(SettingsSplitted[27]) end
	if SettingsSplitted[28] then mapblip = tobool(SettingsSplitted[28]) end
	if SettingsSplitted[29] then deletegun = tobool(SettingsSplitted[29]) end
	if SettingsSplitted[30] then vehiclegun = tobool(SettingsSplitted[30]) end
	if SettingsSplitted[31] then whalegun = tobool(SettingsSplitted[31]) end
	if SettingsSplitted[32] then teleportgun = tobool(SettingsSplitted[32]) end
	if SettingsSplitted[33] then fireammo = tobool(SettingsSplitted[33]) end
	if SettingsSplitted[34] then VehicleWeaponsPosition = tonumber(SettingsSplitted[34]) end
	if SettingsSplitted[35] then setinfinite = tobool(SettingsSplitted[35]) end
	if SettingsSplitted[36] then oneshot = tobool(SettingsSplitted[36]) end
	if SettingsSplitted[37] then vehicleweapons = tobool(SettingsSplitted[37]) end
	if SettingsSplitted[38] then explosiveammo = tobool(SettingsSplitted[38]) end
	if SettingsSplitted[39] then ExplosiveBulletEnumPosition = tonumber(SettingsSplitted[39]) end
	if SettingsSplitted[40] then speedoDefault = tonumber(SettingsSplitted[40]) end
	if SettingsSplitted[41] then autoparachute = tobool(SettingsSplitted[41]) end
	if SettingsSplitted[42] then heatvision = tobool(SettingsSplitted[42]) end
	if SettingsSplitted[43] then nightvision = tobool(SettingsSplitted[43]) end
	if SettingsSplitted[44] then CoordsOverMap = tobool(SettingsSplitted[44]) end
	if SettingsSplitted[45] then HideHUD = tobool(SettingsSplitted[45]) end
	if SettingsSplitted[46] then HideRadar = tobool(SettingsSplitted[46]) end
	if SettingsSplitted[47] then HideHUDCount = tonumber(SettingsSplitted[47]) end
	if SettingsSplitted[48] then freezeradio = tobool(SettingsSplitted[48]) end
	if SettingsSplitted[49] then nocinecam = tobool(SettingsSplitted[49]) end
	if SettingsSplitted[50] then mobileradio = tobool(SettingsSplitted[50]) end
	if SettingsSplitted[51] then dfps = tobool(SettingsSplitted[51]) end
	if SettingsSplitted[52] then simpleSpeedo = tobool(SettingsSplitted[52]) end
	if SettingsSplitted[53] then RadioFreezePosition = tonumber(SettingsSplitted[53]) end
	if SettingsSplitted[54] then SelectedLanguage = tonumber(SettingsSplitted[54]) end
end)

AddEventHandler("GiveWeaponsBack", function(weapons) --Gives The Player His Weapons
	local Weapons = stringsplit(weapons, ",")
	
	for i = 1, tablelength(Weapons), 3 do
		GiveWeaponToPed(GetPlayerPed(-1), tonumber(Weapons[i]), 0, false, false)
		SetPedAmmo(GetPlayerPed(-1), tonumber(Weapons[i]), tonumber(Weapons[i + 1]))
		SetAmmoInClip(GetPlayerPed(-1), tonumber(Weapons[i]), 0)
	end
	SetCurrentPedWeapon(GetPlayerPed(-1), 2725352035, true)
	getWeapons = true
end)

AddEventHandler("playerSpawned", function(spawn) --Changes To Outfit & Gives Weapons Back By Spawn
	if outfitSpawn then
		if OutfitNames[OutfitIndex] ~= NoOutfitName then
			playerVisible = false
			TriggerServerEvent("OutfitLoad", OutfitIndex)
			drawNotification("~g~" .. OutfitMessage .. " ~y~" .. OutfitNames[OutfitIndex] .. " ~g~" .. LoadedMessage .. "!")
		else
			drawNotification("~r~" .. OutfitMessage .. " " .. OutfitIndex .. " - " .. NotExisting .. "!")
		end
	end
	if keepWeapons then
		if outfitSpawn and OutfitNames[OutfitIndex] ~= NoOutfitName then
			if not HasModelLoaded(Model) then
				while not HasModelLoaded(Model) do
					Citizen.Wait(0)
				end
				Citizen.Wait(1000)
			end
		end
		TriggerServerEvent("WeaponLoading")
	end
end)

