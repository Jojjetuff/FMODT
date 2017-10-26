HairColorIndex = 0
FacialHairColorIndex = 0
EyebrowsColorIndex = 0
ChestHairColorIndex = 0
BlushColorIndex = 0
LipstickColorIndex = 0
local overlayName, overlayID, overlayIndex; overlayOpacity = 0.0, 
	  componentId, drawableId, textureId, PropName, ComponentName

Citizen.CreateThread(function() --Component Changer
	while true do
		if componentChangerMenu then
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerMenu
			else
				lastSelectioncomponentChangerMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. ComponentChangerTitle .. "")
			
			if (GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_f_freemode_01")) or (GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_m_freemode_01")) then --Skin
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. SkinTitle, function(cb)
					if (cb) then
						componentChangerMenu = false
						componentChangerSkinMenu = true
					end
				end)
			end

			if (GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_f_freemode_01")) or (GetEntityModel(GetPlayerPed(-1)) == GetHashKey("mp_m_freemode_01")) then --Head Data
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. OverlaysTitle, function(cb)
					if (cb) then
						componentChangerMenu = false
						componentChangerHeadDataMenu = true
					end
				end)
			end

			if GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1), 0) > 0 then --Hats
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. HatsTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerPropMenu = 1
						PropName = HatsTitle
						componentId = 0
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerPropMenu = true
					end
				end)
			end

			if GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1), 1) > 0 then --Glasses
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. GlassesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerPropMenu = 1
						PropName = GlassesTitle
						componentId = 1
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerPropMenu = true
					end
				end)
			end

			if GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1), 2) > 0 then --Ear Pieces
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. EarPiecesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerPropMenu = 1
						PropName = EarPiecesTitle
						componentId = 2
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerPropMenu = true
					end
				end)
			end

			if GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1), 3) > 0 then --Watches
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. WatchesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerPropMenu = 1
						PropName = WatchesTitle
						componentId = 3
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerPropMenu = true
					end
				end)
			end
			
			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 0) > 0 then --Face
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. FaceTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = FaceTitle
						componentId = 0
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 1) > 0 then --Masks
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. MasksTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = MasksTitle
						componentId = 1
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 2) > 0 then --Hair
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. HairTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = HairTitle
						componentId = 2
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 3) > 0 then --Arms / Upper Body / Gloves
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ArmsUpperBodyGlovesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = ArmsUpperBodyGlovesTitle
						componentId = 3
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 4) > 0 then --Legs
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. LegsTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = LegsTitle
						componentId = 4
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 5) > 0 then --Parachutes & Heist Bags
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ParachutesHeistBagsTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = ParachutesHeistBagsTitle
						componentId = 5
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 6) > 0 then --Shoes
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ShoesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = ShoesTitle
						componentId = 6
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 7) > 0 then --Ties, Scarfs, etc.
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. TiesScarfsetcTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = TiesScarfsetcTitle
						componentId = 7
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 8) > 0 then --Undershirts & Special Things
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. UndershirtsSpecialThingsTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = UndershirtsSpecialThingsTitle
						componentId = 8
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 9) > 0 then --Armor
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ArmorTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = ArmorTitle
						componentId = 9
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 10) > 0 then --Emblemes
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. EmblemesTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = EmblemesTitle
						componentId = 10
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			if GetNumberOfPedDrawableVariations(GetPlayerPed(-1), 11) > 0 then --Tops
				TriggerEvent("FMODT:Option", "~y~>> ~s~" .. TopsTitle, function(cb)
					if (cb) then
						lastSelectioncomponentChangerComponentMenu = 1
						ComponentName = TopsTitle
						componentId = 11
						drawableId = 0
						textureId = 0
						componentChangerMenu = false
						componentChangerComponentMenu = true
					end
				end)
			end

			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Component Changer (Skin)
	local positionMother = 1
	local positionFather = 1
	local arrayMother  = {"1", "2", "3", "4", "5",
						 "6", "7", "8", "9", "10",
						 "11", "12", "13", "14", "15",
						 "16", "17", "18", "19", "20",
						 "21", "22"}
	local arrayMother2 = {"21", "22", "23", "24", "25",
						  "26", "27", "28", "29", "30",
						  "31", "32", "33", "34", "35",
						  "36", "37", "38", "39", "40",
						  "41", "45"}
	local arrayFather  = {"1", "2", "3", "4", "5",
						 "6", "7", "8", "9", "10",
						 "11", "12", "13", "14", "15",
						 "16", "17", "18", "19", "20",
						 "21", "22", "23", "24"}
	local arrayFather2 = {"0", "1", "2", "3", "4",
						  "5", "6", "7", "8", "9",
						  "10", "11", "12", "13", "14",
						  "15", "16", "17", "18", "19",
						  "20", "42", "43", "44"}

	while true do
		if componentChangerSkinMenu then
			
			local unusedBool, shapeMotherID, shapeFatherID, shapeExtraID, skinMotherID, skinFatherID, skinExtraID, shapeMix, skinMix, thirdMix = Citizen.InvokeNative(0x2746BD9D88C5C5D0, GetPlayerPed(-1), Citizen.PointerValueIntInitialized(shapeMotherID), Citizen.PointerValueIntInitialized(shapeFatherID), Citizen.PointerValueIntInitialized(shapeExtraID), Citizen.PointerValueIntInitialized(skinMotherID), Citizen.PointerValueIntInitialized(shapeFatherID), Citizen.PointerValueIntInitialized(skinExtraID), Citizen.PointerValueFloatInitialized(shapeMix), Citizen.PointerValueFloatInitialized(skinMix), Citizen.PointerValueFloatInitialized(thirdMix), Citizen.ReturnResultAnyway())		
			local newShapeMix = round(shapeMix, 2)
			local newSkinMix = round(skinMix, 2)
			local newThirdMix = round(thirdMix, 2)
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerSkinMenu
			else
				lastSelectioncomponentChangerSkinMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. SkinTitle)

			TriggerEvent("FMODT:StringArray", MotherShapeTitle, arrayMother, positionMother, function(cb)
				positionMother = cb
				shapeMotherID = tonumber(arrayMother2[positionMother])
			end)

			TriggerEvent("FMODT:Int", MotherSkintoneTitle, skinMotherID, 0, 45, function(cb)
				skinMotherID = cb
			end)
		
			TriggerEvent("FMODT:StringArray", FatherShapeTitle, arrayFather, positionFather, function(cb)
				positionFather = cb
				shapeFatherID = tonumber(arrayFather2[positionFather])
			end)

			TriggerEvent("FMODT:Int", FatherSkintoneTitle, skinFatherID, 0, 45, function(cb)
				skinFatherID = cb
			end)
		
			TriggerEvent("FMODT:Int", ExtraShapeTitle, shapeExtraID, 0, 45, function(cb)
				shapeExtraID = cb
			end)
		
			TriggerEvent("FMODT:Int", ExtraSkintoneTitle, skinExtraID, 0, 45, function(cb)
				skinExtraID = cb
			end)
		
			TriggerEvent("FMODT:Float", ShapeMixTitle, newShapeMix, 0.0, 1.0, 0.05, 5, function(cb)
				newShapeMix = cb
			end)

			TriggerEvent("FMODT:Float", SkintoneMixTitle, newSkinMix, 0.0, 1.0, 0.05, 6, function(cb)
				newSkinMix = cb
			end)

			TriggerEvent("FMODT:Float", ExtraMixTitle, newThirdMix, 0.0, 1.0, 0.05, 7, function(cb)
				newThirdMix = cb
			end)

			SetPedHeadBlendData(GetPlayerPed(-1), shapeMotherID, shapeFatherID, shapeExtraID, skinMotherID, skinFatherID, skinExtraID, newShapeMix, newSkinMix, newThirdMix, false)

			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Component Changer (Overlays)
	while true do
	
		if componentChangerHeadDataMenu then
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerHeadDataMenu
			else
				lastSelectioncomponentChangerHeadDataMenu = currentOption
			end

			TriggerEvent("FMODT:Title", "~y~" .. OverlaysTitle)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. BlemishesTitle, function(cb)
				if (cb) then
					overlayName = BlemishesTitle
					overlayID = 0
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. FacialHairTitle, function(cb)
				if (cb) then
					overlayName = FacialHairTitle
					overlayID = 1
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					OverlayColorP = 0
					OverlayColorS = 0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. EyebrownsTitle, function(cb)
				if (cb) then
					overlayName = EyebrownsTitle
					overlayID = 2
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					OverlayColorP = 0
					OverlayColorS = 0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. AgeingTitle, function(cb)
				if (cb) then
					overlayName = AgeingTitle
					overlayID = 3
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. MakeupTitle, function(cb)
				if (cb) then
					overlayName = MakeupTitle
					overlayID = 4
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. BlushTitle, function(cb)
				if (cb) then
					overlayName = BlushTitle
					overlayID = 5
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					OverlayColorP = 0
					OverlayColorS = 0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ComplexionTitle, function(cb)
				if (cb) then
					overlayName = ComplexionTitle
					overlayID = 6
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. SunDamageTitle, function(cb)
				if (cb) then
					overlayName = SunDamageTitle
					overlayID = 7
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. LipstickTitle, function(cb)
				if (cb) then
					overlayName = LipstickTitle
					overlayID = 8
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					OverlayColorP = 0
					OverlayColorS = 0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. MolesFrecklesTitle, function(cb)
				if (cb) then
					overlayName = MolesFrecklesTitle
					overlayID = 9
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. ChestHairTitle, function(cb)
				if (cb) then
					overlayName = ChestHairTitle
					overlayID = 10
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					OverlayColorP = 0
					OverlayColorS = 0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. BodyBlemishesTitle, function(cb)
				if (cb) then
					overlayName = BodyBlemishesTitle
					overlayID = 11
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. AddBodyBlemishesTitle, function(cb)
				if (cb) then
					overlayName = AddBodyBlemishesTitle
					overlayID = 12
					overlayIndex = GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID)
					overlayOpacity = 1.0
					componentChangerHeadDataMenu = false
					componentChangerHeadDataSubMenu = true
					lastSelectioncomponentChangerHeadDataSubMenu = 1
				end
			end)

			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Component Changer (Overlays Sub)
	local ColorType
	while true do
	
		if componentChangerHeadDataSubMenu then
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerHeadDataSubMenu
			else
				lastSelectioncomponentChangerHeadDataSubMenu = currentOption
			end
			
			if GetPedHeadOverlayValue(GetPlayerPed(-1), overlayID) == 255 then
				overlayIndex = -1
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. overlayName)

			TriggerEvent("FMODT:Int", overlayName, overlayIndex, -1, GetNumHeadOverlayValues(overlayID) - 1, function(cb)
				overlayIndex = cb
				if overlayIndex == -1 then
					SetPedHeadOverlay(GetPlayerPed(-1), overlayID, 255, 0.0)
				else
					SetPedHeadOverlay(GetPlayerPed(-1), overlayID, overlayIndex, overlayOpacity)
				end
			end)
		
			TriggerEvent("FMODT:Float", overlayName .. " Opacity", overlayOpacity, 0.2, 1.0, 0.1, 8, function(cb)
				overlayOpacity = cb
				SetPedHeadOverlay(GetPlayerPed(-1), overlayID, overlayIndex, overlayOpacity)
			end)
			
			if not (overlayIndex == -1) and ((overlayID == 1) or (overlayID == 2) or (overlayID == 10)) then
				ColorType = 1
			elseif not (overlayIndex == -1) and ((overlayID == 5) or (overlayID == 8)) then
				ColorType = 2
			end
			if (overlayIndex ~= -1) and (overlayID == 1) then
				TriggerEvent("FMODT:Int", "Primary " .. overlayName .. " Color", FacialHairColorIndex, 0, 63, function(cb)
					FacialHairColorIndex = cb
					SetPedHeadOverlayColor(GetPlayerPed(-1), overlayID, ColorType, FacialHairColorIndex, 0)
				end)
			elseif (overlayIndex ~= -1) and (overlayID == 2) then
				TriggerEvent("FMODT:Int", "Primary " .. overlayName .. " Color", EyebrowsColorIndex, 0, 63, function(cb)
					EyebrowsColorIndex = cb
					SetPedHeadOverlayColor(GetPlayerPed(-1), overlayID, ColorType, EyebrowsColorIndex, 0)
				end)
			elseif (overlayIndex ~= -1) and (overlayID == 10) then
				TriggerEvent("FMODT:Int", "Primary " .. overlayName .. " Color", ChestHairColorIndex, 0, 63, function(cb)
					ChestHairColorIndex = cb
					SetPedHeadOverlayColor(GetPlayerPed(-1), overlayID, ColorType, ChestHairColorIndex, 0)
				end)
			elseif (overlayIndex ~= -1) and (overlayID == 5) then
				TriggerEvent("FMODT:Int", "Primary " .. overlayName .. " Color", BlushColorIndex, 0, 63, function(cb)
					BlushColorIndex = cb
					SetPedHeadOverlayColor(GetPlayerPed(-1), overlayID, ColorType, BlushColorIndex, 0)
				end)
			elseif (overlayIndex ~= -1) and (overlayID == 8) then
				TriggerEvent("FMODT:Int", "Primary " .. overlayName .. " Color", LipstickColorIndex, 0, 63, function(cb)
					LipstickColorIndex = cb
					SetPedHeadOverlayColor(GetPlayerPed(-1), overlayID, ColorType, LipstickColorIndex, 0)
				end)
			end
			
			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Component Changer (Prop)
	while true do
		drawableId = GetPedPropIndex(GetPlayerPed(-1), componentId)
		if not drawableId == -1 then
			textureId = GetPedPropTextureIndex(GetPlayerPed(-1), componentId)
		end
		if componentChangerPropMenu then
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerPropMenu
			else
				lastSelectioncomponentChangerPropMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. PropName)

			TriggerEvent("FMODT:Int", PropName, drawableId, -1, GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1), componentId) - 1, function(cb)
				drawableId = cb
				if drawableId == -1 then
					ClearPedProp(GetPlayerPed(-1), componentId)
				else
					textureId = 0
					SetPedPropIndex(GetPlayerPed(-1), componentId, drawableId, textureId, true)
				end
			end)
		
			TriggerEvent("FMODT:Int", TextureTitle, textureId, 0, GetNumberOfPedPropTextureVariations(GetPlayerPed(-1), componentId, drawableId) - 1, function(cb)
				textureId = cb
				SetPedPropIndex(GetPlayerPed(-1), componentId, drawableId, textureId, true)
			end)
		
			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Component Changer (Component)
	while true do
		drawableId = GetPedDrawableVariation(GetPlayerPed(-1), componentId)
		textureId = GetPedTextureVariation(GetPlayerPed(-1), componentId)
		if componentChangerComponentMenu then
			
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectioncomponentChangerComponentMenu
			else
				lastSelectioncomponentChangerComponentMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. ComponentName)

			TriggerEvent("FMODT:Int", ComponentName, drawableId, 0, GetNumberOfPedDrawableVariations(GetPlayerPed(-1), componentId) - 1, function(cb)
				drawableId = cb
				textureId = 0
				SetPedComponentVariation(GetPlayerPed(-1), componentId, drawableId, textureId, GetPedPaletteVariation(GetPlayerPed(-1), componentId))
			end)
		
			TriggerEvent("FMODT:Int", TextureTitle, textureId, 0, GetNumberOfPedTextureVariations(GetPlayerPed(-1), componentId, drawableId) - 1, function(cb)
				textureId = cb
				SetPedComponentVariation(GetPlayerPed(-1), componentId, drawableId, textureId, GetPedPaletteVariation(GetPlayerPed(-1), componentId))
			end)
		
			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

