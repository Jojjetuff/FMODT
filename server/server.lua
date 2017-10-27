local Username, IsUsingSteam
local CurrentVersion = "3.0.0"
local banHours = 1.0 --Ban Duration

--[[
	1 Minute ~ 0.017
	5 Minutes ~ 0.085
	10 Minutes = 0.17
	15 Minutes = 0.25
	30 Minutes = 0.5
	One Hour = 1.0
	Two Hours = 2.0
	Three Hours = 3.0
	
	And so on...
]]

--[[	To get your Identifier:

				Add the Trainer to your Server Resources, run FiveM and join YOUR Server. Once your Ped Spawned, press the following Buttoncombination:

				
																		GAMEPAD:
																		
												--->>>		LB/ L1 + RB / R1 + DPAD Down + A/ X.		<<<---
															
																		KEYBOARD:
															
					  --->>>	   Button for VEHICLE AIM + Button for VEHICLE SHOOT + Button for PHONE DOWN + Button for PHONE UP.	      <<<---

												It Outputs the Identifier in your RCON Log. Edit this File afterward.

]]

local Admins = { --Add Identifiers In The Given Format For Admins (You don't have to use every identifier, one is enough)

				{"ip:000.000.000.000", "steam:110000114d96182", "license:5703b0535f4a14910d6e88c00d3443fca96c02d2", "FlatraceMOD/ Flatracer"}, --Remove this Line if you don't want me to be an Admin ^^
				{"ip:000.000.000.000", "steam:000000000000000", "license:0000000000000000000000000000000000000000", "Admin Name"},
				{"ip:000.000.000.000", "steam:000000000000000", "license:0000000000000000000000000000000000000000", "Admin Name"},
				{"ip:000.000.000.000", "steam:000000000000000", "license:0000000000000000000000000000000000000000", "Admin Name"},
				{"ip:000.000.000.000", "steam:000000000000000", "license:0000000000000000000000000000000000000000", "Admin Name"},
				{"ip:000.000.000.000", "steam:000000000000000", "license:0000000000000000000000000000000000000000", "Admin Name"},
				
			   }


--General Stuff
			   
AddEventHandler("ID", function() --Grants Access To The Menu
	local IDs = GetPlayerIdentifiers(source)
	local done
	for k, AdminID in pairs(Admins) do
		for l, ID in pairs(IDs) do
			if ID:lower() == AdminID[1]:lower() or ID == AdminID[2]:lower() or ID == AdminID[3]:lower() then
				print(k .. ". Admin (" .. AdminID[4] .. ") joined.")
				TriggerClientEvent("AdminActivation", source, 1)
				done = true
				break
			else
				if k == tablelength(Admins) then
					TriggerClientEvent("AdminActivation", source, 0)
				end
			end
		end
		if done then
			break
		end
	end
end)

AddEventHandler("IsUsingSteam", function() --Checks If The Player Uses Steam
	if GetIdFromSource("steam", source) ~= nil then
		IsUsingSteam = true
	end
end)

AddEventHandler("GetID", function() --Used To Get The Player Identifiers
	local IDs = GetPlayerIdentifiers(source)
	print(GetPlayerName(source) .. " Identifier(s):")
	for k, ID in pairs(IDs) do
		print(ID)
	end
end)

AddEventHandler("RecoverOldSaves", function() --Used To Recovery Old Saves (Outfits, Vehicles, Settings & Weapons)
	if Username and IsUsingSteam then
		local SteamID = GetIdFromSource("steam", source)
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. SteamID .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. i .. '.txt', fileContent, -1)
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. SteamID .. '_' .. i .. '.txt', "", -1)
			end
		end
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. SteamID .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. i .. '.txt', fileContent, -1)
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. SteamID .. '_' .. i .. '.txt', "", -1)
			end
		end
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. SteamID .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt', fileContent, -1)
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. SteamID .. '.txt', "", -1)
		end
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. SteamID .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt', fileContent, -1)
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. SteamID .. '.txt', "", -1)
		end
	end
end)


--Admin Menu Stuff

AddEventHandler("GetIt", function(Player) --Used To Get The Informations Of A Player
	TriggerClientEvent("GotIt", source, GetPlayerPing(Player), GetPlayerEndpoint(Player), GetIdFromSource("license", Player), GetIdFromSource("steam", Player))
end)

AddEventHandler("GetUsername", function(Player) --Used To Get The Username Of A Player
	TriggerClientEvent("GetUsernameClient", Player, source)
end)

AddEventHandler("GotUsername", function(Sender, Name) --Used To Get The Username Of A Player
	TriggerClientEvent("GotUsernameClient", Sender, Name)
end)

AddEventHandler("GetHost", function() --Used To Get The Informations Of A Player
	TriggerClientEvent("GotHost", source, GetHostId(), GetPlayerName(GetHostId()))
end)

AddEventHandler("KickPlayer", function(Player, KickReason) --Used To Kick A Player
	DropPlayer(Player, "Kick Reason: " ..  KickReason)
end)

AddEventHandler("BanPlayer", function(Player, BanReason, BanDuration) --Used To Ban A Player
	local now = os.date("*t")
	local nowutc = os.time(now)
	local IDLicense = GetIdFromSource("license", Player)
	local IDSteam = GetIdFromSource("steam", Player)
	
	if IDLicense ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. IDLicense .. '.txt', tostring(nowutc) .. "\n" .. BanReason .. "\n" .. BanDuration, -1)
	end
	
	if IDSteam ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. IDSteam .. '.txt', tostring(nowutc) .. "\n" .. BanReason .. "\n" .. BanDuration, -1)
	end

	DropPlayer(Player, "Ban Reason: " .. BanReason)
end)

AddEventHandler("playerConnecting", function(playerName, setKickReason) --Checks if a Player is banned and kicks him if so
	local alreadyKicked = false
	local now = os.date("*t")
	local nowutc = os.time(now)
	local banDuration = banHours * 3600
	local Reason = ""
	local IDLicense = GetIdFromSource("license", source)

	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. IDLicense .. '.txt')
	if fileContent ~= nil and fileContent ~= "" then
		local Splitted = stringsplit(fileContent, "\n")
		if tablelength(Splitted) > 1 then
			banDuration = tonumber(Splitted[3]) * 3600
			Reason = " Reason: " .. Splitted[2]
		end
		if ((nowutc - tonumber(Splitted[1])) < banDuration) then
			local remainingSeconds = math.floor(banDuration - (nowutc - tonumber(Splitted[1])))
			local remainingMinutes = round((remainingSeconds / 60), 1)
			local remainingHours = round((remainingMinutes / 60), 1)
			print("(" .. IDLicense .. ") tried to enter but is still banned. Join prevented!")
			if remainingSeconds < 60 then
				setKickReason("You are still banned for " .. remainingSeconds .. " Seconds!" .. Reason)
			elseif remainingMinutes < 60 then
				setKickReason("You are still banned for " .. remainingMinutes .. " Minutes!" .. Reason)
			else
				setKickReason("You are still banned for " .. remainingHours .. " Hours!" .. Reason)
			end
			CancelEvent()
			alreadyKicked = true
		elseif ((nowutc - tonumber(Splitted[1])) >= banDuration) then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. IDLicense .. '.txt', "", -1)
			alreadyKicked = false
		end
	end
	
	if not alreadyKicked then
		local IDSteam = GetIdFromSource("steam", source)
		if IDSteam then
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. IDSteam .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local Splitted = stringsplit(fileContent, '\n')
				if tablelength(Splitted) > 1 then
					banDuration = tonumber(Splitted[3]) * 3600
					Reason = " Reason: " .. Splitted[2]
				end
				if ((nowutc - tonumber(Splitted[1])) < banDuration) then
					local remainingSeconds = math.floor(banDuration - (nowutc - tonumber(Splitted[1])))
					print("(" .. SteamID .. ") tried to enter but is still banned. Join prevented!")
					if remainingSeconds < 60 then
						setKickReason("You are still banned for " .. remainingSeconds .. " Seconds!" .. Reason)
					elseif remainingMinutes < 60 then
						setKickReason("You are still banned for " .. remainingMinutes .. " Minutes!" .. Reason)
					else
						setKickReason("You are still banned for " .. remainingHours .. " Hours!" .. Reason)
					end
					CancelEvent()
				elseif ((nowutc - tonumber(Splitted[1])) >= banDuration) then
					local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'bannedplayer' .. GetOSSep() .. SteamID .. '.txt', "", -1)
				end
			end
		end
	end
end)


--Admin Misc Menu Stuff

AddEventHandler("ExtendableMap", function(State) --Enables/ Disables the Extendable Map on every Client
	TriggerClientEvent("ExtendableMapClient", -1, State)
end)

AddEventHandler("PlayerBlips", function(State) --Enables/ Disables the Player Blips on every Client
	TriggerClientEvent("PlayerBlipsClient", -1, State)
end)

AddEventHandler("PvP", function(State) --Enables/ Disables PvP on every Client
	TriggerClientEvent("PvPClient", -1, State)
end)

AddEventHandler("Scoreboard", function(State) --Enables/ Disables the Scoreboard on every Client
	TriggerClientEvent("ScoreboardClient", -1, State)
end)

AddEventHandler("AdminOnlyBlipsNames", function(State) --Enables/ Disables the Blips & Names on Non-Admin Clients
	TriggerClientEvent("AdminOnlyBlipsNamesClient", -1, State)
end)

AddEventHandler("VoiceChat", function(State) --Enables/ Disables the Voice Chat on every Client
	TriggerClientEvent("VoiceChatClient", -1, State)
end)

AddEventHandler("VoiceChatProximity", function(Proximity) --Changes the Voice Chat Proximity on every Client
	TriggerClientEvent("VoiceChatProximityClient", -1, Proximity)
end)

--Outfit Stuff

AddEventHandler("OutfitSave", function(OutfitNumber, Outfit)
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt', Outfit, -1)
	end
end)

AddEventHandler("OutfitLoad", function(OutfitNumber) --Loads An Outfit
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local OutfitSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("ChangePlayerPed", source, OutfitSplitted[2])
			TriggerClientEvent("ApplyOutfitProps", source, OutfitSplitted[3], OutfitSplitted[4], OutfitSplitted[5], OutfitSplitted[6], OutfitSplitted[7], OutfitSplitted[8], OutfitSplitted[9], OutfitSplitted[10])
			TriggerClientEvent("ApplyOutfitVariations1", source, OutfitSplitted[11], OutfitSplitted[12], OutfitSplitted[13], OutfitSplitted[14], OutfitSplitted[15], OutfitSplitted[16], OutfitSplitted[17], OutfitSplitted[18], OutfitSplitted[19])
			TriggerClientEvent("ApplyOutfitVariations2", source, OutfitSplitted[20], OutfitSplitted[21], OutfitSplitted[22], OutfitSplitted[23], OutfitSplitted[24], OutfitSplitted[25], OutfitSplitted[26], OutfitSplitted[27])
			TriggerClientEvent("ApplyOutfitVariations3", source, OutfitSplitted[28], OutfitSplitted[29], OutfitSplitted[30], OutfitSplitted[31], OutfitSplitted[32], OutfitSplitted[33], OutfitSplitted[34], OutfitSplitted[35])
			if (OutfitSplitted[2] == "-1667301416") or (OutfitSplitted[2] == "1885233650")  then
				TriggerClientEvent("ApplyOutfitHeadData", source, OutfitSplitted[36], OutfitSplitted[37], OutfitSplitted[38], OutfitSplitted[39], OutfitSplitted[40], OutfitSplitted[41], OutfitSplitted[42], OutfitSplitted[43], OutfitSplitted[44])
				TriggerClientEvent("ApplyOutfitHeadOverlay", source, OutfitSplitted[45], OutfitSplitted[46], OutfitSplitted[47], OutfitSplitted[48], OutfitSplitted[49], OutfitSplitted[50], OutfitSplitted[51], OutfitSplitted[52], OutfitSplitted[53], OutfitSplitted[54], OutfitSplitted[55], OutfitSplitted[56], OutfitSplitted[57], OutfitSplitted[58], OutfitSplitted[59], OutfitSplitted[60], OutfitSplitted[61], OutfitSplitted[62])
			end
		end
	end
end)

AddEventHandler("OutfitDelete", function(OutfitNumber) --Deletes An Outfit
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt', "", -1)
		end
	end
end)

AddEventHandler("GetOutfitNames", function() --Gets The Outfit Names
	local OutfitNames = {"Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty"}
	if Username ~= nil then
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local OutfitSplitted = stringsplit(fileContent, ',')
				if OutfitSplitted[1] == nil then
					OutfitNames[i] = "Empty"
				else
					OutfitNames[i] = OutfitSplitted[1]
				end
			end
		end
		TriggerClientEvent("GotOutfitNames", source, OutfitNames[1], OutfitNames[2], OutfitNames[3], OutfitNames[4], OutfitNames[5], OutfitNames[6], OutfitNames[7], OutfitNames[8], OutfitNames[9], OutfitNames[10], OutfitNames[11], OutfitNames[12], OutfitNames[13], OutfitNames[14], OutfitNames[15], OutfitNames[16], OutfitNames[17], OutfitNames[18], OutfitNames[19], OutfitNames[20])
	end
end)


--Vehicles Stuff

AddEventHandler("VehicleSave", function(VehicleNumber, Vehicle) --Saves A Vehicle
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt', Vehicle, -1)
	end
end)

AddEventHandler("VehicleLoad", function(VehicleNumber) --Loads A Vehicle
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local VehicleSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("SpawnSavedVehicle", source, VehicleSplitted[2], VehicleSplitted[3], VehicleSplitted[4], VehicleSplitted[5], VehicleSplitted[6], VehicleSplitted[7], VehicleSplitted[8],
															VehicleSplitted[9], VehicleSplitted[10], VehicleSplitted[11], VehicleSplitted[12], VehicleSplitted[13], VehicleSplitted[14], VehicleSplitted[15],
															VehicleSplitted[16], VehicleSplitted[17], VehicleSplitted[18], VehicleSplitted[19], VehicleSplitted[20], VehicleSplitted[21], VehicleSplitted[22], 
															VehicleSplitted[23], VehicleSplitted[24], VehicleSplitted[25], VehicleSplitted[26], VehicleSplitted[27], VehicleSplitted[28], VehicleSplitted[29],
															VehicleSplitted[30], VehicleSplitted[31], VehicleSplitted[32], VehicleSplitted[33], VehicleSplitted[34], VehicleSplitted[35], VehicleSplitted[36],
															VehicleSplitted[37], VehicleSplitted[38], VehicleSplitted[39], VehicleSplitted[40], VehicleSplitted[41], VehicleSplitted[42], VehicleSplitted[43],
															VehicleSplitted[44], VehicleSplitted[45], VehicleSplitted[46], VehicleSplitted[47], VehicleSplitted[48], VehicleSplitted[49], VehicleSplitted[50],
															VehicleSplitted[51], VehicleSplitted[52], VehicleSplitted[53], VehicleSplitted[54], VehicleSplitted[55], VehicleSplitted[56], VehicleSplitted[57],
															VehicleSplitted[58], VehicleSplitted[59], VehicleSplitted[60], VehicleSplitted[61], VehicleSplitted[62], VehicleSplitted[63], VehicleSplitted[64],
															VehicleSplitted[65], VehicleSplitted[66], VehicleSplitted[67], VehicleSplitted[68], VehicleSplitted[69], VehicleSplitted[70], VehicleSplitted[71],
															VehicleSplitted[72], VehicleSplitted[73], VehicleSplitted[74], VehicleSplitted[75], VehicleSplitted[76], VehicleSplitted[77], VehicleSplitted[78],
															VehicleSplitted[79], VehicleSplitted[80], VehicleSplitted[81], VehicleSplitted[82], VehicleSplitted[83], VehicleSplitted[84], VehicleSplitted[85],
															VehicleSplitted[86], VehicleSplitted[87], VehicleSplitted[88], VehicleSplitted[89], VehicleSplitted[90])
		end
	end
end)

AddEventHandler("VehicleUnsave", function(VehicleNumber) --Unsaves A Vehicle
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local VehicleSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("UnsaveSavedVehicle", source, VehicleSplitted[2])
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt', "", -1)
		end
	end
end)

AddEventHandler("GetVehicleNames", function() --Gets The Vehicle Names
	local VehicleNames = {"Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty", "Empty"}
	if Username ~= nil then
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local VehicleSplitted = stringsplit(fileContent, ',')
				if VehicleSplitted[1] == nil then
					VehicleNames[i] = "Empty"
				else
					VehicleNames[i] = VehicleSplitted[1]
				end
			end
		end
		TriggerClientEvent("GotVehicleNames", source, VehicleNames[1], VehicleNames[2], VehicleNames[3], VehicleNames[4], VehicleNames[5], VehicleNames[6], VehicleNames[7], VehicleNames[8], VehicleNames[9], VehicleNames[10], VehicleNames[11], VehicleNames[12], VehicleNames[13], VehicleNames[14], VehicleNames[15], VehicleNames[16], VehicleNames[17], VehicleNames[18], VehicleNames[19], VehicleNames[20])
	end
end)


--Settings Stuff

AddEventHandler("SaveSettings", function(Settings)
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt', Settings, -1)
	end
end)

AddEventHandler("LoadSettings", function() --Loads Settings
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt')
		TriggerClientEvent("MenuSettingsSet", source, fileContent)
	end
end)


--Weapons Stuff

AddEventHandler("WeaponSaving", function(weapons) --Saves Player Weapons
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt', weapons, -1)
	end
end)

AddEventHandler("WeaponLoading", function() --Loads Player Weapons
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt')
		TriggerClientEvent("GiveWeaponsBack", source, fileContent)
	end
end)


--Teleporting Stuff

AddEventHandler("GetCoords", function(Receiver, Sender) --Gets The Coords Of A Player
    TriggerClientEvent("GetCoordsClient", Receiver, Sender)
end)

AddEventHandler("GotCoords", function(Receiver, X, Y, Z) --Send The Coords Back To A Client
    TriggerClientEvent("GotCoordsClient", Receiver, X, Y, Z)
end)

AddEventHandler("EffectForAll", function(EffectPlayer) --Triggers The Teleport Effect On Other Clients
	TriggerClientEvent("Effect", -1, EffectPlayer)
end)

AddEventHandler("TeleOtherPlayer", function(Player, AdminCoordX, AdminCoordY, AdminCoordZ) --Teleports A Player To An Admin
	TriggerClientEvent("TeleportMe", Player, AdminCoordX, AdminCoordY, AdminCoordZ)
end)


--Connect, Leave and Death Message

AddEventHandler("playerConnecting", function() --Triggers The Join Message On All Clients
	TriggerClientEvent("JoinMessageClients", -1, GetPlayerName(source))
end)

AddEventHandler("playerDropped", function(reason) --Triggers The Leave Message On All Clients
	print("Left: " .. GetPlayerName(source))
    TriggerClientEvent("LeftMessageClients", -1, GetPlayerName(source))
end)

AddEventHandler("DeathMessage", function(Killer, Text, KilledPlayer) --Sends the Death Message To All Clients
	TriggerClientEvent("DeathMessageClients", -1, Killer, Text, KilledPlayer)
end)


--World Menu Stuff

AddEventHandler("Blackout", function(State) --Sets the specific Weather on every Client
	TriggerClientEvent("SetBlackout", -1, State)
end)

AddEventHandler("NoNPCsTraffic", function(State) --Sets the specific Weather on every Client
	TriggerClientEvent("SetNoNPCsTraffic", -1, State)
end)

AddEventHandler("Weather", function(Type) --Sets the specific Weather on every Client
	TriggerClientEvent("SetWeather", -1, Type)
end)

AddEventHandler("Time", function(Hours, Minutes, freeze, State) --Sets the Time on every Client
	TriggerClientEvent("SetTime", -1, Hours, Minutes, freeze, State)
end)

--Register / Login Stuff

AddEventHandler("Register", function(Name, Password, SecurityQuestion, SecurityQuestionAnswer) --Registers a new User
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt')
	if fileContent == nil and fileContent == "" then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt', GetPasswordHash(Password) .. ";" .. SecurityQuestion .. ";" .. GetPasswordHash(SecurityQuestionAnswer:lower()), -1)
		TriggerClientEvent("RegisterClient", source, true)
	else
		TriggerClientEvent("RegisterClient", source, false)
	end
end)

AddEventHandler("ResetPassword", function(State, Name, SecurityQuestionAnswer) --Resets a Password
	Username = Name
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username:lower() .. '.txt')
	local Splitted = stringsplit(fileContent, ';')
	if not State then
		TriggerClientEvent("GotSecurityQuestion", source, Splitted[2])
	elseif State then
		if VerifyPasswordHash(SecurityQuestionAnswer:lower(), Splitted[3]) then
			TriggerClientEvent("ChangingPasswordClient", source, true)
		else
			TriggerClientEvent("ChangingPasswordClient", source, false)
		end
	end
end)

AddEventHandler("Login", function(Name, Password) --Logs a User in
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt')
	if fileContent == nil and fileContent == "" then
		TriggerClientEvent("LoginClient", source, false)
	else
		local Splitted = stringsplit(fileContent, ';')
		if VerifyPasswordHash(Password, Splitted[1]) then
			Username = Name:lower()
			TriggerClientEvent("LoginClient", source, true)
		else
			TriggerClientEvent("LoginClient", source, false)
		end
	end
end)

AddEventHandler("ChangeUsername", function(NewName) --Changes the Username
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. NewName:lower() .. '.txt')
	if fileContent == nil and fileContent == "" then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt')
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. NewName:lower() .. '.txt', fileContent, -1)
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt', "", -1)
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil then
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. NewName:lower() .. '_' .. i .. '.txt', fileContent, -1)
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. i .. '.txt', "", -1)
			end
		end
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil then
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. NewName:lower() .. '_' .. i .. '.txt', fileContent, -1)
				local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. i .. '.txt', "", -1)
			end
		end
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt')
		if fileContent ~= nil then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. NewName:lower() .. '.txt', fileContent, -1)
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt', "", -1)
		end
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt')
		if fileContent ~= nil then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. NewName:lower() .. '.txt', fileContent, -1)
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt', "", -1)
		end
		Username = NewName:lower()
		TriggerClientEvent("ChangeUsernameClient", source, true, Username)
	else
		TriggerClientEvent("ChangeUsernameClient", source, false, Username)
	end
end)

AddEventHandler("ChangePassword", function(NewPassword) --Changes the Password
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt')
	local Splitted = stringsplit(fileContent, ';')
	local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt', GetPasswordHash(NewPassword) .. ";" .. Splitted[2] .. ";" .. Splitted[3], -1)
end)

--Some Functions

function tablelength(t)
	local count = 0
	for _ in pairs(t) do count = count + 1 end
	return count
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = "%s"
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, "([^"..seperator.."]+)") do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function GetOSSep()
	if os.getenv("HOME") then
		return "/"
	else
		return "\\"
	end
end

function GetIdFromSource(Type, ID) --(Thanks To WolfKnight [forum.FiveM.net])
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ":")
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

--Registering Server Events

RegisterServerEvent("ID") --Just Don't Edit!
RegisterServerEvent("GetID") --Just Don't Edit!
RegisterServerEvent("TeleOtherPlayer") --Just Don't Edit!
RegisterServerEvent("EffectForAll") --Just Don't Edit!
RegisterServerEvent("DeathMessage") --Just Don't Edit!
RegisterServerEvent("GetIt") --Just Don't Edit!
RegisterServerEvent("GetHost") --Just Don't Edit!
RegisterServerEvent("KickPlayer") --Just Don't Edit!
RegisterServerEvent("BanPlayer") --Just Don't Edit!
RegisterServerEvent("IsUsingSteam") --Just Don't Edit!
RegisterServerEvent("OutfitSave") --Just Don't Edit!
RegisterServerEvent("OutfitLoad") --Just Don't Edit!
RegisterServerEvent("OutfitDelete") --Just Don't Edit!
RegisterServerEvent("GetOutfitNames") --Just Don't Edit!
RegisterServerEvent("SaveSettings") --Just Don't Edit!
RegisterServerEvent("LoadSettings") --Just Don't Edit!
RegisterServerEvent("WeaponSaving") --Just Don't Edit!
RegisterServerEvent("WeaponLoading") --Just Don't Edit!
RegisterServerEvent("GetCoords") --Just Don't Edit!
RegisterServerEvent("GotCoords") --Just Don't Edit!
RegisterServerEvent("Time") --Just Don't Edit!
RegisterServerEvent("Weather") --Just Don't Edit!
RegisterServerEvent("Blackout") --Just Don't Edit!
RegisterServerEvent("NoNPCsTraffic") --Just Don't Edit!
RegisterServerEvent("ExtendableMap") --Just Don't Edit!
RegisterServerEvent("PlayerBlips") --Just Don't Edit!
RegisterServerEvent("PvP") --Just Don't Edit!
RegisterServerEvent("Scoreboard") --Just Don't Edit!
RegisterServerEvent("AdminOnlyBlipsNames") --Just Don't Edit!
RegisterServerEvent("VoiceChat") --Just Don't Edit!
RegisterServerEvent("VoiceChatProximity") --Just Don't Edit!
RegisterServerEvent("VehicleSave") --Just Don't Edit!
RegisterServerEvent("VehicleLoad") --Just Don't Edit!
RegisterServerEvent("VehicleUnsave") --Just Don't Edit!
RegisterServerEvent("GetVehicleNames") --Just Don't Edit!
RegisterServerEvent("Register") --Just Don't Edit!
RegisterServerEvent("Login") --Just Don't Edit!
RegisterServerEvent("RecoverOldSaves") --Just Don't Edit!
RegisterServerEvent("ChangeUsername") --Just Don't Edit!
RegisterServerEvent("ChangePassword") --Just Don't Edit!
RegisterServerEvent("ResetPassword") --Just Don't Edit!
RegisterServerEvent("GetUsername") --Just Don't Edit!
RegisterServerEvent("GotUsername") --Just Don't Edit!

PerformHttpRequest("https://raw.githubusercontent.com/Flatracer/FMODT/master/VERSION", function(Error, Body, Header)
	
	if CurrentVersion ~= Body then
		print("\n\nChemical Toxin is outdated, please check the Topic for the newest version!\n-->Current Version: " .. CurrentVersion .. "\n-->New Version: " .. Body .. "\n\n")
	else
		print("\n\nChemical Toxin is up to date!\n-->Current Version: " .. CurrentVersion .. "\n\n")
	end
end)

--Error Message in Case the Resource Folder got renamed
--if GetCurrentResourceName() ~= "FMODT" then
--	print("                                             #")
--	print("                                             ###")
--	print("###### ###### ###### ###### ######  ##############")
--	print("#      #    # #    # #    # #    #  ################    Rename '" .. GetCurrentResourceName() .. "' back to 'FMODT'")
--	print("###    ###### ###### #    # ######  ##################  otherwise")
--	print("#      # ##   # ##   #    # # ##    ################    the Menu won't work properly!")
--	print("###### #   ## #   ## ###### #   ##  ##############")
--	print("                                             ###")
--	print("                                             #")
--end

