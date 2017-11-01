local SaveOutfit, DeleteOutfit
Model = 0
OutfitNames = {NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName,
			   NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName,
			   NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName,
			   NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName, NoOutfitName}

CreateThread(function() --Outfits Menu								[Multiple Pages]
	while true do
		Citizen.Wait(0)
		
		if (outfitMenu) then
		
			TriggerServerEvent("FMODT:GetOutfitNames")
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionoutfitMenu
			else
				lastSelectionoutfitMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. OutfitsTitle .. "")

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. SaveOutfitsTitle .. "", function(cb)
				if (cb) then
					outfitMenu = false
					OutfitSaveMenu = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. LoadOutfitsTitle .. "", function(cb)
				if (cb) then
					outfitMenu = false
					OutfitLoadMenu = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. DeleteOutfitsTitle .. "", function(cb)
				if (cb) then
					outfitMenu = false
					OutfitDeleteMenu = true
				end
			end)

			TriggerEvent("FMODT:Update")
			
		elseif (OutfitSaveMenu) then
	
			TriggerServerEvent("FMODT:GetOutfitNames")
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionOutfitSaveMenu
			else
				lastSelectionOutfitSaveMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. SaveOutfitsTitle .. "")

			for i = 1, 20 do
				TriggerEvent("FMODT:Option", i .. ". " .. OutfitNames[i], function(cb)
					if (cb) then
						SaveOutfit = true
					end
				end)
			end

			TriggerEvent("FMODT:Update")
			
		elseif (OutfitLoadMenu) then
	
			TriggerServerEvent("FMODT:GetOutfitNames")
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionOutfitLoadMenu
			else
				lastSelectionOutfitLoadMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. LoadOutfitsTitle .. "")

			for i = 1, 20 do
				TriggerEvent("FMODT:Option", i .. ". " .. OutfitNames[i], function(cb)
					if (cb) then
						if OutfitNames[currentOption] ~= NoOutfitName then
							TriggerServerEvent("FMODT:OutfitLoad", currentOption)
							drawNotification("~g~Outfit ~y~" .. OutfitNames[currentOption] .. " ~g~Loaded!")
						else
							drawNotification("~r~Outfit " .. currentOption .. " Not Existing!")
						end
					end
				end)
			end

			TriggerEvent("FMODT:Update")
			
		elseif (OutfitDeleteMenu) then
	
			TriggerServerEvent("FMODT:GetOutfitNames")
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionOutfitDeleteMenu
			else
				lastSelectionOutfitDeleteMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. DeleteOutfitsTitle .. "")
			
			for i = 1, 20 do
				TriggerEvent("FMODT:Option", i .. ". " .. OutfitNames[i], function(cb)
					if (cb) then
						DeleteOutfit = true
					end
				end)
			end

			TriggerEvent("FMODT:Update")
		end
	end
end)

CreateThread(function() --Outfit Saving
	while true do
		Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local OutfitName
		local Hat = GetPedPropIndex(playerPed, 0)
		local HatTexture = GetPedPropTextureIndex(playerPed, 0)
		local Glasses = GetPedPropIndex(playerPed, 1)
		local GlassesTexture = GetPedPropTextureIndex(playerPed, 1)
		local EarPiece = GetPedPropIndex(playerPed, 2)
		local EarPieceTexture = GetPedPropTextureIndex(playerPed, 2)
		local Watch = GetPedPropIndex(playerPed, 3)
		local WatchTexture = GetPedPropTextureIndex(playerPed, 3)
		local Face = GetPedDrawableVariation(playerPed, 0)
		local FaceTexture = GetPedTextureVariation(playerPed, 0)
		local Mask = GetPedDrawableVariation(playerPed, 1)
		local MaskTexture = GetPedTextureVariation(playerPed, 1)
		local Hair = GetPedDrawableVariation(playerPed, 2)
		local HairTexture = GetPedTextureVariation(playerPed, 2)
		local UpperBody = GetPedDrawableVariation(playerPed, 3)
		local UpperBodyTexture = GetPedTextureVariation(playerPed, 3)
		local Legs = GetPedDrawableVariation(playerPed, 4)
		local LegsTexture = GetPedTextureVariation(playerPed, 4)
		local Parachute = GetPedDrawableVariation(playerPed, 5)
		local ParachuteTexture = GetPedTextureVariation(playerPed, 5)
		local Shoes = GetPedDrawableVariation(playerPed, 6)
		local ShoesTexture = GetPedTextureVariation(playerPed, 6)
		local TiesScarfsetc = GetPedDrawableVariation(playerPed, 7)
		local TiesScarfsetcTexture = GetPedTextureVariation(playerPed, 7)
		local Undershirt = GetPedDrawableVariation(playerPed, 8)
		local UndershirtTexture = GetPedTextureVariation(playerPed, 8)
		local Armor = GetPedDrawableVariation(playerPed, 9)
		local ArmorTexture = GetPedTextureVariation(playerPed, 9)
		local Embleme = GetPedDrawableVariation(playerPed, 10)
		local EmblemeTexture = GetPedTextureVariation(playerPed, 10)
		local Top = GetPedDrawableVariation(playerPed, 11)
		local TopTexture = GetPedTextureVariation(playerPed, 11)
		local bool, shapeMotherID, shapeFatherID, shapeExtraID, skinMotherID, skinFatherID, skinExtraID, shapeMix, skinMix, thirdMix = Citizen.InvokeNative(0x2746BD9D88C5C5D0, GetPlayerPed(-1), Citizen.PointerValueIntInitialized(shapeMotherID), Citizen.PointerValueIntInitialized(shapeFatherID), Citizen.PointerValueIntInitialized(shapeExtraID), Citizen.PointerValueIntInitialized(skinMotherID), Citizen.PointerValueIntInitialized(shapeFatherID), Citizen.PointerValueIntInitialized(skinExtraID), Citizen.PointerValueFloatInitialized(shapeMix), Citizen.PointerValueFloatInitialized(skinMix), Citizen.PointerValueFloatInitialized(thirdMix), Citizen.ReturnResultAnyway())
		local newShapeMix = round(shapeMix, 2)
		local newSkinMix = round(skinMix, 2)
		local newThirdMix = round(thirdMix, 2)
		local ModelHash = GetEntityModel(GetPlayerPed(-1))
		local Blemishes = GetPedHeadOverlayValue(playerPed, 0)
		local FacialHair = GetPedHeadOverlayValue(playerPed, 1)
		local Eyebrows = GetPedHeadOverlayValue(playerPed, 2)
		local Ageing = GetPedHeadOverlayValue(playerPed, 3)
		local Makeup = GetPedHeadOverlayValue(playerPed, 4)
		local Blush = GetPedHeadOverlayValue(playerPed, 5)
		local Complexion = GetPedHeadOverlayValue(playerPed, 6)
		local SunDamage = GetPedHeadOverlayValue(playerPed, 7)
		local Lipstick = GetPedHeadOverlayValue(playerPed, 8)
		local MolesFreckles = GetPedHeadOverlayValue(playerPed, 9)
		local ChestHair = GetPedHeadOverlayValue(playerPed, 10)
		local BodyBlemishes = GetPedHeadOverlayValue(playerPed, 11)
		local AddBodyBlemishes = GetPedHeadOverlayValue(playerPed, 12)
		
		if SaveOutfit then
			if (OutfitNames[currentOption] ~= NoOutfitName) then
				OutfitName = KeyboardInput(OutfitNameKeyboardMessage, OutfitNames[currentOption], 25, false)
			else
				OutfitName = KeyboardInput(OutfitNameKeyboardMessage, NewOutfitDefaultName .. " " .. currentOption, 25, false)
			end

			if OutfitName ~= nil then
				if OutfitName == NoOutfitName then
					drawNotification("~r~" .. OutfitSavingAbortion .. "!")
				else
					if OutfitName == "" then
						OutfitName = NewOutfitDefaultName .. " " .. currentOption
					end
					OutfitTable = {OutfitName, ModelHash, Hat, HatTexture, Glasses, GlassesTexture, EarPiece, EarPieceTexture,
								   Watch, WatchTexture, Face, FaceTexture, Mask, MaskTexture, Hair, HairTexture, HairColorIndex, UpperBody, UpperBodyTexture,
								   Legs, LegsTexture, Parachute, ParachuteTexture, Shoes, ShoesTexture, TiesScarfsetc, TiesScarfsetcTexture, Undershirt,
								   UndershirtTexture, Armor, ArmorTexture, Embleme, EmblemeTexture, Top, TopTexture, shapeMotherID, shapeFatherID, shapeExtraID,
								   skinMotherID, skinFatherID, skinExtraID, newShapeMix, newSkinMix, newThirdMix, Blemishes, FacialHair, FacialHairColorIndex,
								   Eyebrows, EyebrowsColorIndex, Ageing, Makeup, Blush, BlushColorIndex, Complexion, SunDamage, Lipstick, LipstickColorIndex,
								   MolesFreckles, ChestHair, ChestHairColorIndex, BodyBlemishes, AddBodyBlemishes}
					OutfitTable = table.tostring(OutfitTable)
					OutfitTable = OutfitTable:gsub("{", "")
					OutfitTable = OutfitTable:gsub("}", "")
					TriggerServerEvent("FMODT:OutfitSave", currentOption, OutfitTable)
				end
			else
				drawNotification("~r~" .. OutfitSavingAbortion .. "!")
			end
			SaveOutfit = false
		end
	end
end)

CreateThread(function() --Outfit Deleting
	while true do
		Citizen.Wait(0)
		if DeleteOutfit then
			if OutfitNames[currentOption] ~= NoOutfitName then
				local result = KeyboardInput(OutfitDeletingConfirmation, "", 40, false)
				if result ~= nil then
					if result:lower() == (OutfitDeletingWord or "'" .. OutfitDeletingWord .. "'") then
						TriggerServerEvent("DeleteOutfit", currentOption)
					else
						drawNotification("~r~" .. OutfitDeletingAbortion .. "!")
					end
				else
					drawNotification("~r~" .. OutfitDeletingAbortion .. "!")
				end
			else
				drawNotification("~r~Outfit " .. currentOption .. " - " .. NotExisting .. "!")
			end
			DeleteOutfit = false
		end
	end
end)

AddEventHandler("FMODT:GotOutfitNames", function(OutfitName1, OutfitName2, OutfitName3, OutfitName4, OutfitName5, OutfitName6, OutfitName7, OutfitName8, OutfitName9, OutfitName10, --Just Don't Edit!
								           OutfitName11, OutfitName12, OutfitName13, OutfitName14, OutfitName15, OutfitName16, OutfitName17, OutfitName18, OutfitName19, OutfitName20)
	if OutfitName1 == nil then OutfitNames[1] = NoOutfitName else OutfitNames[1] = OutfitName1 end
	if OutfitName2 == nil then OutfitNames[2] = NoOutfitName else OutfitNames[2] = OutfitName2 end
	if OutfitName3 == nil then OutfitNames[3] = NoOutfitName else OutfitNames[3] = OutfitName3 end
	if OutfitName4 == nil then OutfitNames[4] = NoOutfitName else OutfitNames[4] = OutfitName4 end
	if OutfitName5 == nil then OutfitNames[5] = NoOutfitName else OutfitNames[5] = OutfitName5 end
	if OutfitName6 == nil then OutfitNames[6] = NoOutfitName else OutfitNames[6] = OutfitName6 end
	if OutfitName7 == nil then OutfitNames[7] = NoOutfitName else OutfitNames[7] = OutfitName7 end
	if OutfitName8 == nil then OutfitNames[8] = NoOutfitName else OutfitNames[8] = OutfitName8 end
	if OutfitName9 == nil then OutfitNames[9] = NoOutfitName else OutfitNames[9] = OutfitName9 end
	if OutfitName10 == nil then OutfitNames[10] = NoOutfitName else OutfitNames[10] = OutfitName10 end
	if OutfitName11 == nil then OutfitNames[11] = NoOutfitName else OutfitNames[11] = OutfitName11 end
	if OutfitName12 == nil then OutfitNames[12] = NoOutfitName else OutfitNames[12] = OutfitName12 end
	if OutfitName13 == nil then OutfitNames[13] = NoOutfitName else OutfitNames[13] = OutfitName13 end
	if OutfitName14 == nil then OutfitNames[14] = NoOutfitName else OutfitNames[14] = OutfitName14 end
	if OutfitName15 == nil then OutfitNames[15] = NoOutfitName else OutfitNames[15] = OutfitName15 end
	if OutfitName16 == nil then OutfitNames[16] = NoOutfitName else OutfitNames[16] = OutfitName16 end
	if OutfitName17 == nil then OutfitNames[17] = NoOutfitName else OutfitNames[17] = OutfitName17 end
	if OutfitName18 == nil then OutfitNames[18] = NoOutfitName else OutfitNames[18] = OutfitName18 end
	if OutfitName19 == nil then OutfitNames[19] = NoOutfitName else OutfitNames[19] = OutfitName19 end
	if OutfitName20 == nil then OutfitNames[20] = NoOutfitName else OutfitNames[20] = OutfitName20 end
end)

AddEventHandler("FMODT:ChangePlayerPed", function(ModelHash) --Just Don't Edit!
	if tonumber(ModelHash) ~= nil then
		blockinput = true
		Model = tonumber(ModelHash)
		RequestModel(Model)
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
		SetPlayerModel(PlayerId(), Model)
		if playerVisibleCount == 1 then
			playerVisible = true
		end
	end
end)

AddEventHandler("FMODT:ApplyOutfitProps", function(Hat, HatTexture, Glasses, GlassesTexture, EarPiece, EarPieceTexture, Watch, WatchTexture) --Just Don't Edit!
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
		Citizen.Wait(1000)
	end
	if Hat ~= nil then
		SetPedPropIndex(GetPlayerPed(-1), 0, tonumber(Hat), tonumber(HatTexture), true)
	end
	if Glasses ~= nil then
		SetPedPropIndex(GetPlayerPed(-1), 1, tonumber(Glasses), tonumber(GlassesTexture), true)
	end
	if EarPiece ~= nil then
		SetPedPropIndex(GetPlayerPed(-1), 2, tonumber(EarPiece), tonumber(EarPieceTexture), true)
	end
	if Watch ~= nil then
		SetPedPropIndex(GetPlayerPed(-1), 3, tonumber(Watch), tonumber(WatchTexture), true)
	end
end)

AddEventHandler("FMODT:ApplyOutfitVariations1", function(Face, FaceTexture, Mask, MaskTexture, Hair, HairTexture, HairColor, UpperBody, UpperBodyTexture) --Just Don't Edit!
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
		Citizen.Wait(1000)
	end
	if Face ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 0, tonumber(Face), tonumber(FaceTexture), GetPedPaletteVariation(GetPlayerPed(-1), 0))
	end
	if Mask ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 1, tonumber(Mask), tonumber(MaskTexture), GetPedPaletteVariation(GetPlayerPed(-1), 1))
	end
	if Hair ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 2, tonumber(Hair), tonumber(HairTexture), GetPedPaletteVariation(GetPlayerPed(-1), 2))
		HairColorIndex = tonumber(HairColor)
		Citizen.Wait(1000)
		SetPedHairColor(GetPlayerPed(-1), HairColorIndex, 0)
	end
	if UpperBody ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 3, tonumber(UpperBody), tonumber(UpperBodyTexture), GetPedPaletteVariation(GetPlayerPed(-1), 3))
	end
end)

AddEventHandler("FMODT:ApplyOutfitVariations2", function(Legs, LegsTexture, Parachute, ParachuteTexture, Shoes, ShoesTexture, TiesScarfsetc, TiesScarfsetcTexture) --Just Don't Edit!
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
		Citizen.Wait(1000)
	end
	if Legs ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 4, tonumber(Legs), tonumber(LegsTexture), GetPedPaletteVariation(GetPlayerPed(-1), 4))
	end
	if Parachute ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 5, tonumber(Parachute), tonumber(ParachuteTexture), GetPedPaletteVariation(GetPlayerPed(-1), 5))
	end
	if Shoes ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 6, tonumber(Shoes), tonumber(ShoesTexture), GetPedPaletteVariation(GetPlayerPed(-1), 6))
	end
	if TiesScarfsetc ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 7, tonumber(TiesScarfsetc), tonumber(TiesScarfsetcTexture), GetPedPaletteVariation(GetPlayerPed(-1), 7))
	end
end)

AddEventHandler("FMODT:ApplyOutfitVariations3", function(Undershirt, UndershirtTexture, Armor, ArmorTexture, Embleme, EmblemeTexture, Top, TopTexture) --Just Don't Edit!
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
		Citizen.Wait(1000)
	end
	if Undershirt ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 8, tonumber(Undershirt), tonumber(UndershirtTexture), GetPedPaletteVariation(GetPlayerPed(-1), 8))
	end
	if Armor ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 9, tonumber(Armor), tonumber(ArmorTexture), GetPedPaletteVariation(GetPlayerPed(-1), 9))
	end
	if Embleme ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 10, tonumber(Embleme), tonumber(EmblemeTexture), GetPedPaletteVariation(GetPlayerPed(-1), 10))
	end
	if Top ~= nil then
		SetPedComponentVariation(GetPlayerPed(-1), 11, tonumber(Top), tonumber(TopTexture), GetPedPaletteVariation(GetPlayerPed(-1), 11))
	end
	blockinput = false
end)

AddEventHandler("FMODT:ApplyOutfitHeadData", function(shapeMotherID, shapeFatherID, shapeExtraID, skinMotherID, skinFatherID, skinExtraID, shapeMix, skinMix, thirdMix) --Just Don't Edit!
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
	end
	Citizen.Wait(1000)
	shapeMixSplitted = stringsplit(shapeMix, ".")
	skinMixSplitted = stringsplit(skinMix, ".")
	thirdMixSplitted = stringsplit(thirdMix, ".")
	if tonumber(shapeMixSplitted[2]) > 9 then
		newshapeMix = (tonumber(shapeMixSplitted[1]) * 1.0) + ((tonumber(shapeMixSplitted[2]) * 1.0) / 100)
	else
		newshapeMix = (tonumber(shapeMixSplitted[1]) * 1.0) + ((tonumber(shapeMixSplitted[2]) * 1.0) / 10)
	end
	if tonumber(skinMixSplitted[2]) > 9 then
		newskinMix = (tonumber(skinMixSplitted[1]) * 1.0) + ((tonumber(skinMixSplitted[2]) * 1.0) / 100)
	else
		newskinMix = (tonumber(skinMixSplitted[1]) * 1.0) + ((tonumber(skinMixSplitted[2]) * 1.0) / 10)
	end
	if tonumber(thirdMixSplitted[2]) > 9 then
		newthirdMix = (tonumber(thirdMixSplitted[1]) * 1.0) + ((tonumber(thirdMixSplitted[2]) * 1.0) / 100)
	else
		newthirdMix = (tonumber(thirdMixSplitted[1]) * 1.0) + ((tonumber(thirdMixSplitted[2]) * 1.0) / 10)
	end
	SetPedHeadBlendData(GetPlayerPed(-1), tonumber(shapeMotherID), tonumber(shapeFatherID), tonumber(shapeExtraID), tonumber(skinMotherID), tonumber(skinFatherID), tonumber(skinExtraID), newshapeMix, newskinMix, newthirdMix, false)
end)

AddEventHandler("FMODT:ApplyOutfitHeadOverlay", function(Blemishes, FacialHair, FacialHairColor, Eyebrows, EyebrowsColor, Ageing, Makeup, Blush, BlushColor, Complexion, --Just Don't Edit!
												   SunDamage, Lipstick, LipstickColor, MolesFreckles, ChestHair, ChestHairColor, BodyBlemishes, AddBodyBlemishes)
	if not HasModelLoaded(Model) then
		while not HasModelLoaded(Model) do
			Citizen.Wait(0)
		end
	end
	Citizen.Wait(2000)
	SetPedHeadOverlay(GetPlayerPed(-1), 0, tonumber(Blemishes), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 1, tonumber(FacialHair), 1.0)
	FacialHairColorIndex = tonumber(FacialHairColor)
	SetPedHeadOverlayColor(GetPlayerPed(-1), 1, 1, tonumber(FacialHairColorIndex), 0)
	SetPedHeadOverlay(GetPlayerPed(-1), 2, tonumber(Eyebrows), 1.0)
	EyebrowsColorIndex = tonumber(EyebrowsColor)
	SetPedHeadOverlayColor(GetPlayerPed(-1), 2, 1, tonumber(EyebrowsColorIndex), 0)
	SetPedHeadOverlay(GetPlayerPed(-1), 3, tonumber(Ageing), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 4, tonumber(Makeup), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 5, tonumber(Blush), 1.0)
	BlushColorIndex = tonumber(BlushColor)
	SetPedHeadOverlayColor(GetPlayerPed(-1), 5, 2, tonumber(BlushColorIndex), 0)
	SetPedHeadOverlay(GetPlayerPed(-1), 6, tonumber(Complexion), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 7, tonumber(SunDamage), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 8, tonumber(Lipstick), 1.0)
	LipstickColorIndex = tonumber(LipstickColor)
	SetPedHeadOverlayColor(GetPlayerPed(-1), 8, 2, tonumber(LipstickColorIndex), 0)
	SetPedHeadOverlay(GetPlayerPed(-1), 9, tonumber(MolesFreckles), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 10, tonumber(ChestHair), 1.0)
	ChestHairColorIndex = tonumber(ChestHairColor)
	SetPedHeadOverlayColor(GetPlayerPed(-1), 10, 1, tonumber(ChestHairColorIndex), 0)
	SetPedHeadOverlay(GetPlayerPed(-1), 11, tonumber(BodyBlemishes), 1.0)
	SetPedHeadOverlay(GetPlayerPed(-1), 12, tonumber(AddBodyBlemishes), 1.0)
end)

