local EnterName, EnterPassword, EnterSecurityQuestionAnswer

Citizen.CreateThread(function() --Login Menu
	local SelectedSecurityQuestion = 1
	local SecurityQuestions = {SecurityQuestion1, SecurityQuestion2, SecurityQuestion3, SecurityQuestion4}
	while true do

		if loginMenu then
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionloginMenu
			else
				lastSelectionloginMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. LoginMenuTitle)
			
			TriggerEvent("FMODT:Option", "~y~" .. UsernameTitle .. ": ~s~" .. Username, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', NameKeyboardMessage .. ':')
					EnterName = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~" .. PasswordTitle .. ": ~s~" .. Password, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', PasswordKeyboardMessage .. ':')
					EnterPassword = true
				end
			end)
			
			TriggerEvent("FMODT:Option", LoginMenuTitle, function(cb)
				if (cb) then
					if Username ~= "" and Password ~= "" then
						TriggerServerEvent("Login", Username, Password)
					else
						drawNotification("~r~" .. LoginErrorMessage .. "!")
					end
				end
			end)
			
			TriggerEvent("FMODT:Option", "~r~" .. ResetPasswordTitle, function(cb)
				if (cb) then
					if Username ~= "" then
						TriggerServerEvent("ResetPassword", false, Username, "")
					else
						drawNotification("~r~" .. ResetPasswordErrorMessage .. "!")
					end
				end
			end)
			
			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. RegisterMenuTitle, function(cb)
				if (cb) then
					loginMenu = false
					Username = ""
					Password = ""
					registerMenu = true
				end
			end)
			
			TriggerEvent("FMODT:Update")
			
		elseif registerMenu then
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionregisterMenu
			else
				lastSelectionregisterMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. RegisterMenuTitle)
			
			TriggerEvent("FMODT:Option", "~y~" .. UsernameTitle .. ": ~s~" .. Username, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', NameKeyboardMessage .. ':')
					EnterName = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~" .. PasswordTitle .. ": ~s~" .. Password, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', PasswordKeyboardMessage .. ':')
					EnterPassword = true
				end
			end)
			
			TriggerEvent("FMODT:Int", SecurityQuestions[SelectedSecurityQuestion], SelectedSecurityQuestion, 1, tablelength(SecurityQuestions), function(cb)
				SelectedSecurityQuestion = cb
			end)
				
			TriggerEvent("FMODT:Option", "~y~" .. SecurityQuestionAnswerTitle .. ": ~s~" .. SecurityQuestionAnswer, function(cb)
				if (cb) then
					AddTextEntry('FMMC_KEY_TIP1', SecurityQuestionAnswerKeyboardMessage .. ':')
					EnterSecurityQuestionAnswer = true
				end
			end)
			
			TriggerEvent("FMODT:Option", RegisterMenuTitle, function(cb)
				if (cb) then
					if Username ~= "" and Password ~= "" and SecurityQuestionAnswer ~= "" then
						TriggerServerEvent("Register", Username, Password, SecurityQuestions[SelectedSecurityQuestion], SecurityQuestionAnswer)
					else
						drawNotification("~r~" .. LoginRegisterErrorMessage .. "!")
					end
				end
			end)
			
			TriggerEvent("FMODT:Option", "~y~>> ~s~" .. LoginMenuTitle, function(cb)
				if (cb) then
					registerMenu = false
					Username = ""
					Password = ""
					loginMenu = true
				end
			end)
			
			TriggerEvent("FMODT:Update")
			
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function() --Enter Name / Password
	local result
	while true do
		Citizen.Wait(0)
		if EnterName then
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
					EnterName = false
				else
					drawNotification("~r~" .. NameInvalidMessage .. "!")
				end
			else
				Citizen.Wait(500)
				blockinput = false
				EnterName = false
			end
		elseif EnterPassword then
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
					blockinput = false
					EnterPassword = false
				else
					drawNotification("~r~" .. PasswordTooShortMessage .. "!")
				end
			else
				Citizen.Wait(500)
				blockinput = false
				EnterPassword = false
			end
		elseif EnterSecurityQuestionAnswer then
			DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", SecurityQuestionAnswer, "", "", "", 16)
			blockinput = true
			while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
				Citizen.Wait(0)
			end
			if UpdateOnscreenKeyboard() ~= 2 then
				result = GetOnscreenKeyboardResult()
				Citizen.Wait(500)
				if not result:match("%W") then
					SecurityQuestionAnswer = result
					blockinput = false
					EnterSecurityQuestionAnswer = false
				end
			else
				Citizen.Wait(500)
				blockinput = false
				EnterSecurityQuestionAnswer = false
			end
		end
	end
end)

AddEventHandler("RegisterClient", function(Registered)
	if Registered then
		drawNotification("~g~" .. RegisterSuccessMessage .. "!")
		registerMenu = false
		lastSelectionloginMenu = 3
		loginMenu = true
	else
		drawNotification("~r~" .. RegisterFailMessage .. "!")
	end
end)

AddEventHandler("LoginClient", function(LoggedIn)
	if LoggedIn then
		TriggerServerEvent("RecoverOldSaves")
		TriggerServerEvent("GetOutfitNames")
		TriggerServerEvent("LoadSettings")
		drawNotification("~g~" .. LoginSuccessMessage .. "!")
		loggedIn = true
		loginMenu = false
		mainMenu = true
	else
		drawNotification("~r~" .. LoginFailMessage .. "!")
	end
end)

AddEventHandler("GotSecurityQuestion", function(SecurityQuestion)
	local SecurityQuestionAnswer = ""
	AddTextEntry('FMMC_KEY_TIP1', SecurityQuestion)
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", SecurityQuestionAnswer, "", "", "", 16)
	blockinput = true
	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end
	if UpdateOnscreenKeyboard() ~= 2 then
		result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		if not result:match("%W") then
			SecurityQuestionAnswer = result
			TriggerServerEvent("ResetPassword", true, Username, SecurityQuestionAnswer)
			blockinput = false
			EnterSecurityQuestionAnswer = false
		end
	else
		Citizen.Wait(500)
		blockinput = false
		EnterSecurityQuestionAnswer = false
	end
end)

AddEventHandler("ChangingPasswordClient", function(State)
	if State then
		local Password = ""
		AddTextEntry('FMMC_KEY_TIP1', ChangePasswordKeyboardMessage .. ':')
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
	else
		drawNotification("~r~" .. SecurityQuestionAnswerWrongMessage .. "!")
	end
end)

