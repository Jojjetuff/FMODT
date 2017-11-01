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


--Update Check

PerformHttpRequest("https://raw.githubusercontent.com/Flatracer/FMODT_Resources/master/VERSION", function(Error, NewestVersion, Header)
	if CurrentVersion ~= NewestVersion then
		print("\n")
		print("\n")
		print("####################################################################")
		print("########################## CHEM!CAL T0X!N ##########################")
		print("####################################################################")
		print("#####                  Current Version: " .. CurrentVersion .. "                  #####")
		print("#####                   Newest Version: " .. NewestVersion .. "                  #####")
		print("####################################################################")
		print("##### Outdated, please check the Topic for the newest Version! #####")
		print("####################################################################")
		print("\n")
		print("\n")
	else
		print("\n")
		print("\n")
		print("####################################################################")
		print("########################## CHEM!CAL T0X!N ##########################")
		print("####################################################################")
		print("#####                  Current Version: " .. CurrentVersion .. "                  #####")
		print("#####                   Newest Version: " .. NewestVersion .. "                  #####")
		print("####################################################################")
		print("#####                        Up to date!                       #####")
		print("####################################################################")
		print("\n")
		print("\n")
	end
end)

--General Stuff
			   
AddEventHandler("FMODT:ID", function() --Grants Access To The Menu
	local IDs = GetPlayerIdentifiers(source)
	local Admins = LoadResourceFile(GetCurrentResourceName(), 'Admins.txt')
	local AdminsSplitted = stringsplit(Admins, "\n")
	local done
	for k, AdminID in pairs(AdminsSplitted) do
		local AdminID = AdminID:gsub(" ", "")
		local SingleAdminsSplitted = stringsplit(AdminID, ",")
		for l, ID in pairs(IDs) do
			if ID:lower() == SingleAdminsSplitted[1]:lower() or ID:lower() == SingleAdminsSplitted[2]:lower() or ID:lower() == SingleAdminsSplitted[3]:lower() then
				print(k .. ". Admin joined - " .. SingleAdminsSplitted[4])
				TriggerClientEvent("FMODT:AdminActivation", source, 1)
				done = true
				break
			else
				if k == tablelength(AdminsSplitted) then
					TriggerClientEvent("FMODT:AdminActivation", source, 0)
				end
			end
		end
		if done then
			break
		end
	end
end)

AddEventHandler("FMODT:IsUsingSteam", function() --Checks If The Player Uses Steam
	if GetIDFromSource("steam", source) ~= nil then
		IsUsingSteam = true
	end
end)

AddEventHandler("FMODT:GetID", function() --Used To Get The Player Identifiers
	local IDs = GetPlayerIdentifiers(source)
	print(GetPlayerName(source) .. " Identifier(s):")
	for k, ID in pairs(IDs) do
		print(ID)
	end
end)

AddEventHandler("FMODT:RecoverOldSaves", function() --Used To Recovery Old Saves (Outfits, Vehicles, Settings & Weapons)
	if Username and IsUsingSteam then
		local SteamID = GetIDFromSource("steam", source)
		if SteamID then
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
	end
end)


--Admin Menu Stuff

AddEventHandler("FMODT:GetIt", function(Player) --Used To Get The Informations Of A Player
	TriggerClientEvent("FMODT:GotIt", source, GetPlayerPing(Player), GetPlayerEndpoint(Player), GetIDFromSource("license", Player), GetIDFromSource("steam", Player))
end)

AddEventHandler("FMODT:GetUsername", function(Player) --Used To Get The Username Of A Player
	TriggerClientEvent("FMODT:GetUsernameClient", Player, source)
end)

AddEventHandler("FMODT:GotUsername", function(Sender, Name) --Used To Get The Username Of A Player
	TriggerClientEvent("FMODT:GotUsernameClient", Sender, Name)
end)

AddEventHandler("FMODT:GetHost", function() --Used To Get The Informations Of A Player
	TriggerClientEvent("FMODT:GotHost", source, GetHostId(), GetPlayerName(GetHostId()))
end)

AddEventHandler("FMODT:KickPlayer", function(Player, KickReason) --Used To Kick A Player
	DropPlayer(Player, "Kick Reason: " ..  KickReason)
end)

AddEventHandler("FMODT:BanPlayer", function(Player, BanReason, BanDuration) --Used To Ban A Player
	local now = os.date("*t")
	local nowutc = os.time(now)
	local IDLicense = GetIDFromSource("license", Player)
	local IDSteam = GetIDFromSource("steam", Player)
	
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
	local IDLicense = GetIDFromSource("license", source)

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
		local IDSteam = GetIDFromSource("steam", source)
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

AddEventHandler("FMODT:ExtendableMap", function(State) --Enables/ Disables the Extendable Map on every Client
	TriggerClientEvent("FMODT:ExtendableMapClient", -1, State)
end)

AddEventHandler("FMODT:PlayerBlips", function(State) --Enables/ Disables the Player Blips on every Client
	TriggerClientEvent("FMODT:PlayerBlipsClient", -1, State)
end)

AddEventHandler("FMODT:PvP", function(State) --Enables/ Disables PvP on every Client
	TriggerClientEvent("FMODT:PvPClient", -1, State)
end)

AddEventHandler("FMODT:Scoreboard", function(State) --Enables/ Disables the Scoreboard on every Client
	TriggerClientEvent("FMODT:ScoreboardClient", -1, State)
end)

AddEventHandler("FMODT:AdminOnlyBlipsNames", function(State) --Enables/ Disables the Blips & Names on Non-Admin Clients
	TriggerClientEvent("FMODT:AdminOnlyBlipsNamesClient", -1, State)
end)

AddEventHandler("FMODT:VoiceChat", function(State) --Enables/ Disables the Voice Chat on every Client
	TriggerClientEvent("FMODT:VoiceChatClient", -1, State)
end)

AddEventHandler("FMODT:VoiceChatProximity", function(Proximity) --Changes the Voice Chat Proximity on every Client
	TriggerClientEvent("FMODT:VoiceChatProximityClient", -1, Proximity)
end)

--Outfit Stuff

AddEventHandler("FMODT:OutfitSave", function(OutfitNumber, Outfit)
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt', Outfit, -1)
	end
end)

AddEventHandler("FMODT:OutfitLoad", function(OutfitNumber) --Loads An Outfit
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local OutfitSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("FMODT:ChangePlayerPed", source, OutfitSplitted[2])
			TriggerClientEvent("FMODT:ApplyOutfitProps", source, OutfitSplitted[3], OutfitSplitted[4], OutfitSplitted[5], OutfitSplitted[6], OutfitSplitted[7], OutfitSplitted[8], OutfitSplitted[9], OutfitSplitted[10])
			TriggerClientEvent("FMODT:ApplyOutfitVariations1", source, OutfitSplitted[11], OutfitSplitted[12], OutfitSplitted[13], OutfitSplitted[14], OutfitSplitted[15], OutfitSplitted[16], OutfitSplitted[17], OutfitSplitted[18], OutfitSplitted[19])
			TriggerClientEvent("FMODT:ApplyOutfitVariations2", source, OutfitSplitted[20], OutfitSplitted[21], OutfitSplitted[22], OutfitSplitted[23], OutfitSplitted[24], OutfitSplitted[25], OutfitSplitted[26], OutfitSplitted[27])
			TriggerClientEvent("FMODT:ApplyOutfitVariations3", source, OutfitSplitted[28], OutfitSplitted[29], OutfitSplitted[30], OutfitSplitted[31], OutfitSplitted[32], OutfitSplitted[33], OutfitSplitted[34], OutfitSplitted[35])
			if (OutfitSplitted[2] == "-1667301416") or (OutfitSplitted[2] == "1885233650")  then
				TriggerClientEvent("FMODT:ApplyOutfitHeadData", source, OutfitSplitted[36], OutfitSplitted[37], OutfitSplitted[38], OutfitSplitted[39], OutfitSplitted[40], OutfitSplitted[41], OutfitSplitted[42], OutfitSplitted[43], OutfitSplitted[44])
				TriggerClientEvent("FMODT:ApplyOutfitHeadOverlay", source, OutfitSplitted[45], OutfitSplitted[46], OutfitSplitted[47], OutfitSplitted[48], OutfitSplitted[49], OutfitSplitted[50], OutfitSplitted[51], OutfitSplitted[52], OutfitSplitted[53], OutfitSplitted[54], OutfitSplitted[55], OutfitSplitted[56], OutfitSplitted[57], OutfitSplitted[58], OutfitSplitted[59], OutfitSplitted[60], OutfitSplitted[61], OutfitSplitted[62])
			end
		end
	end
end)

AddEventHandler("FMODT:OutfitDelete", function(OutfitNumber) --Deletes An Outfit
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. OutfitNumber .. '.txt', "", -1)
		end
	end
end)

AddEventHandler("FMODT:GetOutfitNames", function() --Gets The Outfit Names
	local OutfitNames = {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil}
	if Username ~= nil then
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'outfits' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local OutfitSplitted = stringsplit(fileContent, ',')
				OutfitNames[i] = OutfitSplitted[1]
			end
		end
		TriggerClientEvent("FMODT:GotOutfitNames", source, OutfitNames[1], OutfitNames[2], OutfitNames[3], OutfitNames[4], OutfitNames[5], OutfitNames[6], OutfitNames[7], OutfitNames[8], OutfitNames[9], OutfitNames[10], OutfitNames[11], OutfitNames[12], OutfitNames[13], OutfitNames[14], OutfitNames[15], OutfitNames[16], OutfitNames[17], OutfitNames[18], OutfitNames[19], OutfitNames[20])
	end
end)


--Vehicles Stuff

AddEventHandler("FMODT:VehicleSave", function(VehicleNumber, Vehicle) --Saves A Vehicle
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt', Vehicle, -1)
	end
end)

AddEventHandler("FMODT:VehicleLoad", function(VehicleNumber) --Loads A Vehicle
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local VehicleSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("FMODT:SpawnSavedVehicle", source, VehicleSplitted[2], VehicleSplitted[3], VehicleSplitted[4], VehicleSplitted[5], VehicleSplitted[6], VehicleSplitted[7], VehicleSplitted[8],
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

AddEventHandler("FMODT:VehicleUnsave", function(VehicleNumber) --Unsaves A Vehicle
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt')
		if fileContent ~= nil and fileContent ~= "" then
			local VehicleSplitted = stringsplit(fileContent, ',')
			TriggerClientEvent("FMODT:UnsaveSavedVehicle", source, VehicleSplitted[2])
			local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. VehicleNumber .. '.txt', "", -1)
		end
	end
end)

AddEventHandler("FMODT:GetVehicleNames", function() --Gets The Vehicle Names
	local VehicleNames = {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil}
	if Username ~= nil then
		for i = 1, 20 do
			local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'vehicles' .. GetOSSep() .. Username .. '_' .. i .. '.txt')
			if fileContent ~= nil and fileContent ~= "" then
				local VehicleSplitted = stringsplit(fileContent, ',')
				VehicleNames[i] = VehicleSplitted[1]
			end
		end
		TriggerClientEvent("FMODT:GotVehicleNames", source, VehicleNames[1], VehicleNames[2], VehicleNames[3], VehicleNames[4], VehicleNames[5], VehicleNames[6], VehicleNames[7], VehicleNames[8], VehicleNames[9], VehicleNames[10], VehicleNames[11], VehicleNames[12], VehicleNames[13], VehicleNames[14], VehicleNames[15], VehicleNames[16], VehicleNames[17], VehicleNames[18], VehicleNames[19], VehicleNames[20])
	end
end)


--Settings Stuff

AddEventHandler("FMODT:SaveSettings", function(Settings)
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt', Settings, -1)
	end
end)

AddEventHandler("FMODT:LoadSettings", function() --Loads Settings
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'settings' .. GetOSSep() .. Username .. '.txt')
		TriggerClientEvent("FMODT:MenuSettingsSet", source, fileContent)
	end
end)


--Weapons Stuff

AddEventHandler("FMODT:WeaponSaving", function(weapons) --Saves Player Weapons
	if Username ~= nil then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt', weapons, -1)
	end
end)

AddEventHandler("FMODT:WeaponLoading", function() --Loads Player Weapons
	if Username ~= nil then
		local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'weapons' .. GetOSSep() .. Username .. '.txt')
		TriggerClientEvent("FMODT:GiveWeaponsBack", source, fileContent)
	end
end)


--Teleporting Stuff

AddEventHandler("FMODT:GetCoords", function(Receiver, Sender) --Gets The Coords Of A Player
    TriggerClientEvent("FMODT:GetCoordsClient", Receiver, Sender)
end)

AddEventHandler("FMODT:GotCoords", function(Receiver, X, Y, Z) --Send The Coords Back To A Client
    TriggerClientEvent("FMODT:GotCoordsClient", Receiver, X, Y, Z)
end)

AddEventHandler("FMODT:EffectForAll", function(EffectPlayer) --Triggers The Teleport Effect On Other Clients
	TriggerClientEvent("FMODT:Effect", -1, EffectPlayer)
end)

AddEventHandler("FMODT:TeleOtherPlayer", function(Player, AdminCoordX, AdminCoordY, AdminCoordZ) --Teleports A Player To An Admin
	TriggerClientEvent("FMODT:TeleportMe", Player, AdminCoordX, AdminCoordY, AdminCoordZ)
end)


--Connect, Leave and Death Message

AddEventHandler("playerConnecting", function() --Triggers The Join Message On All Clients
	if GetPlayerName(source) then
		TriggerClientEvent("FMODT:JoinMessageClients", -1, GetPlayerName(source))
	end
end)

AddEventHandler("playerDropped", function(reason) --Triggers The Leave Message On All Clients
	if GetPlayerName(source) then
		print("Left: " .. GetPlayerName(source))
		TriggerClientEvent("FMODT:LeftMessageClients", -1, GetPlayerName(source))
	end
end)

AddEventHandler("FMODT:DeathMessage", function(Killer, Text, KilledPlayer) --Sends the Death Message To All Clients
	TriggerClientEvent("FMODT:DeathMessageClients", -1, Killer, Text, KilledPlayer)
end)


--World Menu Stuff

AddEventHandler("FMODT:Blackout", function(State) --Sets the specific Weather on every Client
	TriggerClientEvent("FMODT:SetBlackout", -1, State)
end)

AddEventHandler("FMODT:NoNPCsTraffic", function(State) --Sets the specific Weather on every Client
	TriggerClientEvent("FMODT:SetNoNPCsTraffic", -1, State)
end)

AddEventHandler("FMODT:Weather", function(Type) --Sets the specific Weather on every Client
	TriggerClientEvent("FMODT:SetWeather", -1, Type)
end)

AddEventHandler("FMODT:Time", function(Hours, Minutes, freeze, State) --Sets the Time on every Client
	TriggerClientEvent("FMODT:SetTime", -1, Hours, Minutes, freeze, State)
end)

--Register / Login Stuff

AddEventHandler("FMODT:Register", function(Name, Password, SecurityQuestion, SecurityQuestionAnswer) --Registers a new User
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt')
	if fileContent == nil or fileContent == "" then
		local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt', GetPasswordHash(Password) .. "\n" .. SecurityQuestion .. "\n" .. GetPasswordHash(SecurityQuestionAnswer:lower()), -1)
		TriggerClientEvent("FMODT:RegisterClient", source, true)
	else
		TriggerClientEvent("FMODT:RegisterClient", source, false)
	end
end)

AddEventHandler("FMODT:ResetPassword", function(State, Name, SecurityQuestionAnswer) --Resets a Password
	Username = Name
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username:lower() .. '.txt')
	local Splitted = stringsplit(fileContent, '\n')
	if not State then
		TriggerClientEvent("FMODT:GotSecurityQuestion", source, Splitted[2])
	elseif State then
		if VerifyPasswordHash(SecurityQuestionAnswer:lower(), Splitted[3]) then
			TriggerClientEvent("FMODT:ChangingPasswordClient", source, true)
		else
			TriggerClientEvent("FMODT:ChangingPasswordClient", source, false)
		end
	end
end)

AddEventHandler("FMODT:Login", function(Name, Password) --Logs a User in
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Name:lower() .. '.txt')
	if fileContent == nil or fileContent == "" then
		TriggerClientEvent("FMODT:LoginClient", source, false)
	else
		local Splitted = stringsplit(fileContent, '\n')
		if VerifyPasswordHash(Password, Splitted[1]) then
			Username = Name:lower()
			TriggerClientEvent("FMODT:LoginClient", source, true)
		else
			TriggerClientEvent("FMODT:LoginClient", source, false)
		end
	end
end)

AddEventHandler("FMODT:ChangeUsername", function(NewName) --Changes the Username
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. NewName:lower() .. '.txt')
	if fileContent == nil or fileContent == "" then
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
		TriggerClientEvent("FMODT:ChangeUsernameClient", source, true, Username)
	else
		TriggerClientEvent("FMODT:ChangeUsernameClient", source, false, Username)
	end
end)

AddEventHandler("FMODT:ChangePassword", function(NewPassword) --Changes the Password
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt')
	local Splitted = stringsplit(fileContent, '\n')
	local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'files' .. GetOSSep() .. 'registeredplayer' .. GetOSSep() .. Username .. '.txt', GetPasswordHash(NewPassword) .. "\n" .. Splitted[2] .. "\n" .. Splitted[3], -1)
end)

--Add-On Vehicles/ Peds

AddEventHandler("FMODT:GetAddOnVehicles", function() --Gets the Add-On Vehicles
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'Add-On Vehicles.txt')
	if fileContent ~= nil or fileContent ~= "" then
		TriggerClientEvent("FMODT:GotAddOnVehicles", source, fileContent)
	end
end)

AddEventHandler("FMODT:GetAddOnPeds", function() --Gets the Add-On Peds
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'Add-On Peds.txt')
	if fileContent ~= nil or fileContent ~= "" then
		TriggerClientEvent("FMODT:GotAddOnPeds", source, fileContent)
	end
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

function GetIDFromSource(Type, ID) --(Thanks To WolfKnight [forum.FiveM.net])
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

RegisterServerEvent("FMODT:ID") --Just Don't Edit!
RegisterServerEvent("FMODT:GetID") --Just Don't Edit!
RegisterServerEvent("FMODT:TeleOtherPlayer") --Just Don't Edit!
RegisterServerEvent("FMODT:EffectForAll") --Just Don't Edit!
RegisterServerEvent("FMODT:DeathMessage") --Just Don't Edit!
RegisterServerEvent("FMODT:GetIt") --Just Don't Edit!
RegisterServerEvent("FMODT:GetHost") --Just Don't Edit!
RegisterServerEvent("FMODT:KickPlayer") --Just Don't Edit!
RegisterServerEvent("FMODT:BanPlayer") --Just Don't Edit!
RegisterServerEvent("FMODT:IsUsingSteam") --Just Don't Edit!
RegisterServerEvent("FMODT:OutfitSave") --Just Don't Edit!
RegisterServerEvent("FMODT:OutfitLoad") --Just Don't Edit!
RegisterServerEvent("FMODT:OutfitDelete") --Just Don't Edit!
RegisterServerEvent("FMODT:GetOutfitNames") --Just Don't Edit!
RegisterServerEvent("FMODT:SaveSettings") --Just Don't Edit!
RegisterServerEvent("FMODT:LoadSettings") --Just Don't Edit!
RegisterServerEvent("FMODT:WeaponSaving") --Just Don't Edit!
RegisterServerEvent("FMODT:WeaponLoading") --Just Don't Edit!
RegisterServerEvent("FMODT:GetCoords") --Just Don't Edit!
RegisterServerEvent("FMODT:GotCoords") --Just Don't Edit!
RegisterServerEvent("FMODT:Time") --Just Don't Edit!
RegisterServerEvent("FMODT:Weather") --Just Don't Edit!
RegisterServerEvent("FMODT:Blackout") --Just Don't Edit!
RegisterServerEvent("FMODT:NoNPCsTraffic") --Just Don't Edit!
RegisterServerEvent("FMODT:ExtendableMap") --Just Don't Edit!
RegisterServerEvent("FMODT:PlayerBlips") --Just Don't Edit!
RegisterServerEvent("FMODT:PvP") --Just Don't Edit!
RegisterServerEvent("FMODT:Scoreboard") --Just Don't Edit!
RegisterServerEvent("FMODT:AdminOnlyBlipsNames") --Just Don't Edit!
RegisterServerEvent("FMODT:VoiceChat") --Just Don't Edit!
RegisterServerEvent("FMODT:VoiceChatProximity") --Just Don't Edit!
RegisterServerEvent("FMODT:VehicleSave") --Just Don't Edit!
RegisterServerEvent("FMODT:VehicleLoad") --Just Don't Edit!
RegisterServerEvent("FMODT:VehicleUnsave") --Just Don't Edit!
RegisterServerEvent("FMODT:GetVehicleNames") --Just Don't Edit!
RegisterServerEvent("FMODT:Register") --Just Don't Edit!
RegisterServerEvent("FMODT:Login") --Just Don't Edit!
RegisterServerEvent("FMODT:RecoverOldSaves") --Just Don't Edit!
RegisterServerEvent("FMODT:ChangeUsername") --Just Don't Edit!
RegisterServerEvent("FMODT:ChangePassword") --Just Don't Edit!
RegisterServerEvent("FMODT:ResetPassword") --Just Don't Edit!
RegisterServerEvent("FMODT:GetUsername") --Just Don't Edit!
RegisterServerEvent("FMODT:GotUsername") --Just Don't Edit!
RegisterServerEvent("FMODT:GetAddOnVehicles") --Just Don't Edit!
RegisterServerEvent("FMODT:GetAddOnPeds") --Just Don't Edit!

