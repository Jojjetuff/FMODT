local EnterName, EnterPassword, EnterSecurityQuestionAnswer

Citizen.CreateThread(function() --Login Menu
	local SelectedSecurityQuestion = 1
	while true do
		local SecurityQuestions = {SecurityQuestion1, SecurityQuestion2, SecurityQuestion3, SecurityQuestion4}
		
		if loginMenu then
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelectionloginMenu
			else
				lastSelectionloginMenu = currentOption
			end
		
			TriggerEvent("FMODT:Title", "~y~" .. LoginMenuTitle)
			
			TriggerEvent("FMODT:Option", "~y~" .. UsernameTitle .. ": ~s~" .. Username, function(cb)
				if (cb) then
					EnterName = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~" .. PasswordTitle .. ": ~s~" .. Password, function(cb)
				if (cb) then
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
			
			TriggerEvent("FMODT:StringArray", LanguageTitle .. ": ", Languages, SelectedLanguage, function(cb)
				SelectedLanguage = cb
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
					EnterName = true
				end
			end)

			TriggerEvent("FMODT:Option", "~y~" .. PasswordTitle .. ": ~s~" .. Password, function(cb)
				if (cb) then
					EnterPassword = true
				end
			end)
			
			TriggerEvent("FMODT:Int", SecurityQuestions[SelectedSecurityQuestion], SelectedSecurityQuestion, 1, tablelength(SecurityQuestions), function(cb)
				SelectedSecurityQuestion = cb
			end)
				
			TriggerEvent("FMODT:Option", "~y~" .. SecurityQuestionAnswerTitle .. ": ~s~" .. SecurityQuestionAnswer, function(cb)
				if (cb) then
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
			
			TriggerEvent("FMODT:StringArray", LanguageTitle .. ": ", Languages, SelectedLanguage, function(cb)
				SelectedLanguage = cb
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
			local result = KeyboardInput(UsernameTitle, Username, 16, false)
			if result ~= nil then
				if result:len() >= 3 and not result:match("%W") then
					Username = result
					EnterName = false
				else
					drawNotification("~r~" .. NameInvalidMessage .. "!")
				end
			else
				EnterName = false
			end
		elseif EnterPassword then
			local result = KeyboardInput(PasswordTitle, Password, 30, false)
			if result ~= nil then
				if result:len() >= 6 then 
					Password = result
					EnterPassword = false
				else
					drawNotification("~r~" .. PasswordTooShortMessage .. "!")
				end
			else
				EnterPassword = false
			end
		elseif EnterSecurityQuestionAnswer then
			local result = KeyboardInput(SecurityQuestionAnswerKeyboardMessage, SecurityQuestionAnswer, 16, false)
			if result ~= nil then
				if result:len() >= 3 then
					SecurityQuestionAnswer = result
					EnterSecurityQuestionAnswer = false
				end
			else
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
		TriggerServerEvent("GetVehicleNames")
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
	local result = KeyboardInput(SecurityQuestion, SecurityQuestionAnswer, 16, false)
	if result ~= nil then
		if not result:match("%W") then
			SecurityQuestionAnswer = result
			TriggerServerEvent("ResetPassword", true, Username, SecurityQuestionAnswer)
			EnterSecurityQuestionAnswer = false
		end
	else
		EnterSecurityQuestionAnswer = false
	end
end)

AddEventHandler("ChangingPasswordClient", function(State)
	if State then
		local Password = ""
		local result = KeyboardInput(ChangePasswordKeyboardMessage, Password, 30, false)
		if result ~= nil then
			if result:len() >= 6 then
				Password = result
				drawNotification("~g~" .. ChangePasswordSuccessMessage .. "!")
				ChangePassword = false
				TriggerServerEvent("ChangePassword", Password)
			else
				drawNotification("~r~" .. PasswordTooShortMessage .. "!")
			end
		else
			ChangePassword = false
		end
	else
		drawNotification("~r~" .. SecurityQuestionAnswerWrongMessage .. "!")
	end
end)

