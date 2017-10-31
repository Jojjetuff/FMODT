SelectedLanguage = 1
Languages = {"English", "German", "Norwegian", "Lithuanian"}
	

Citizen.CreateThread(function() --Language Changing
	while true do
		Citizen.Wait(0)
		if SelectedLanguage == 1 then --English
			-- Welcome Message
				WelcomeMessage = "Welcome To CHEM!CAL T0Ж!N"

			-- Page Indicator
				PageIndicator = "Page"

			-- Not Existing
				NotExisting = "Not Existing"

			-- Main Menu
				AdminMenuTitle = "Admin Menu"
				PlayerMenuTitle = "Player Menu"
				VehicleMenuTitle = "Vehicle Menu"
				TeleportMenuTitle = "Teleport Menu"
				WeaponMenuTitle = "Weapon Menu"
				WorldMenuTitle = "World Menu"
				MiscMenuTitle = "Misc Menu"
				SettingsMenuTitle = "Settings Menu"
				AboutTitle = "About"

			-- Admin Menu
				PlayerInfosTitle = "Player Informations"

				KickPlayerTitle = "Kick Player"
				KickYourselfMessage = "Can't Kick Yourself"

				BanDurationTitle = "Ban Duration (Hours)"
				BanPlayerTitle = "Ban Player"
				BanYourselfMessage = "Can't Ban Yourself"

				SpectatePlayerTitle = "Spectate Player"
				SpectateYourselfMessage = "Can't Spectate Yourself"
				StopPlayerSpectateTitle = "Stop Spectating"
				ChoosePlayerToSpectateTitle = "Choose Player To Spectate"

				TeleportPlayerToMeTitle = "Teleport Player To Me"
				TeleportYourselfMessage = "Can't Teleport Yourself"

				MiscellaneousOptionsTitle = "Miscellaneous Options"

				ExtendableMapTitle = "Extendable Map"
				ExtendableMapEnableMessage = "Extendable Map Enabled For Every Client"
				ExtendableMapDisableMessage = "Extendable Map Disabled For Every Client"

				BlipsAndNamesTitle = "Blips & Names"
				BlipsAndNamesEnableMessage = "Blips & Names Enabled For Every Client"
				BlipsAndNamesDisableMessage = "Blips & Names Disabled For Every Client"

				BlipsAndNamesNonAdminsTitle = "Blips & Names (Non-Admins)"
				BlipsAndNamesNonAdminsEnableMessage = "Blips & Names Enabled For Non-Admins"
				BlipsAndNamesNonAdminsDisableMessage = "Blips & Names Disabled For Non-Admins"

				PvPTitle = "PvP"
				PvPEnableMessage = "PvP Enabled For Every Client"
				PvPDisableMessage = "PvP Disabled For Every Client"

				ScoreboardTitle = "Scoreboard"
				ScoreboardEnableMessage = "Scoreboard Enabled For Every Client"
				ScoreboardDisableMessage = "Scoreboard Disabled For Every Client"

				StuntJumpTitle = "Stunt Jumps"
				StuntJumpEnableMessage = "Stunt Jumps Enabled For Every Client"
				StuntJumpDisableMessage = "Stunt Jumps Disabled For Every Client"

				VoiceChatTitle = "Voice Chat"
				VoiceChatEnableMessage = "Voice Chat Enabled For Every Client"
				VoiceChatDisableMessage = "Voice Chat Disabled For Every Client"

				VoiceChatProximityTitle = "Voice Chat Proximity"
				VoiceChatProximityChangeToDefaultMessage = "Changed Voice Chat Proximity to ~y~Entire Lobby ~g~For Every Client"
				VoiceChatProximityChangeMessage = "Changed Voice Chat Proximity For Every Client"

				VoiceChatChannelTitle = "Voice Chat Channel"
				VoiceChatChannelChangeToDefaultMessage = "Changed Voice Chat Channel To Default"

				ShowTalkingPlayerTitle = "Show Talking Player"
				ShowTalkingPlayerEnableMessage = "Show Talking Player Enable"
				ShowTalkingPlayerDisableMessage = "Show Talking Player Disabled"

				NameTitle = "Name" --NEW
				MenuNameTitle = "Menu Name" --NEW
				IPTitle = "IP" --NEW
				PingTitle = "Ping" --NEW
				SteamIDTitle = "Steam ID" --NEW
				LicenseIDTitle = "License ID" --NEW
				AdminsDecisionMessage = "Admins Decision" --NEW
				KickedMessage = "Kicked" --NEW
				PlayerKickAbortedMessage = "Player Kick Aborted" --NEW
				BannedMessage = "Banned" --NEW
				PlayerBanAbortedMessage = "Player Ban Aborted" --NEW


			-- Player Menu
				ArmorHealWashTitle = "Add Armor, Heal & Wash Your Ped"
				ArmorHealWashMessage = "Added Armor, Healed & Washed Your Ped"

				AnimationsTitle = "Animations"
				SexActsTitle = "S*x Acts"
				StopSexActsTitle = "Stop S*x Act"
				AnalFuckedTitle = "Anal F*cked"
				AnalFuckerTitle = "Anal F*cker"
				CarBJGetterTitle = "Car BJ Getter"
				CarBJGiverTitle = "Car BJ Giver"
				CarSexGetterTitle = "Car S*x Getter"
				CarSexGiverTitle = "Car S*x Giver"
				StripsTitle = "Strips"
				StopStripTitle = "Stop Strip"
				PoleDance1Title = "1. Pole Dance"
				PoleDance2Title = "2. Pole Dance"
				PoleDance3Title = "3. Pole Dance"
				LapDanceTitle = "Lap Dance"
				PrivateDanceTitle = "Private Dance"
				SuicideTitle = "Suicide"
				StopSuicideTitle = "Stop Suicide"
				PillSuicideTitle = "Pill Suicide"
				PistolSuicideTitle = "Pistol Suicide"

				ChangePedTitle = "Change Ped"
				PedNotExistingMessage = "Ped Not Existing"
				ChangingByNameAbortedMessage = "Changing By Name Aborted"

				ChangePedByNameTitle = "Change Ped By Name"
				AnimalsTitle = "Animals"
				BoarTitle = "Boar"
				CatTitle = "Cat"
				ChickenhawkTitle = "Chickenhawk"
				ChimpTitle = "Chimp"
				ChopTitle = "Chop"
				CormorantTitle = "Cormorant"
				CowTitle = "Cow"
				CoyoteTitle = "Coyote"
				CrowTitle = "Crow"
				DeerTitle = "Deer"
				DolphinTitle = "Dolphin"
				FishTitle = "Fish"
				HenTitle = "Hen"
				HammerheadSharkTitle = "Hammerhead Shark"
				HumpbackTitle = "Humpback"
				HuskyTitle = "Husky"
				KillerWhaleTitle = "Killer Whale"
				MountainLionTitle = "Mountain Lion"
				PigTitle = "Pig"
				PigeonTitle = "Pigeon"
				PoodleTitle = "Poodle"
				PugTitle = "Pug"
				RabbitTitle = "Rabbit"
				RatTitle = "Rat"
				RetrieverTitle = "Retriever"
				RhesusTitle = "Rhesus"
				RottweilerTitle = "Rottweiler"
				SeagullTitle = "Seagull"
				ShepherdTitle = "Shepherd"
				StingrayTitle = "Stingray"
				TigerSharkTitle = "Tiger Shark"
				WestyTitle = "Westy"

				FemalePedsTitle = "Female Peds"
				BusinessFemaleTitle = "Business"
				CopFemaleTitle = "Cop"
				EpsilonFemaleTitle = "Epsilon"
				FattyFemaleTitle = "Fatty"
				GolferFemaleTitle = "Golfer"
				HipsterFemaleTitle = "Hipster"
				Hooker1Title = "Hooker 1"
				Hooker2Title = "Hooker 2"
				Hooker3Title = "Hooker 3"
				MaidTitle = "Maid"
				RangerFemaleTitle = "Ranger"
				SheriffFemaleTitle = "Sheriff"
				Stripper1Title = "Stripper 1"
				Stripper2Title = "Stripper 2"

				MalePedsTitle = "Male Peds"
				BusinessMaleTitle = "Business"
				CopMaleTitle = "Cop"
				EpsilonMaleTitle = "Epsilon"
				FattyMaleTitle = "Fatty"
				FiremanTitle = "Fireman"
				GolferMaleTitle = "Golfer"
				HighwayCopTitle = "Highway Cop"
				HipsterMaleTitle = "Hipster"
				PrisonerTitle = "Prisoner"
				Marine1Title = "Marine 1"
				Marine2Title = "Marine 2"
				Marine3Title = "Marine 3"
				RangerMaleTitle = "Ranger"
				SheriffMaleTitle = "Sheriff"

				PlayerPedsTitle = "Player Peds"
				MPCharacterFemaleTitle = "MP Character (Female)"
				MPCharacterMaleTitle = "MP Character (Male)"
				FranklinTitle = "Franklin"
				MichaelTitle = "Michael"
				TrevorTitle = "Trevor"

				EveryPedTitle = "Every Ped"
				
				ComponentChangerTitle = "Component Changer"
				SkinTitle = "Appearance" --NEW
				MotherShapeTitle = "Mother Shape" --NEW
				MotherSkintoneTitle = "Mother Skintone" --NEW
				FatherShapeTitle = "Father Shape" --NEW
				FatherSkintoneTitle = "Father Skintone" --NEW
				ExtraShapeTitle = "Extra Shape" --NEW
				ExtraSkintoneTitle = "Extra Skintone" --NEW
				ShapeMixTitle = "Shape Mix" --NEW
				SkintoneMixTitle = "Skintone Mix" --NEW
				ExtraMixTitle = "Extra Mix" --NEW
				OverlaysTitle = "Overlays" --NEW
				BlemishesTitle = "Blemishes" --NEW
				FacialHairTitle = "Facial Hair" --NEW
				EyebrownsTitle = "Eyebrowns" --NEW
				AgeingTitle = "Ageing" --NEW
				MakeupTitle = "Makeup" --NEW
				BlushTitle = "Blush" --NEW
				ComplexionTitle = "Complexion" --NEW
				SunDamageTitle = "Sun Damage" --NEW
				LipstickTitle = "Lipstick" --NEW
				MolesFrecklesTitle = "Moles / Freckles" --NEW
				ChestHairTitle = "Chest Hair" --NEW
				BodyBlemishesTitle = "Body Blemishes" --NEW
				AddBodyBlemishesTitle = "Add Body Blemishes" --NEW
				HatsTitle = "Hat" --NEW
				GlassesTitle = "Glasses" --NEW
				EarPiecesTitle = "Ear Piece" --NEW
				WatchesTitle = "Watch" --NEW
				FaceTitle = "Face" --NEW
				MasksTitle = "Mask" --NEW
				HairTitle = "Hair" --NEW
				ArmsUpperBodyGlovesTitle = "Upper Body / Gloves" --NEW
				LegsTitle = "Legs" --NEW
				ParachutesHeistBagsTitle = "Parachute & Heist Bag" --NEW
				ShoesTitle = "Shoes" --NEW
				TiesScarfsetcTitle = "Tie, Scarf, etc." --NEW
				UndershirtsSpecialThingsTitle = "Undershirt & Special Things" --NEW
				ArmorTitle = "Armor" --NEW
				EmblemesTitle = "Embleme" --NEW
				TopsTitle = "Top" --NEW
				TextureTitle = "Texture" --NEW

				PlayerGodmodeTitle = "Godmode"
				PlayerGodmodeEnableMessage = "Godmode Enabled"
				PlayerGodmodeDisableMessage = "Godmode Disabled"
				InfiniteStaminaTitle = "Infinite Stamina"
				InfiniteStaminaEnableMessage = "Infinite Stamina Enabled"
				InfiniteStaminaDisableMessage = "Infinite Stamina Disabled"

				OutfitsTitle = "Outfits"
				SaveOutfitsTitle = "Save Outfits"
				LoadOutfitsTitle = "Load Outfits"
				DeleteOutfitsTitle = "Delete Outfits"
				NoOutfitName = "Empty"
				NewOutfitDefaultName = "New Outfit"
				OutfitSavingAbortion = "Outfit Saving Aborted"
				OutfitDeletingWord = "delete"
				OutfitDeletingConfirmation = "Type '" .. OutfitDeletingWord .. "' to delete this Outfit"
				OutfitDeletingAbortion = "Outfit Deleting Aborted"
				OutfitMessage = "Outfit"
				LoadedMessage = "Loaded"

				RunSpeedMultiplierTitle = "Run Speed Multiplier"

				ScenariosTitle = "Scenarios"
				StopScenariosTitle = "Stop Scenario"
				MalePedScenariosTitle = "Male Ped Scenarios"
				BBQTitle = "BBQ"
				CarParkAttendantTitle = "Car Park Attendant"
				GolfTitle = "Golf"
				MusicianTitle = "Musician"
				PaparazziTitle = "Paparazzi"
				PushUpsTitle = "Push-Ups"
				SitUpsTitle = "Sit-Ups"
				BinocularsTitle = "Binoculars"
				CheeringTitle = "Cheering"
				DrillTitle = "Drill"
				DrinkingSomeCovfefeTitle = "Drinking Some Covfefe"
				FilmingTitle = "Filming"
				FishingTitle = "Fishing"
				HammeringTitle = "Hammering"
				JanitorTitle = "Janitor"
				TouristTitle = "Tourist"
				WeedSmokingTitle = "Weed Smoking"
				WeightliftingTitle = "Weightlifting"
				WeldingTitle = "Welding"
				YogaTitle = "Yoga"

				SuperJumpTitle = "Super Jump"
				SuperJumpEnableMessage = "Super Jump Enabled"
				SuperJumpDisableMessage = "Super Jump Disabled"
				SuicideTitle = "Suicide"
				SupermanModeTitle = "Superman Mode"
				SupermanModeEnableMessage = "Superman Mode Enabled"
				SupermanModeDisableMessage = "Superman Mode Disabled"
				SwimSpeedMultiplierTitle = "Swim Speed Multiplier"

				WantedLevelTitle = "Wanted Level"
				ClearWantedLevelTitle = "Clear Wanted Level"
				ClearWantedLevelMessage1 = "Not Needed While Wanted Level Is Disabled"
				ClearWantedLevelMessage2 = "Wanted Level Cleared"
				DisableWantedLevelTitle = "Disable Wanted Level"
				DisableWantedLevelDisableMessage = "Wanted Level Disabled"
				DisableWantedLevelEnableMessage = "Wanted Level Enabled"
				MaximumWantedLevelTitle = "Maximum Wanted Level"
				SetWantedLevelTitle = "Set Wanted Level"
				SetWantedLevelMessage = "Not Possible While Wanted Level Is Disabled"

				PlayerVisibleTitle = "Visible"
				PlayerVisibleEnableMessage = "Visible"
				PlayerVisibleDisableMessage = "Invisible"


			-- Vehicle Menu
				SpawnVehicleTitle = "Spawn Vehicle"
				DespawnableTitle = "Despawnable"
				DespawnableEnableMessage = "Vehicle Despawn Enabled"
				DespawnableDisableMessage = "Vehicle Despawn Disabled"
				ReplaceTitle = "Replace"
				ReplaceEnableMessage = "Replace Vehicle When Spawning Enabled"
				ReplaceDisableMessage = "Replace Vehicle When Spawning Disabled"
				MarkOnMapTitle = "Mark On Map"
				MarkOnMapEnableMessage = "Mark Vehicle On Map Enabled"
				MarkOnMapDisableMessage = "Mark Vehicle On Map Disabled"
				SpawnVehicleByNameTitle = "Spawn Vehicle By Name"
				FancyVehiclesTitle = "Fancy Vehicles"
				SpawningByNameAborted = "Spawning By Name Aborted"
				InvalidModel = "Invalid Model"

				BoostOnHornTitle = "Boost On Horn"
				BoostOnHornEnableMessage = "Boost On Horn Enabled"
				BoostOnHornDisableMessage = "Boost On Horn Disabled"
				BunnyHopTitle = "Bunny Hop"
				BunnyHopEnableMessage = "Bunny Hop Enabled!~n~ Jump With The Ped Sprint Button"
				BunnyHopDisableMessage = "Bunny Hop Disabled"
				DeleteTitle = "Delete"

				DoorsTitle = "Doors"
				DoorTitle = "Door"
				DoorNameFrontLeft = "Front Left Door"
				DoorNameFrontRight = "Front Right Door"
				DoorNameRearLeft = "Rear Left Door"
				DoorNameRearRight = "Rear Right Door"
				DoorNameHood = "Hood"
				DoorNameTrunk = "Trunk"
				DoorNameBack = "Back"
				DoorNameBack2 = "Back 2"
				DoorOpenedMessage = "Opened"
				DoorClosedMessage = "Closed"
				DoorOpenCloseTitle = "Open / Close"
				DoorOpenAllTitle = "Open All"
				DoorOpenAllMessage1 = "Opened Doors"
				DoorOpenAllMessage2 = "Doors Already Opened"
				DoorCloseAllTitle = "Close All"
				DoorCloseAllMessage1 = "Closed Doors"
				DoorCloseAllMessage2 = "Doors Already Closed"
				DoorRepairAllTitle = "Repair All"
				DoorRepairAllMessage1 = "Fixed Doors"
				DoorRepairAllMessage2 = "Doors Already Fixed"
				DoorDestroyAllTitle = "Destroy All"
				DoorDestroyAllMessage1 = "Destroyed Doors"
				DoorDestroyAllMessage2 = "Doors Already Destroyed"

				DriveOnWaterTitle = "Drive On Water"
				DriveOnWaterEnableMessage = "Drive On Water Enabled"
				DriveOnWaterDisableMessage = "Drive On Water Disabled"
				FixAndCleanTitle = "Fix & Clean"
				FlipTitle = "Flip"
				FuckUpTitle = "F*ck Up"
				FlyingVehicleTitle = "Flying Vehicle"
				FlyingVehicleEnableMessage = "Flying Vehicle Enabled"
				FlyingVehicleDisableMessage = "Flying Vehicle Disabled"
				VehicleGodmodeTitle = "Godmode"
				VehicleGodmodeEnableMessage = "Godmode Enabled"
				VehicleGodmodeDisableMessage = "Godmode Disabled"
				GravityTitle = "Gravity"
				GravityEnableMessage = "Gravity Enabled"
				GravityDisableMessage = "Gravity Disabled"

				SavedVehiclesTitle = "Saved Vehicles"
				NoSavedVehiclesName = "Empty"
				SaveVehiclesTitle = "Save Vehicles"
				LoadVehiclesTitle = "Load Vehicles"
				UnsaveVehiclesTitle = "Unsave Vehicles"
				VehicleMessage = "Vehicle"
				VehicleSavedMessage = "Saved"
				VehicleLoadedMessage = "Loaded"
				VehicleUnsavedMessage = "Unsaved"
				VehicleSavingAbortion = "Vehicle Saving Aborted"
				VehicleUnsavingAbortion = "Vehicle Unsaving Aborted"
				VehicleUnsaveWord = "unsave"
				VehicleUnsaveConfirmation = "Type '" .. VehicleUnsaveWord .. "' to unsave this Vehicle"

				SeatbeltTitle = "Seatbelt"
				SeatbeltEnableMessage = "Seatbelt Enabled"
				SeatbeltDisableMessage = "Seatbelt Disabled"

				TuningModifyingTitle = "Tuning / Modifying"
				UpgradeTitle = "Upgrade"
				UpgradeTrailerTitle = "Upgrade (Trailer)"
				DowngradeTitle = "Downgrade"
				DowngradeTrailerTitle = "Downgrade (Trailer)"
				EnginePowerMultiplierTitle = "Engine Power Multiplier"
				EngineTorqueMultiplierTitle = "Engine Torque Multiplier"
				ExtrasTitle = "Extras"
				ExtraTitle = "Extra"
				ExtraToggleTitle = "Toogle"
				ExtraEnabledTitle = "Enabled"
				ExtraDisabledTitle = "Disabled"
				TrailerExtrasTitle = "Trailer Extras"
				TrailerExtraTitle = "Extra"
				TrailerExtraToggleTitle = "Toggle"
				TrailerExtraEnabledTitle = "Enabled"
				TrailerExtraDisabledTitle = "Disabled"
				RainbowVehicleTitle = "Rainbow Vehicle"
				RainbowVehicleTrailerTitle = "Rainbow Vehicle (Trailer)"

				StockTitle = "Stock"
				NoneTitle = "None"
				StreetTitle = "Street"
				SportTitle = "Sport"
				RaceTitle = "Race"
				LoweredTitle = "Lowered"
				CompetitionTitle = "Competition"
				ArmorTitle = "Armor"
				BrakesTitle = "Brakes"
				BumperTitle = "Bumper"
				FrontBumperTitle = "Bumper (Front)"
				RearBumperTitle = "Bumper (Rear)"
				ChassisTitle = "Chassis"
				EngineTitle = "Engine"
				EMSModeTitle = "EMS Mode"
				ExhaustTitle = "Exhaust"
				FenderTitle = "Fender"
				FrontFenderTitle = "Fender (Front)"
				RearFenderTitle = "Fender (Rear)"
				GrilleTitle = "Grille"
				HoodTitle = "Hood"
				HornTitle = "Horn"
				MelodyTitle = "Melody"
				LoopTitle = "Loop"
				LightsTitle = "Lights"
				XenonTitle = "Xenon"
				XenonEnableMessage = "Xenon Enabled"
				XenonDisableMessage = "Xenon Disabled"
				NeonTitle = "Neons"
				ColorTitle = "Color"
				CustomColorTitle = "Custom Color"
				RainbowNeonsTitle = "Rainbow Neons"
				RainbowNeonsEnableMessage = "Rainbow Neons Enabled"
				RainbowNeonsDisableMessage = "Rainbow Neons Disabled"
				LeftNeonsTitle = "Left Neons"
				LeftNeonsEnableMessage = "Left Neons Enabled"
				LeftNeonsDisableMessage = "Left Neons Disabled"
				RightNeonsTitle = "Right Neons"
				RightNeonsEnableMessage = "Right Neons Enabled"
				RightNeonsDisableMessage = "Right Neons Disabled"
				FrontNeonsTitle = "Front Neons"
				FrontNeonsEnableMessage = "Front Neons Enabled"
				FrontNeonsDisableMessage = "Front Neons Disabled"
				RearNeonsTitle = "Rear Neons"
				RearNeonsEnableMessage = "Rear Neons Enabled"
				RearNeonsDisableMessage = "Rear Neons Disabled"
				PlateTitle = "Plate"
				SetPlateTextTitle = "Set Plate Text"
				ResparyTitle = "Respary"
				PrimaryColorTitle = "Primary Color"
				SecondaryColorTitle = "Secondary Color"
				PearlescentTitle = "Pearlescent"
				RimsTitle = "Rims"
				LiveryTitle = "Livery"
				LiverysTitle = "Liverys"
				NoLiverysTitle = "Your Vehicle Has No Liverys"
				NoLiveryTitly = "No Livery"
				RoofTitle = "Roof"
				SideSkirtTitle = "Side Skirt"
				SpoilerTitle = "Spoiler"
				SuspensionTitle = "Suspension"
				TransmissionTitle = "Transmission"
				TurboTitle = "Turbo"
				TurboEnableMessage = "Turbo Enabled"
				TurboDisableMessage = "Turbo Disabled"
				WheelsTitle = "Wheels"
				WheelAccessoriesTitle = "Wheel Accessories"
				WheelTypesTitle = "Wheel Types"
				BulletProofTiresTitle = "Bullet Proof Tires"
				BulletProofTiresEnableMessage = "Bullet Proof Tires Enabled"
				BulletProofTiresDisableMessage = "Bullet Proof Tires Disabled"
				RainbowTireSmokeTitle = "Rainbow Tire Smoke"
				RainbowTireSmokeEnableMessage = "Rainbow Tire Smoke Enabled"
				RainbowTireSmokeDisableMessage = "Rainbow Tire Smoke Disabled"
				NoTireSmokeTitle = "No Tire Smoke"
				CustomTireSmokeTitle = "Custom Tire Smoke"
				WhiteTireSmokeTitle = "White Tire Smoke"
				BlackTireSmokeTitle = "Black Tire Smoke"
				BlueTireSmokeTitle = "Blue Tire Smoke"
				YellowTireSmokeTitle = "Yellow Tire Smoke"
				PurpleTireSmokeTitle = "Purple Tire Smoke"
				OrangeTireSmokeTitle = "Orange Tire Smoke"
				GreenTireSmokeTitle = "Green Tire Smoke"
				RedTireSmokeTitle = "Red Tire Smoke"
				PinkTireSmokeTitle = "Pink Tire Smoke"
				BrownTireSmokeTitle = "Brown Tire Smoke"
				HighEndTitle = "High End"
				LowriderTitle = "Lowrider"
				MuscleTitle = "Muscle"
				OffroadTitle = "Offroad"
				SportTitle = "Sport"
				SUVTitle = "SUV"
				TunerTitle = "Tuner"
				FrontTitle = "Front"
				BackTitle = "Back"
				WindowTintTitle = "Window Tint"
				WindowTintMessage = "Changed Vehicle Window Tint"
				AirFilterTitle = "Air Filter"
				ArchCoverTitle = "Arch Cover"
				BonnetPinsTitle = "Bonnet Pins"
				CanardsVanityPlatesTitle = "Canards/Vanity Plates"
				DashboardTitle = "Dashboard"
				DialDesignTitle = "Dial Design"
				DoorsTitle = "Doors"
				EngineBlockTitle = "Engine Block"
				HydraulicsTitle = "Hydraulics"
				OrnamentsTitle = "Ornaments"
				PlaquesTitle = "Plaques"
				PlateHolderTitle = "Plate Holder"
				SeatsTitle = "Seats"
				ShiftLeverTitle = "Shift Lever"
				SpeakersTitle = "Speakers"
				SteeringWheelTitle = "Steering Wheel"
				StrutsTitle = "Struts"
				TankTitle = "Tank"
				TrimTitle = "Trim"
				TrimDesignTitle = "Trim Design"
				TrunkTitle = "Trunk"
				CustomColorSettingAborted = "Custom Color Setting Aborted"

				ReduceGripTitle = "Reduce Grip"
				ReduceGripEnableMessage = "Vehicle Grip Disabled"
				ReduceGripDisableMessage = "Vehicle Grip Enabled"
				VehicleVisibleTitle = "Visible"
				VehicleVisibleEnableMessage = "Visible"
				VehicleVisibleDisableMessage = "Invisible"
				NotDriverOfAVehicleMessage = "You Aren't The Driver Of A Vehicle"


			-- Teleport Menu
				TeleportToWaypointTitle = "Teleport To Waypoint"
				TeleportedToWaypointMessage = "Teleported To Waypoint"
				NoWaypointMessage = "No Waypoint Set"
				TeleportIntoNearestVehicleTitle = "Teleport Into Nearest Vehicle"
				TeleportedIntoNearestVehicleMessage = "Teleported Into Nearest Vehicle"
				NoVehicleFoundMessage = "No Vehicle Found"
				TeleportEntityRelativeTitle = "Teleport Entity - Relative"
				TeleportForwardTitle = "Teleport Forward"
				TeleportedForwardMessage = "Teleported Forward"
				TeleportBackwardTitle = "Teleport Backward"
				TeleportedBackwardMessage = "Teleported Backward"
				TeleportToTheLeftTitle = "Teleport To The Left"
				TeleportedToTheLeftMessage = "Teleported To The Left"
				TeleportToTheRightTitle = "Teleport To The Right"
				TeleportedToTheRightMessage = "Teleported To The Right"
				TeleportToOnlinePlayerTitle = "Teleport To Online Player"
				CantTeleportToYourselfMessage = "Can't Teleport To Yourself"
				InteriorLocationsTitle = "Interior Locations"
				ExteriorLocationsTitle = "Exterior Locations"
				CustomLocationTitle = "Custom Location"
				SetCoordsTitle = "Set Coords"
				TeleportToCoordsTitle = "Teleport To Coords"
				NoSpacesMessage = "NO SPACES"
				CoordsSetMessage = "Coords Set"
				CoordsSettingAbortedMessage = "Coords Setting Aborted"


			-- Weapon Menu
				GiveAllWeaponsTitle = "Give All Weapons"
				AllWeaponsGivenMessage = "All Weapons Given"
				RemoveAllWeaponsTitle = "Remove All Weapons"
				AllWeaponsRemovedMessage = "All Weapons Removed"
				DeleteGunTitle = "Delete Gun"
				DeleteGunEnableMessage = "Delete Gun Enabled!~n~~w~Use The ~b~Pistol!~n~~b~Aim ~w~and ~b~Shoot ~w~To Delete"
				DeleteGunDisableMessage = "Delete Gun Disabled"
				DeletedMessage = "Deleted"
				ExplosiveBulletTitle = "Explosive Bullet"
				ExplosiveBulletEnableMessage = "Explosive Bullet Enabled"
				ExplosiveBulletDisableMessage = "Explosive Bullet Disabled"
				ExplosionTypeTitle = "Explosion Type"
				FireAmmoTitle = "Fire Ammo"
				FireAmmoEnableMessage = "Fire Ammo Enabled"
				FireAmmoDisableMessage = "Fire Ammo Disabled"
				InfiniteAmmoNoReloadTitle = "Infinite Ammo & No Reload"
				InfiniteAmmoNoReloadEnableMessage = "Infinite Ammo & No Reload Enabled"
				InfiniteAmmoNoReloadDisableMessage = "Infinite Ammo & No Reload Disabled"
				OneShotKillTitle = "One Shot Kill"
				OneShotKillEnableMessage = "One Shot Kill Enabled"
				OneShotKillDisableMessage = "One Shot Kill Disabled"
				TeleportGunTitle = "Teleport Gun"
				TeleportGunEnableMessage = "Teleport Gun Enabled!~n~~w~Use The ~b~Heavy Sniper!~n~~b~Aim ~w~and ~b~Shoot ~w~To Teleport"
				TeleportGunDisableMessage = "Teleport Gun Disabled"
				VehicleGunTitle = "Vehicle Gun"
				VehicleGunEnableMessage = "Vehicle Gun Enabled!~n~~w~Use The ~b~AP Pistol~n~~b~Aim ~w~and ~b~Shoot"
				VehicleGunDisableMessage = "Vehicle Gun Disabled"
				VehicleWeaponsTitle = "Vehicle Weapons"
				VehicleWeaponsEnableMessage = "Vehicle Weapons Enabled!~n~~s~Just Aim To Shoot"
				VehicleWeaponsDisableMessage = "Vehicle Weapons Disabled"
				AmmoTypeTitle = "Ammo Type"
				WhaleGunTitle = "Whale Gun"
				WhaleGunEnableMessage = "Whale Gun Enabled!~n~~w~Use The ~b~Stungun~n~~b~Aim ~w~and ~b~Shoot"
				WhaleGunDisableMessage = "Whale Gun Disabled"


			-- World Menu
				BlackoutTitle = "Blackout"
				BlackoutEnableMessage = "Blackout Enabled"
				BlackoutDisableMessage = "Blackout Disabled"
				ExplodeNearestVehicleTitle = "Explode Nearest Vehicle"
				ExplodeNearestVehicleEnableMessage = "Explode Nearest Vehicle Enabled"
				ExplodeNearestVehicleDisableMessage = "Explode Nearest Vehicle Disabled"
				JumpModeTitle = "Jump Mode"
				JumpModeEnableMessage = "Jump Mode Enabled"
				JumpModeDisableMessage = "Jump Mode Disabled"
				NoNPCsTrafficTitle = "No NPCs & Traffic"
				NPCsTrafficEnableMessage = "NPCs & Traffic Enabled"
				NPCsTrafficDisableMessage = "NPCs & Traffic Disabled"
				TimeMenuTitle = "Time Menu"
				FreezeTimeTitle = "Freeze Time"
				FreezeTimeEnableMessage = "Time Frozen"
				FreezeTimeDisableMessage = "Time Unfrozen"
				HourTitle = "Hour"
				MinuteTitle = "Minute"
				MorningTitle = "Morning"
				MiddayTitle = "Midday"
				EveningTitle = "Evening"
				MidnightTitle = "Midnight"
				WeatherMenuTitle = "Weather Menu"
				WeatherTitle = "Weather"


			-- Misc Menu
				AlwaysParachuteTitle = "Always Parachute"
				AlwaysParachuteEnableMessage = "Always Parachute Enabled"
				AlwaysParachuteDisableMessage = "Always Parachute Disabled"
				BodyguardMenuTitle = "Bodyguard Menu"
				SpawnBodyguardTitle = "Spawn Bodyguard"
				BodyguardSpawnedMessage = "Bodyguard Spawned"
				Maximum7BodyguardsMessage = "Maximum 7 Bodyguards"
				DeleteAllBodyguardsTitle = "Delete All Bodyguards"
				AllBodyguardsDeletedMessage = "All Bodyguards Deleted"
				SelectedBodyguardTitle = "Selected Bodyguard"
				DeleteBodyguardTitle = "Delete Bodyguard"
				DeletedSelectedBodyguardMessage = "Deleted Selected Bodyguard"
				SelectedBodyguardNotExistingMessage = "Selected Bodyguard Not Existing"
				NoFormationTitle = "No Formation"
				CircleAroundLeader1Title = "Circle Around Leader 1"
				CircleAroundLeader2Title = "Circle Around Leader 2"
				LineLeaderAtCenterTitle = "Line"
				CoordsOverMapTitle = "Coords Over Map"
				CoordsOverMapEnableMessage = "Coords Over Map Enabled"
				CoordsOverMapDisableMessage = "Coords Over Map Disabled"
				DisableCinematicCamButtonTitle = "Disable Cinematic Cam"
				DisableCinematicCamButtonEnableMessage = "Cinematic Cam Enabled"
				DisableCinematicCamButtonDisableMessage = "Cinematic Cam Disabled"
				DrawFPSTitle = "Draw FPS"
				DrawFPSEnableMessage = "Draw FPS Enabled"
				DrawFPSDisableMessage = "Draw FPS Disabled"
				FPSCountFailed = "FPS Count Failed"
				HeatvisionTitle = "Heatvision"
				HeatvisionEnableMessage = "Heatvision Enabled"
				HeatvisionDisableMessage = "Heatvision Disabled"
				HideHUDRadarTitle = "Hide HUD & Radar"
				HideHUDRadarEnableMessage = "Hiding HUD & Radar"
				HideHUDRadarDisableMessage = "Showing HUD & Radar"
				HideOnlyRadarTitle = "Hide Only Radar"
				HideOnlyRadarEnableMessage = "Hiding Radar"
				HideOnlyRadarDisableMessage = "Showing Radar"
				NightvisionTitle = "Nightvision"
				NightvisionEnableMessage = "Nightvision Enabled"
				NightvisionDisableMessage = "Nightvision Disabled"
				NoClipModeTitle = "No Clip Mode"
				NoClipModeEnableMessage = "No Clip Mode Enabled"
				NoClipModeDisableMessage = "No Clip Mode Disabled"
				RadioMenuTitle = "Radio Menu"
				MobileRadioTitle = "Mobile Radio"
				MobileRadioEnableMessage = "Mobile Radio Enabled"
				MobileRadioDisableMessage = "Mobile Radio Disabled"
				SkipCurrentSongTitle = "Skip Current Song"
				SenderToFreezeTitle = "Sender To Freeze"
				RadiostationUnfrozenMessage = "Radiostation Unfrozen"
				RadiostationFrozenMessage = "Radiostation Frozen"
				SpeedometerTitle = "Speedometer"
				SimpleSpeedometerTitle = "Simple Speedometer"
				SimpleSpeedometerEnableMessage = "Simple Speedometer Enabled"
				SimpleSpeedometerDisableMessage = "Simple Speedometer Disabled"
				UnitTitle = "Unit"
				JoinedMessage = "joined"
				LeftMessage = "left"


			-- Settings Menu
				RestoreAppearanceBySpawnTitle = "Restore Appearance"
				SelectOutfitTitle = "Select Outfit"
				KeepWeaponsTitle = "Keep Weapons"
				MenuPositionHorizontalTitle = "Menu Position - Horizontal"
				AccountMenuTitle = "Account Menu" --NEW
				ChangeUsernameTitle = "Change Username" --NEW
				ChangePasswordTitle = "Change Password" --NEW
				LogOutTitle = "Log Out" --NEW
				LanguageTitle = "Language" --NEW


			-- Register / Login Menu
				LoginMenuTitle = "Login" --NEW
				RegisterMenuTitle = "Register" --NEW
				UsernameTitle = "Username" --NEW
				PasswordTitle = "Password" --NEW
				LoginRegisterErrorMessage = "Fill every Field" --NEW
				RegisterSuccessMessage = "Successfully registered" --NEW
				RegisterFailMessage = "Username already in use" --NEW
				LoginSuccessMessage = "Successfully logged in" --NEW
				LoginFailMessage = "Username or Password wrong" --NEW
				PasswordTooShortMessage = "Password too short! Atleast SIX Characters" --NEW
				NameInvalidMessage = "Name invalid! Atleast THREE Characters and no special characters" --NEW
				ChangeUsernameSuccessMessage = "Changed Username Successfully" --NEW
				ChangeUsernameFailMessage = "Changing Username Failed" --NEW
				ChangePasswordSuccessMessage = "Changed Password Successfully" --NEW
				SecurityQuestion1 = "What was your childhood nickname?" --NEW
				SecurityQuestion2 = "Who was your childhood hero?" --NEW
				SecurityQuestion3 = "Where were you New Year's 2000?" --NEW
				SecurityQuestion4 = "Where were you born?" --NEW
				SecurityQuestionAnswerTitle = "Answer" --NEW
				ResetPasswordTitle = "Reset Password" --NEW
				ResetPasswordErrorMessage = "Please enter a Name" --NEW
				SecurityQuestionAnswerWrongMessage = "Security Question answer is wrong" --NEW


			-- About Menu
				VersionTitle = "Version"
				MenuBaseTitle = "Menu Base"
				FoundAnyBugTitle = "Found Any Bug"
				ContactMeTitle = "Contact Me"
				TranslationTitle = "Translation"


			-- KeyboardMessages
				KickReasonKeyboardMessage = "Kick Reason" --NEW
				BanReasonKeyboardMessage = "Ban Reason" --NEW
				OutfitNameKeyboardMessage = "Outfit Name" --NEW
				PedModelKeyboardMessage = "Ped Model" --NEW
				CoordsKeyboardMessage = "Coords" --NEW
				VehicleNameKeyboardMessage = "Vehicle Name" --NEW
				VehicleModelKeyboardMessage = "Vehicle Model" --NEW
				ColorValuesKeyboardMessage = "Color Values" --NEW
				PlateTextKeyboardMessage = "Plate Text" --NEW
				ChangeUsernameKeyboardMessage = "New Username" --NEW
				ChangePasswordKeyboardMessage = "New Password" --NEW
				SecurityQuestionAnswerKeyboardMessage = "Security Question Answer" --NEW
				
			-- Language Credits
				LanguageCredits = "FlatracerMOD"
				LanguageCreditsLink = "forum.fivem.net/u/Flatracer"
		end
		if SelectedLanguage == 2 then --German
			-- Welcome Message
				WelcomeMessage = "Willkommen zu CHEM!CAL T0Ж!N"

			-- Page Indicator
				PageIndicator = "Seite"

			-- Not Existing
				NotExisting = "Existiert nicht"

			-- Main Menu
				AdminMenuTitle = "Admin Menü"
				PlayerMenuTitle = "Spieler Menü"
				VehicleMenuTitle = "Fahrzeug Menü"
				TeleportMenuTitle = "Teleport Menü"
				WeaponMenuTitle = "Waffen Menü"
				WorldMenuTitle = "Welt Menü"
				MiscMenuTitle = "Sonstiges Menü"
				SettingsMenuTitle = "Einstellungs Menü"
				AboutTitle = "Über"

			-- Admin Menu
				PlayerInfosTitle = "Spieler Informationen"

				KickPlayerTitle = "Spieler kicken"
				KickYourselfMessage = "Du kannst dich nicht selber kicken"

				BanDurationTitle = "Ban Dauer (Stunden)"
				BanPlayerTitle = "Spieler bannen"
				BanYourselfMessage = "Du kannst dich nicht selber bannen"

				SpectatePlayerTitle = "Spieler zuschauen"
				SpectateYourselfMessage = "Du kannst dir nicht selber zuschauen"
				StopPlayerSpectateTitle = "Zuschauen beenden"
				ChoosePlayerToSpectateTitle = "Spieler zum Zuschauen aussuchen"

				TeleportPlayerToMeTitle = "Spieler zu mir teleportieren"
				TeleportYourselfMessage = "Du kannst dich nciht selber teleportieren"

				MiscellaneousOptionsTitle = "Sonstige Optionen"

				ExtendableMapTitle = "Erweiterbare Karte"
				ExtendableMapEnableMessage = "Erweiterbare Karte für jeden Client aktiviert"
				ExtendableMapDisableMessage = "Erweiterbare Karte für jeden Client deaktiviert"

				BlipsAndNamesTitle = "Blips & Namen"
				BlipsAndNamesEnableMessage = "Blips & Namen für jeden Client aktiviert"
				BlipsAndNamesDisableMessage = "Blips & Namen für jeden Client deaktiviert"

				BlipsAndNamesNonAdminsTitle = "Blips & Namen (Non-Admins)"
				BlipsAndNamesNonAdminsEnableMessage = "Blips & Namen für Nicht-Admins aktiviert"
				BlipsAndNamesNonAdminsDisableMessage = "Blips & Namen für Nicht-Admins deaktiviert"

				PvPTitle = "PvP"
				PvPEnableMessage = "PvP für jeden Client aktiviert"
				PvPDisableMessage = "PvP für jeden Client deaktiviert"

				ScoreboardTitle = "Spielerliste"
				ScoreboardEnableMessage = "Spielerliste für jeden Client aktiviert"
				ScoreboardDisableMessage = "Spielerliste für jeden Client deaktiviert"

				StuntJumpTitle = "Stunt Jumps"
				StuntJumpEnableMessage = "Stunt Jumps für jeden Client aktiviert"
				StuntJumpDisableMessage = "Stunt Jumps für jeden Client deaktiviert"

				VoiceChatTitle = "Sprach Chat"
				VoiceChatEnableMessage = "Sprach Chat für jeden Client aktiviert"
				VoiceChatDisableMessage = "Sprach Chat für jeden Client deaktiviert"

				VoiceChatProximityTitle = "Sprach Chat Reichweite"
				VoiceChatProximityChangeToDefaultMessage = "Sprach Chat Reichweite zu ~y~Gesamte Lobby ~g~für jeden Client geändert"
				VoiceChatProximityChangeMessage = "Sprach Chat Reichweite für jeden Client geändert"

				VoiceChatChannelTitle = "Sprach Chat Kanal"
				VoiceChatChannelChangeToDefaultMessage = "Sprach Chat Kanal zu Standard geändert"

				ShowTalkingPlayerTitle = "Sprechende Spieler anzeigen"
				ShowTalkingPlayerEnableMessage = "Sprechende Spieler anzeigen aktiviert"
				ShowTalkingPlayerDisableMessage = "Sprechende Spieler anzeigen deaktiviert"

				NameTitle = "Name" --NEW
				MenuNameTitle = "Menü Name" --NEW
				IPTitle = "IP" --NEW
				PingTitle = "Ping" --NEW
				SteamIDTitle = "Steam ID" --NEW
				LicenseIDTitle = "Lizenz ID" --NEW
				AdminsDecisionMessage = "Adminentscheidung" --NEW
				KickedMessage = "Gekickt" --NEW
				PlayerKickAbortedMessage = "Spieler Kick Abgebrochen" --NEW
				BannedMessage = "Gebannt" --NEW
				PlayerBanAbortedMessage = "Spieler Ban Abgebrochen" --NEW


			-- Player Menu
				ArmorHealWashTitle = "Panzerung hinzufügen, Heilen & Waschen"
				ArmorHealWashMessage = "Panzerung hinzugefügt, Geheilt & Gewaschen"

				AnimationsTitle = "Animationen"
				SexActsTitle = "S*x Acts"
				StopSexActsTitle = "S*x Act stoppen"
				AnalFuckedTitle = "Anal F*cked"
				AnalFuckerTitle = "Anal F*cker"
				CarBJGetterTitle = "Auto BJ Getter"
				CarBJGiverTitle = "Auto BJ Giver"
				CarSexGetterTitle = "Auto S*x Getter"
				CarSexGiverTitle = "Auto S*x Giver"
				StripsTitle = "Tanz"
				StopStripTitle = "Tanz stoppen"
				PoleDance1Title = "1. Stangentanz"
				PoleDance2Title = "2. Stangentanz"
				PoleDance3Title = "3. Stangentanz"
				LapDanceTitle = "Schoßtanz"
				PrivateDanceTitle = "Privater Tanz"
				SuicideTitle = "Selbstmord"
				StopSuicideTitle = "Selbstmord stoppen"
				PillSuicideTitle = "Pillen Selbstmord"
				PistolSuicideTitle = "Pistolen Selbstmord"

				ChangePedTitle = "Charakter ändern"
				PedNotExistingMessage = "Charakter existiert nicht"
				ChangingByNameAbortedMessage = "Änderung des Charakters anhand des Namen abgebrochen"

				ChangePedByNameTitle = "Änderung des Charakters anhand des Namens"
				AnimalsTitle = "Tiere"
				BoarTitle = "Wildschwein"
				CatTitle = "Katze"
				ChickenhawkTitle = "Rotschwanzbussard"
				ChimpTitle = "Affe"
				ChopTitle = "Chop"
				CormorantTitle = "Kormoran"
				CowTitle = "Kuh"
				CoyoteTitle = "Kojote"
				CrowTitle = "Krähe"
				DeerTitle = "Hirsch"
				DolphinTitle = "Delphin"
				FishTitle = "Fisch"
				HenTitle = "Henne"
				HammerheadSharkTitle = "Hammerhai"
				HumpbackTitle = "Buckelwal"
				HuskyTitle = "Schlittenhund"
				KillerWhaleTitle = "Killerwal"
				MountainLionTitle = "Berglöwe"
				PigTitle = "Schwein"
				PigeonTitle = "Taube"
				PoodleTitle = "Pudel"
				PugTitle = "Mops"
				RabbitTitle = "Hase"
				RatTitle = "Ratte"
				RetrieverTitle = "Retriever"
				RhesusTitle = "Rhesusaffe"
				RottweilerTitle = "Rottweiler"
				SeagullTitle = "Möwe"
				ShepherdTitle = "Schäferhund"
				StingrayTitle = "Stachelrochen"
				TigerSharkTitle = "Tigerhai"
				WestyTitle = "Westie"

				FemalePedsTitle = "Weibliche Charaktere"
				BusinessFemaleTitle = "Geschäftlich"
				CopFemaleTitle = "Polizistin"
				EpsilonFemaleTitle = "Epsilon"
				FattyFemaleTitle = "Fatty"
				GolferFemaleTitle = "Golfer"
				HipsterFemaleTitle = "Hipster"
				Hooker1Title = "Prostituierte 1"
				Hooker2Title = "Prostituierte 2"
				Hooker3Title = "Prostituierte 3"
				MaidTitle = "Dienstmädchen"
				RangerFemaleTitle = "Försterin"
				SheriffFemaleTitle = "Sheriff"
				Stripper1Title = "Stripperin 1"
				Stripper2Title = "Stripperin 2"

				MalePedsTitle = "Männliche Charaktere"
				BusinessMaleTitle = "Geschäftlich"
				CopMaleTitle = "Polizist"
				EpsilonMaleTitle = "Epsilon"
				FattyMaleTitle = "Fatty"
				FiremanTitle = "Feuerwehrmann"
				GolferMaleTitle = "Golfer"
				HighwayCopTitle = "Highway Polizist"
				HipsterMaleTitle = "Hipster"
				PrisonerTitle = "Häftling"
				Marine1Title = "Marinesoldat 1"
				Marine2Title = "Marinesoldat 2"
				Marine3Title = "Marinesoldat 3"
				RangerMaleTitle = "Förster"
				SheriffMaleTitle = "Sheriff"

				PlayerPedsTitle = "Spieler Charaktere"
				
				EveryPedsTitle = "Jeder Charakter"
				
				MPCharacterFemaleTitle = "MP Charakter (Weiblich)"
				MPCharacterMaleTitle = "MP Charakter (Männlich)"
				FranklinTitle = "Franklin"
				MichaelTitle = "Michael"
				TrevorTitle = "Trevor"

				ComponentChangerTitle = "Aussehen ändern"
				SkinTitle = "Aussehen" --NEW
				MotherShapeTitle = "Gesicht - Mutter" --NEW
				MotherSkintoneTitle = "Farbton - Mutter" --NEW
				FatherShapeTitle = "Gesicht - Vater" --NEW
				FatherSkintoneTitle = "Farbton - Vater" --NEW
				ExtraShapeTitle = "Gesicht - Extra" --NEW
				ExtraSkintoneTitle = "Farbton - Extra" --NEW
				ShapeMixTitle = "Gesicht - Mix" --NEW
				SkintoneMixTitle = "Farbton - Mix" --NEW
				ExtraMixTitle = "Extra - Mix" --NEW
				OverlaysTitle = "Unreinheiten" --NEW
				BlemishesTitle = "Makel" --NEW
				FacialHairTitle = "Gesichtsbehaarung" --NEW
				EyebrownsTitle = "Augenbrauen" --NEW
				AgeingTitle = "Hautalterung" --NEW
				MakeupTitle = "Make-up" --NEW
				BlushTitle = "Rötung" --NEW
				ComplexionTitle = "Teint" --NEW
				SunDamageTitle = "Sonnenschäden" --NEW
				LipstickTitle = "Lippenstift" --NEW
				MolesFrecklesTitle = "Pigmentmale / Sommersprossen" --NEW
				ChestHairTitle = "Brustbehaarung" --NEW
				BodyBlemishesTitle = "Körper Makel" --NEW
				AddBodyBlemishesTitle = "Körper Makel hinzufügen" --NEW
				HatsTitle = "Hut" --NEW
				GlassesTitle = "Brille" --NEW
				EarPiecesTitle = "Ohrstücke" --NEW
				WatchesTitle = "Uhr" --NEW
				FaceTitle = "Gesicht" --NEW
				MasksTitle = "Maske" --NEW
				HairTitle = "Haar" --NEW
				ArmsUpperBodyGlovesTitle = "Oberkörper / Handschuhe" --NEW
				LegsTitle = "Beine" --NEW
				ParachutesHeistBagsTitle = "Fallschirm & Heist Tasche" --NEW
				ShoesTitle = "Schuhe" --NEW
				TiesScarfsetcTitle = "Krawatte, Schal, etc." --NEW
				UndershirtsSpecialThingsTitle = "Unterhemd & Spezielles" --NEW
				ArmorTitle = "Panzerung" --NEW
				EmblemesTitle = "Embleme" --NEW
				TopsTitle = "Oberteil" --NEW
				TextureTitle = "Textur" --NEW

				PlayerGodmodeTitle = "Unsterblichkeit"
				PlayerGodmodeEnableMessage = "Unsterblichkeit aktiviert"
				PlayerGodmodeDisableMessage = "Unsterblichkeit deaktiviert"
				InfiniteStaminaTitle = "Unendliche Ausdauer"
				InfiniteStaminaEnableMessage = "Unendliche Ausdauer aktiviert"
				InfiniteStaminaDisableMessage = "Unendliche Ausdauer deaktiviert"

				OutfitsTitle = "Outfits"
				SaveOutfitsTitle = "Outfits speichern"
				LoadOutfitsTitle = "Outfits laden"
				DeleteOutfitsTitle = "Outfits löschen"
				NoOutfitName = "Leer"
				NewOutfitDefaultName = "Neues Outfit"
				OutfitSavingAbortion = "Outfit speicherung abgebrochen"
				OutfitDeletingWord = "löschen"
				OutfitDeletingConfirmation = "Schreibe '" .. OutfitDeletingWord .. "' um dieses Outfit zu löschen"
				OutfitDeletingAbortion = "Outfit löschung abgebrochen"
				OutfitMessage = "Outfit"
				LoadedMessage = "geladen"

				RunSpeedMultiplierTitle = "Renn Multiplikator"

				ScenariosTitle = "Szenarien"
				StopScenariosTitle = "Szenario stoppen"
				MalePedScenariosTitle = "Männliche Peds Szenarien"
				BBQTitle = "BBQ"
				CarParkAttendantTitle = "Parkplatzbegleiter"
				GolfTitle = "Golf"
				MusicianTitle = "Musiker"
				PaparazziTitle = "Paparazzi"
				PushUpsTitle = "Push-Ups"
				SitUpsTitle = "Sit-Ups"
				BinocularsTitle = "Fernglas"
				CheeringTitle = "Jubel"
				DrillTitle = "Drillen"
				DrinkingSomeCovfefeTitle = "Covfefe trinken"
				FilmingTitle = "Filmen"
				FishingTitle = "Fischen"
				HammeringTitle = "Hämmern"
				JanitorTitle = "Hausmeister"
				TouristTitle = "Tourist"
				WeedSmokingTitle = "Weed rauchen"
				WeightliftingTitle = "Gewichtheben"
				WeldingTitle = "Schweißen"
				YogaTitle = "Yoga"

				SuperJumpTitle = "Super Sprung"
				SuperJumpEnableMessage = "Super Sprung aktiviert"
				SuperJumpDisableMessage = "Super Sprung deaktiviert"
				SuicideTitle = "Selbstmord"
				SupermanModeTitle = "Superman Modus"
				SupermanModeEnableMessage = "Superman Modus aktiviert"
				SupermanModeDisableMessage = "Superman Modus deaktiviert"
				SwimSpeedMultiplierTitle = "Schwimm Multiplikator"

				WantedLevelTitle = "Fahndungslevel"
				ClearWantedLevelTitle = "Fahndungslevel entfernen"
				ClearWantedLevelMessage1 = "Nicht notwendig, während das Fahndungslevel deaktiviert ist"
				ClearWantedLevelMessage2 = "Fahndungslevel entfernt"
				DisableWantedLevelTitle = "Fahndungslevel deaktivieren"
				DisableWantedLevelDisableMessage = "Fahndungslevel deaktiviert"
				DisableWantedLevelEnableMessage = "Fahndungslevel aktiviert"
				MaximumWantedLevelTitle = "Maximales Fahndungslevel"
				SetWantedLevelTitle = "Fahndungslevel setzen"
				SetWantedLevelMessage = "Nicht möglich während das Fahndungslevel deaktiviert ist"

				PlayerVisibleTitle = "Sichtbarkeit"
				PlayerVisibleEnableMessage = "Sichtbarkeit aktiviert"
				PlayerVisibleDisableMessage = "Sichtbarkeit deaktiviert"


			-- Vehicle Menu
				SpawnVehicleTitle = "Fahrzeug spawnen"
				DespawnableTitle = "Despawn"
				DespawnableEnableMessage = "Fahrzeug Despawn aktiviert"
				DespawnableDisableMessage = "Fahrzeug Despawn deaktiviert"
				ReplaceTitle = "Ersetzen"
				ReplaceEnableMessage = "Fahrzeug beim spawn ersetzen aktiviert"
				ReplaceDisableMessage = "Fahrzeug beim spawn ersetzen deaktiviert"
				MarkOnMapTitle = "Auf der Karte markieren"
				MarkOnMapEnableMessage = "Auf der Karte markieren aktiviert"
				MarkOnMapDisableMessage = "Auf der Karte markieren deaktiviert"
				SpawnVehicleByNameTitle = "Fahrzeug anhand des Namens spawnen"
				FancyVehiclesTitle = "Ausgefallene Fahrzeuge"
				SpawningByNameAborted = "Fahrzeug anhand des Namens spawnen abgebrochen"
				InvalidModel = "Ungültiges Modell"

				BoostOnHornTitle = "Boost beim Hupen"
				BoostOnHornEnableMessage = "Boost beim Hupen aktiviert"
				BoostOnHornDisableMessage = "Boost beim Hupen deaktiviert"
				BunnyHopTitle = "Bunny Hop"
				BunnyHopEnableMessage = "Bunny Hop aktiviert!~n~ Springe mit der Ped - Renn Taste"
				BunnyHopDisableMessage = "Bunny Hop deaktiviert"
				DeleteTitle = "Löschen"

				DoorsTitle = "Türen"
				DoorTitle = "Tür"
				DoorNameFrontLeft = "Vordere Linke Tür"
				DoorNameFrontRight = "Vordere Rechte Tür"
				DoorNameRearLeft = "Hintere Linke Tür"
				DoorNameRearRight = "Hintere Rechte Tür"
				DoorNameHood = "Motorhaube"
				DoorNameTrunk = "Kofferraum"
				DoorNameBack = "Hinten"
				DoorNameBack2 = "Hinten 2"
				DoorOpenedMessage = "Geöffnet"
				DoorClosedMessage = "Geschlossen"
				DoorOpenCloseTitle = "Öffnen / Schließen"
				DoorOpenAllTitle = "Alle öffnen"
				DoorOpenAllMessage1 = "Alle geöffnet"
				DoorOpenAllMessage2 = "Bereits geöffnet"
				DoorCloseAllTitle = "Alle schließen"
				DoorCloseAllMessage1 = "Alle geschlossen"
				DoorCloseAllMessage2 = "Bereits geschlossen"
				DoorRepairAllTitle = "Alle reparieren"
				DoorRepairAllMessage1 = "Alle repariert"
				DoorRepairAllMessage2 = "Bereits repariert"
				DoorDestroyAllTitle = "Alle zerstören"
				DoorDestroyAllMessage1 = "Alle zerstört"
				DoorDestroyAllMessage2 = "Bereits zerstört"

				DriveOnWaterTitle = "Auf Wasser fahren"
				DriveOnWaterEnableMessage = "Auf Wasser fahren aktiviert"
				DriveOnWaterDisableMessage = "Auf Wasser fahren deaktiviert"
				FixAndCleanTitle = "Reparieren & Reinigen"
				FlipTitle = "Umdrehen"
				FuckUpTitle = "Scheiße bauen"
				FlyingVehicleTitle = "Fliegendes Fahrzeug"
				FlyingVehicleEnableMessage = "Fliegendes Fahrzeug aktiviert"
				FlyingVehicleDisableMessage = "Fliegendes Fahrzeug deaktiviert"
				VehicleGodmodeTitle = "Unzerstörbarkeit"
				VehicleGodmodeEnableMessage = "Unzerstörbarkeit aktiviert"
				VehicleGodmodeDisableMessage = "Unzerstörbarkeit deaktiviert"
				GravityTitle = "Gravitation"
				GravityEnableMessage = "Gravitation aktiviert"
				GravityDisableMessage = "Gravitation deaktiviert"

				SavedVehiclesTitle = "Gespeicherte Fahrzeuge"
				NoSavedVehiclesName = "Leer"
				SaveVehiclesTitle = "Fahrzeug speichern"
				LoadVehiclesTitle = "Fahrzeug laden"
				UnsaveVehiclesTitle = "Vehicles entspeichern"
				VehicleMessage = "Fahrzeug"
				VehicleSavedMessage = "Gespeichert"
				VehicleLoadedMessage = "Geladen"
				VehicleUnsavedMessage = "Entspeichert"
				VehicleSavingAbortion = "Fahrzeug Speicherung abgebrochen"
				VehicleUnsavingAbortion = "Fahrzeug Entspeicherung abgebrochen"
				VehicleUnsaveWord = "entspeichern"
				VehicleUnsaveConfirmation = "Schreibe '" .. VehicleUnsaveWord .. "' um dieses Fahrzeug zu entspeichern"

				SeatbeltTitle = "Sicherheitsgurt"
				SeatbeltEnableMessage = "Sicherheitsgurt aktiviert"
				SeatbeltDisableMessage = "Sicherheitsgurt deaktiviert"

				TuningModifyingTitle = "Tuning / Modifizieren"
				UpgradeTitle = "Verbessern"
				UpgradeTrailerTitle = "Verbessern (Anhänger)"
				DowngradeTitle = "Zurückstufen"
				DowngradeTrailerTitle = "Zurückstufen (Anhänger)"
				EnginePowerMultiplierTitle = "Leistung Multiplikator"
				EngineTorqueMultiplierTitle = "Drehmoment Multiplikator"
				ExtrasTitle = "Extras"
				ExtraTitle = "Extra"
				ExtraToggleTitle = "Schalter"
				ExtraEnableTitle = "aktiviert"
				ExtraDisableTitle = "deaktiviert"
				TrailerExtrasTitle = "Anhänger Extras"
				TrailerExtraTitle = "Extra"
				TrailerExtraToggleTitle = "Schalter"
				TrailerExtraEnableTitle = "aktiviert"
				TrailerExtraDisableTitle = "deaktiviert"
				RainbowVehicleTitle = "Regenbogen Fahrzeug"
				RainbowVehicleTrailerTitle = "Regenbogen Fahrzeug (Anhänger)"

				StockTitle = "Stock"
				NoneTitle = "Keine"
				StreetTitle = "Straßen"
				SportTitle = "Sport"
				RaceTitle = "Renn"
				LoweredTitle = "Gesenkt"
				CompetitionTitle = "Wettkampf"
				ArmorTitle = "Panzerung"
				BrakesTitle = "Bremsen"
				BumperTitle = "Stoßstange"
				FrontBumperTitle = "Stoßstange (Vorne)"
				RearBumperTitle = "Stoßstange (Hinten)"
				ChassisTitle = "Fahrgestell"
				EngineTitle = "Motor"
				EMSModeTitle = "EMS Modus"
				ExhaustTitle = "Auspuff"
				FenderTitle = "Kotflügel"
				FrontFenderTitle = "Kotflügel (Vorne)"
				RearFenderTitle = "Kotflügel (Hinten)"
				GrilleTitle = "Grill"
				HoodTitle = "Haube"
				HornTitle = "Hupe"
				MelodyTitle = "Melodie"
				LoopTitle = "Schleife"
				LightsTitle = "Lichter"
				XenonTitle = "Xenon"
				XenonEnableMessage = "Xenon aktiviert"
				XenonDisableMessage = "Xenon deaktivieren"
				NeonTitle = "Neonleisten"
				ColorTitle = "Farbe"
				CustomColorTitle = "Benutzerdefiniert Farbe"
				RainbowNeonsTitle = "Regenbogen Neons"
				RainbowNeonsEnableMessage = "Regenbogen Neons aktiviert"
				RainbowNeonsDisableMessage = "Regenbogen Neons deaktivieren"
				LeftNeonsTitle = "Linke Neonleiste"
				LeftNeonsEnableMessage = "Linke Neonleiste aktiviert"
				LeftNeonsDisableMessage = "Linke Neonleiste deaktivieren"
				RightNeonsTitle = "Rechte Neonleiste"
				RightNeonsEnableMessage = "Rechte Neonleiste aktiviert"
				RightNeonsDisableMessage = "Rechte Neonleiste deaktivieren"
				FrontNeonsTitle = "Vordere Neonleiste"
				FrontNeonsEnableMessage = "Vordere Neonleiste aktiviert"
				FrontNeonsDisableMessage = "Vordere Neonleiste deaktivieren"
				RearNeonsTitle = "Hintere Neonleiste"
				RearNeonsEnableMessage = "Hintere Neonleiste aktiviert"
				RearNeonsDisableMessage = "Hintere Neonleiste deaktivieren"
				PlateTitle = "Nummernschild"
				SetPlateTextTitle = "Nummernschild Text ändern"
				ResparyTitle = "Lackieren"
				PrimaryColorTitle = "Primäre Farbe"
				SecondaryColorTitle = "Sekundäre Farbe"
				PearlescentTitle = "Perleffekt"
				RimsTitle = "Felgen"
				LiveryTitle = "Beschriftung"
				LiverysTitle = "Beschriftung"
				NoLiverysTitle = "Dein Fahrzeug hat keine Beschriftungen"
				NoLiveryTitly = "Keine Beschriftung"
				RoofTitle = "Dach"
				SideSkirtTitle = "Seitenschweller"
				SpoilerTitle = "Spoiler"
				SuspensionTitle = "Federung"
				TransmissionTitle = "Getriebe"
				TurboTitle = "Turbo"
				TurboEnableMessage = "Turbo aktiviert"
				TurboDisableMessage = "Turbo deaktivieren"
				WheelsTitle = "Reifen"
				WheelAccessoriesTitle = "Reifen Zubehör"
				WheelTypesTitle = "Reifen Typen"
				BulletProofTiresTitle = "Kugelsichere Reifen"
				BulletProofTiresEnableMessage = "Kugelsichere Reifen aktiviert"
				BulletProofTiresDisableMessage = "Kugelsichere Reifen deaktivieren"
				RainbowTireSmokeTitle = "Regenbogen Reifenqualm"
				RainbowTireSmokeEnableMessage = "Regenbogen Reifenqualm aktiviert"
				RainbowTireSmokeDisableMessage = "Regenbogen Reifenqualm deaktivieren"
				NoTireSmokeTitle = "Kein Reifenqualm"
				CustomTireSmokeTitle = "Benutzerdefinierter Reifenqualm"
				WhiteTireSmokeTitle = "Weißer Reifenqualm"
				BlackTireSmokeTitle = "Schwarzer Reifenqualm"
				BlueTireSmokeTitle = "Blauer Reifenqualm"
				YellowTireSmokeTitle = "Gelber Reifenqualm"
				PurpleTireSmokeTitle = "Lila Reifenqualm"
				OrangeTireSmokeTitle = "Oranger Reifenqualm"
				GreenTireSmokeTitle = "Grüner Reifenqualm"
				RedTireSmokeTitle = "Roter Reifenqualm"
				PinkTireSmokeTitle = "Rosa Reifenqualm"
				BrownTireSmokeTitle = "Brauner Reifenqualm"
				HighEndTitle = "Luxus"
				LowriderTitle = "Lowrider"
				MuscleTitle = "Muscle-Car"
				OffroadTitle = "Gelände"
				SportTitle = "Sport"
				SUVTitle = "SUV"
				TunerTitle = "Tuner"
				FrontTitle = "Vorne"
				BackTitle = "Hinten"
				WindowTintTitle = "Fenstertönung"
				WindowTintMessage = "Fenstertönung geändert"
				AirFilterTitle = "Luftfilter"
				ArchCoverTitle = "Radlaufverkleidungen"
				BonnetPinsTitle = "Haubenschlösser"
				CanardsVanityPlatesTitle = "Flossen/Nummernschild"
				DashboardTitle = "Instrumente"
				DialDesignTitle = "Tacho Design"
				DoorsTitle = "Türen"
				EngineBlockTitle = "Motorblock"
				HydraulicsTitle = "Hydraulik"
				OrnamentsTitle = "Verzierung"
				PlaquesTitle = "Schilder"
				PlateHolderTitle = "Nummernschildhalter"
				SeatsTitle = "Sitze"
				ShiftLeverTitle = "Schaltknüppel"
				SpeakersTitle = "Unterhaltungssysteme"
				SteeringWheelTitle = "Lenkräder"
				StrutsTitle = "Strebe"
				TankTitle = "Tank"
				TrimTitle = "Zierrand"
				TrimDesignTitle = "Zierrand Design"
				TrunkTitle = "Kofferraum"
				CustomColorSettingAborted = "Benutzerdefiniert Farbenauswahl abgebrochen"

				ReduceGripTitle = "Reifenriffigkeit verringern"
				ReduceGripEnableMessage = "Reifenriffigkeit verringern deaktiviert"
				ReduceGripDisableMessage = "Reifenriffigkeit verringern aktiviert"
				VehicleVisibleTitle = "Sichtbarkeit"
				VehicleVisibleEnableMessage = "Fahrzeug Sichtbar"
				VehicleVisibleDisableMessage = "Fahrzeug Unsichtbar"
				NotDriverOfAVehicleMessage = "Du bist nicht der Fahrer eines Fahrzeuges"


			-- Teleport Menu
				TeleportToWaypointTitle = "Zum Wegpunkt teleportieren"
				TeleportedToWaypointMessage = "Zum Wegpunkt teleportiert"
				NoWaypointMessage = "Kein Wegpunkt gesetzt"
				TeleportIntoNearestVehicleTitle = "Ins nächste Fahrzeug teleportieren"
				TeleportedIntoNearestVehicleMessage = "Ins nächste Fahrzeug teleportiert"
				NoVehicleFoundMessage = "Kein Fahrzeug gefunden"
				TeleportEntityRelativeTitle = "Objektrelativ teleportieren"
				TeleportForwardTitle = "Vorwärts teleportieren"
				TeleportedForwardMessage = "Vorwärts teleportiert"
				TeleportBackwardTitle = "Rückwärts teleportieren"
				TeleportedBackwardMessage = "Rückwärts teleportiert"
				TeleportToTheLeftTitle = "Nach Links teleportieren"
				TeleportedToTheLeftMessage = "Nach Links teleportiert"
				TeleportToTheRightTitle = "Nach Rechts teleportieren"
				TeleportedToTheRightMessage = "Nach Rechts teleportiert"
				TeleportToOnlinePlayerTitle = "Zu Spielern teleportieren"
				CantTeleportToYourselfMessage = "Du kannst dich nicht zu dir selbst teleportieren"
				InteriorLocationsTitle = "Standorte Innen"
				ExteriorLocationsTitle = "Standorte im Freien"
				CustomLocationTitle = "Benutzerdefiniert"
				SetCoordsTitle = "Koord. setzen"
				TeleportToCoordsTitle = "Zu Koord. teleportieren"
				NoSpacesMessage = "Keine Abstände"
				CoordsSetMessage = "Koord. gesetzt"
				CoordsSettingAbortedMessage = "Koord. Setzung abgebrochen"


			-- Weapon Menu
				GiveAllWeaponsTitle = "Alle Waffen geben"
				AllWeaponsGivenMessage = "Alle Waffen gegeben"
				RemoveAllWeaponsTitle = "Alle Waffen entfernen"
				AllWeaponsRemovedMessage = "Alle Waffen entfernt"
				DeleteGunTitle = "Lösch - Waffe"
				DeleteGunEnableMessage = "Lösch - Waffe aktiviert!~n~~w~Nutze die ~b~Pistole!~n~~b~Ziele ~w~und ~b~Schieße ~w~um zu löschen"
				DeleteGunDisableMessage = "Lösch - Waffe deaktiviert"
				DeletedMessage = "Gelöscht"
				ExplosiveBulletTitle = "Explosive Kugeln"
				ExplosiveBulletEnableMessage = "Explosive Kugeln aktiviert"
				ExplosiveBulletDisableMessage = "Explosive Kugeln deaktiviert"
				ExplosionTypeTitle = "Explosions Typ"
				FireAmmoTitle = "Feuer Munition"
				FireAmmoEnableMessage = "Feuer Munition aktiviert"
				FireAmmoDisableMessage = "Feuer Munition deaktiviert"
				InfiniteAmmoNoReloadTitle = "Unendliche Munition"
				InfiniteAmmoNoReloadEnableMessage = "Unendliche Munition & Kein Nachladen aktiviert"
				InfiniteAmmoNoReloadDisableMessage = "Unendliche Munition & Kein Nachladen deaktiviert"
				OneShotKillTitle = "Ein Schuss Kill"
				OneShotKillEnableMessage = "Ein Schuss Kill aktiviert"
				OneShotKillDisableMessage = "Ein Schuss Kill deaktiviert"
				TeleportGunTitle = "Teleportations Waffe"
				TeleportGunEnableMessage = "Teleportations Waffe aktiviert!~n~~w~Nutze das ~b~Schwere Scharfschützengewehr!~n~~b~Ziele ~w~und ~b~Schieße ~w~um zu teleportieren"
				TeleportGunDisableMessage = "Teleportations Waffe deaktiviert"
				VehicleGunTitle = "Fahrzeug Waffe"
				VehicleGunEnableMessage = "Fahrzeug Waffe aktiviert!~n~~w~Nutze die ~b~AP Pistole~n~~b~Ziele ~w~und ~b~Schieße"
				VehicleGunDisableMessage = "Fahrzeug Waffe deaktiviert"
				VehicleWeaponsTitle = "Fahrzeug Waffen"
				VehicleWeaponsEnableMessage = "Fahrzeug Waffen aktiviert!~n~~s~Einfach zielen um zu schießen"
				VehicleWeaponsDisableMessage = "Fahrzeug Waffen deaktiviert"
				AmmoTypeTitle = "Munitions Typ"
				WhaleGunTitle = "Wal Waffe"
				WhaleGunEnableMessage = "Wal Waffe aktiviert!~n~~w~Nutze den ~b~Elektroschocker~n~~b~Ziele ~w~und ~b~Schieße"
				WhaleGunDisableMessage = "Wal Waffe deaktiviert"


			-- World Menu
				BlackoutTitle = "Stromausfall"
				BlackoutEnableMessage = "Stromausfall aktiviert"
				BlackoutDisableMessage = "Stromausfall deaktiviert"
				ExplodeNearestVehicleTitle = "Nächstes Fahrzeug explodieren"
				ExplodeNearestVehicleEnableMessage = "Nächstes Fahrzeug explodieren aktiviert"
				ExplodeNearestVehicleDisableMessage = "Nächstes Fahrzeug explodieren deaktiviert"
				JumpModeTitle = "Jump Modus"
				JumpModeEnableMessage = "Jump Modus aktiviert"
				JumpModeDisableMessage = "Jump Modus deaktiviert"
				NoNPCsTrafficTitle = "Keine NPCs & Verkehr"
				NPCsTrafficEnableMessage = "NPCs & Verkehr aktiviert"
				NPCsTrafficDisableMessage = "NPCs & Verkehr deaktiviert"
				TimeMenuTitle = "Zeit Menü"
				FreezeTimeTitle = "Zeit stoppen"
				FreezeTimeEnableMessage = "Zeit gestoppt"
				FreezeTimeDisableMessage = "Zeit gestartet"
				HourTitle = "Stunde"
				MinuteTitle = "Minute"
				MorningTitle = "Morgen"
				MiddayTitle = "Mittag"
				EveningTitle = "Abend"
				MidnightTitle = "Nacht"
				WeatherMenuTitle = "Wetter Menü"
				WeatherTitle = "Wetter"


			-- Misc Menu
				AlwaysParachuteTitle = "Immer Fallschirm"
				AlwaysParachuteEnableMessage = "Immer Fallschirm aktiviert"
				AlwaysParachuteDisableMessage = "Immer Fallschirm deaktiviert"
				BodyguardMenuTitle = "Bodyguard Menü"
				SpawnBodyguardTitle = "Bodyguard spawnen"
				BodyguardSpawnedMessage = "Bodyguard gespawnt"
				Maximum7BodyguardsMessage = "Maximal 7 Bodyguards"
				DeleteAllBodyguardsTitle = "Alle Bodyguards löschen"
				AllBodyguardsDeletedMessage = "Alle Bodyguards gelöscht"
				SelectedBodyguardTitle = "Ausgewählter Bodyguard"
				DeleteBodyguardTitle = "Bodyguard löschen"
				DeletedSelectedBodyguardMessage = "Ausgewählten Bodyguard gelöscht"
				SelectedBodyguardNotExistingMessage = "Ausgewählter Bodyguard existiert nicht"
				NoFormationTitle = "Keine Formation"
				CircleAroundLeader1Title = "Kreis um den Leader 1"
				CircleAroundLeader2Title = "Kreis um den Leader 2"
				LineLeaderAtCenterTitle = "Linie"
				CoordsOverMapTitle = "Koords. über der Karte"
				CoordsOverMapEnableMessage = "Koords. über der Karte aktiviert"
				CoordsOverMapDisableMessage = "Koords. über der Karte deaktiviert"
				DisableCinematicCamButtonTitle = "Cinematic Kamera deaktivieren"
				DisableCinematicCamButtonEnableMessage = "Cinematic Kamera aktiviert"
				DisableCinematicCamButtonDisableMessage = "Cinematic Kamera deaktiviert"
				DrawFPSTitle = "FPS anzeigen"
				DrawFPSEnableMessage = "FPS anzeigen aktiviert"
				DrawFPSDisableMessage = "FPS anzeigen deaktiviert"
				FPSCountFailed = "FPS Zählen fehlgeschlagen"
				HeatvisionTitle = "Wärmebild"
				HeatvisionEnableMessage = "Wärmebild aktiviert"
				HeatvisionDisableMessage = "Wärmebild deaktiviert"
				HideHUDRadarTitle = "HUD & Radar verbergen"
				HideHUDRadarEnableMessage = "HUD & Radar verborgen"
				HideHUDRadarDisableMessage = "HUD & Radar sichtbar"
				HideOnlyRadarTitle = "Radar verbergen"
				HideOnlyRadarEnableMessage = "Radar verborgen"
				HideOnlyRadarDisableMessage = "Radar sichtbar"
				NightvisionTitle = "Nachtsicht"
				NightvisionEnableMessage = "Nachtsicht aktiviert"
				NightvisionDisableMessage = "Nachtsicht deaktiviert"
				NoClipModeTitle = "No-Clip Modus"
				NoClipModeEnableMessage = "No-Clip Modus aktiviert"
				NoClipModeDisableMessage = "No-Clip Modus deaktiviert"
				RadioMenuTitle = "Radio Menü"
				MobileRadioTitle = "Mobiles Radio"
				MobileRadioEnableMessage = "Mobiles Radio aktiviert"
				MobileRadioDisableMessage = "Mobiles Radio deaktiviert"
				SkipCurrentSongTitle = "Aktuellen Song überspringen"
				SenderToFreezeTitle = "Sender zum gefrieren"
				RadiostationUnfrozenMessage = "Radiosender ungefroren"
				RadiostationFrozenMessage = "Radiosender gefroren"
				SpeedometerTitle = "Tachometer"
				SimpleSpeedometerTitle = "Simpler Tachometer"
				SimpleSpeedometerEnableMessage = "Simpler Tachometer aktiviert"
				SimpleSpeedometerDisableMessage = "Simpler Tachometer deaktiviert"
				UnitTitle = "Einheit"
				JoinedMessage = "ist beigetreten"
				LeftMessage = "hat verlassen"


			-- Settings Menu
				RestoreAppearanceBySpawnTitle = "Aussehen wiederherstellen"
				SelectOutfitTitle = "Outfit aussuchen"
				KeepWeaponsTitle = "Waffen behalten"
				MenuPositionHorizontalTitle = "Menü Position - Horizontal"
				AccountMenuTitle = "Account Menü" --NEW
				ChangeUsernameTitle = "Namen ändern" --NEW
				ChangePasswordTitle = "Passwort ändern" --NEW
				LogOutTitle = "Ausloggen" --NEW
				LanguageTitle = "Sprache" --NEW


			-- Register / Login Menu
				LoginMenuTitle = "Anmelden" --NEW
				RegisterMenuTitle = "Registrieren" --NEW
				UsernameTitle = "Name" --NEW
				PasswordTitle = "Passwort" --NEW
				LoginRegisterErrorMessage = "Fülle jedes Feld aus" --NEW
				RegisterSuccessMessage = "Erfolgreich registriert" --NEW
				RegisterFailMessage = "Name bereits vergeben" --NEW
				LoginSuccessMessage = "Erfolgreich angemeldet" --NEW
				LoginFailMessage = "Name oder Password fehlerhaft" --NEW
				PasswordTooShortMessage = "Password zu kurz! Mindestens SECHS Zeichen" --NEW
				NameInvalidMessage = "Name ungültig! Mindestens DREI Zeichen und keine Sonderzeichen" --NEW
				ChangeUsernameSuccessMessage = "Name erfolgreich geändert" --NEW
				ChangeUsernameFailMessage = "Namens Änderung fehlgeschlagen" --NEW
				ChangePasswordSuccessMessage = "Passwort erfolgreich geändert" --NEW
				SecurityQuestion1 = "Was war dein Spitzname als Kind?" --NEW
				SecurityQuestion2 = "Wer war dein Held als Kind?" --NEW
				SecurityQuestion3 = "Wo warst du Neujahr 2000?" --NEW
				SecurityQuestion4 = "Wo wurdest du geboren?" --NEW
				SecurityQuestionAnswerTitle = "Antwort" --NEW
				ResetPasswordTitle = "Password zurücksetzen" --NEW
				ResetPasswordErrorMessage = "Bitte einen Namen eingeben" --NEW
				SecurityQuestionAnswerWrongMessage = "Sicherheitsfragen Antwort ist falsch" --NEW


			-- About Menu
				VersionTitle = "Version"
				MenuBaseTitle = "Menü Basis"
				FoundAnyBugTitle = "Fehler gefunden"
				ContactMeTitle = "Kontaktiere mich"
				TranslationTitle = "Übersetzung"


			-- KeyboardMessages
				KickReasonKeyboardMessage = "Kick Grund" --NEW
				BanReasonKeyboardMessage = "Ban Grund" --NEW
				OutfitNameKeyboardMessage = "Outfit Name" --NEW
				PedModelKeyboardMessage = "Ped Modell" --NEW
				CoordsKeyboardMessage = "Koordinaten" --NEW
				VehicleNameKeyboardMessage = "Fahrzeug Name" --NEW
				VehicleModelKeyboardMessage = "Fahrzeug Modell" --NEW
				ColorValuesKeyboardMessage = "Farbwerte" --NEW
				PlateTextKeyboardMessage = "Nummernschildtext" --NEW
				ChangeUsernameKeyboardMessage = "Neuer Name" --NEW
				ChangePasswordKeyboardMessage = "Neues Passwort" --NEW
				SecurityQuestionAnswerKeyboardMessage = "Sicherheitsfrage - Antwort" --NEW
				
			-- Language Credits
				LanguageCredits = "FlatracerMOD"
				LanguageCreditsLink = "forum.fivem.net/u/Flatracer"
		end
		if SelectedLanguage == 3 then --Norwegian
			-- Welcome Message
				WelcomeMessage = "Velkommen til CHEM!CAL T0Ж!N"

			-- Page Indicator
				PageIndicator = "Side"

			-- Not Existing
				NotExisting = "Eksister Ikke"

			-- Main Menu
				AdminMenuTitle = "Administrator"
				PlayerMenuTitle = "Karakter"
				VehicleMenuTitle = "Kjøretøy"
				TeleportMenuTitle = "Teleportmeny"
				WeaponMenuTitle = "Våpen"
				WorldMenuTitle = "Verden"
				MiscMenuTitle = "Annet"
				SettingsMenuTitle = "Innstillinger"
				AboutTitle = "Om"

			-- Admin Menu
				PlayerInfosTitle = "Spillerinfo"

				KickPlayerTitle = "Utkast"
				KickYourselfMessage = "Du kan ikke kaste ut deg selv"

				BanDurationTitle = "Utestengelse varighet (timer)"
				BanPlayerTitle = "Utestengelse"
				BanYourselfMessage = "Du kan ikke stenge deg selv ute"

				SpectatePlayerTitle = "Observer Spiller"
				SpectateYourselfMessage = "Du kan ikke observere deg selv"
				StopPlayerSpectateTitle = "Stopp Observering"
				ChoosePlayerToSpectateTitle = "Velg en spiller å observere"

				TeleportPlayerToMeTitle = "Teleporter Spiller Til Meg"
				TeleportYourselfMessage = "Du kan ikke teleportere deg selv"

				MiscellaneousOptionsTitle = "Annet"

				ExtendableMapTitle = "Utvidbart Kart"
				ExtendableMapEnableMessage = "Utvided Kart Aktivert For Alle Spillere"
				ExtendableMapDisableMessage = "Utvided Kart Deaktivert For Alle Spillere"

				BlipsAndNamesTitle = "Symboler og Titler"
				BlipsAndNamesEnableMessage = "Symboler og Titler Aktivert For Alle Spillere"
				BlipsAndNamesDisableMessage = "Symboler og Titler Deaktivert For Alle Spillere"

				BlipsAndNamesNonAdminsTitle = "Symboler og Titler (Ikke-Administative)"
				BlipsAndNamesNonAdminsEnableMessage = "Symboler og Titler Aktivert For Alle Ikke-Administative Spillere"
				BlipsAndNamesNonAdminsDisableMessage = "Symboler og Titler Deaktivert For Alle Ikke-Administative Spillere"

				PvPTitle = "PvP"
				PvPEnableMessage = "PvP Aktivert For Alle Spillere"
				PvPDisableMessage = "PvP Deaktivert For Alle Spillere"

				ScoreboardTitle = "Resultattavle"
				ScoreboardEnableMessage = "Resultattavle Aktivert For Alle Spillere"
				ScoreboardDisableMessage = "Resultattavle Deaktivert For Alle Spillere"

				StuntJumpTitle = "Stunt Hopp"
				StuntJumpEnableMessage = "Stunt Hopp Aktivert For Alle Spillere"
				StuntJumpDisableMessage = "Stunt Hopp Deaktivert For Alle Spillere"

				VoiceChatTitle = "Voice Chat"
				VoiceChatEnableMessage = "Voice Chat Aktivert For Alle Spillere"
				VoiceChatDisableMessage = "Voice Chat Deaktivert For Alle Spillere"

				VoiceChatProximityTitle = "Voice Chat Proximity"
				VoiceChatProximityChangeToDefaultMessage = "Satt Voice Chat Proximity Til ~y~Hele Lobbyen ~g~For Alle Spillere"
				VoiceChatProximityChangeMessage = "Satt Voice Chat Proximity For Alle Spillere"

				VoiceChatChannelTitle = "Voice Chat Kanaler"
				VoiceChatChannelChangeToDefaultMessage = "Satt Voice Chat Kanal Til Standard"

				ShowTalkingPlayerTitle = "Vis snakkespiller"
				ShowTalkingPlayerEnableMessage = "Vis snakkespiller Aktivert"
				ShowTalkingPlayerDisableMessage = "Vis snakkespiller Deaktivert"

				NameTitle = "Navn" --NEW
				MenuNameTitle = "Menynavn" --NEW
				IPTitle = "IP" --NEW
				PingTitle = "Ping" --NEW
				SteamIDTitle = "Steam ID" --NEW
				LicenseIDTitle = "Lisens ID" --NEW
				AdminsDecisionMessage = "Administratormelding" --NEW
				KickedMessage = "Kastet Ut" --NEW
				PlayerKickAbortedMessage = "Utkasting Avbrutt" --NEW
				BannedMessage = "Utestengt" --NEW
				PlayerBanAbortedMessage = "Utestengelse Avbrutt" --NEW


			-- Player Menu
				ArmorHealWashTitle = "Gi Full Helse, Vest & Rens Karakteren"
				ArmorHealWashMessage = "Gav Full Helse, Vest & Renset Karakteren"

				AnimationsTitle = "Animasjoner"
				SexActsTitle = "Seksuell Handling"
				StopSexActsTitle = "Stopp Seksuell Handling"
				AnalFuckedTitle = "Tatt Bakfra"
				AnalFuckerTitle = "Ta Bakfra"
				CarBJGetterTitle = "Blir Sugd I Bilen"
				CarBJGiverTitle = "Suger I Bilen"
				CarSexGetterTitle = "Får Sex I Bilen"
				CarSexGiverTitle = "Gir Sex I Bilen"
				StripsTitle = "Stripper"
				StopStripTitle = "Stopp Strippingen"
				PoleDance1Title = "1. Stangdans"
				PoleDance2Title = "2. Stangdans"
				PoleDance3Title = "3. Stangdans"
				LapDanceTitle = "Lap Dance"
				PrivateDanceTitle = "Privat Dans"
				SuicideTitle = "Selvmord"
				StopSuicideTitle = "Stopp Selvmord"
				PillSuicideTitle = "Pille Selvmord"
				PistolSuicideTitle = "Pistol Selvmord"

				ChangePedTitle = "Endre Karakter"
				PedNotExistingMessage = "Karakter Eksisterer Ikke"
				ChangingByNameAbortedMessage = "Endring Via Navn Avbrutt"

				ChangePedByNameTitle = "Endre Karakter Via Navn"
				AnimalsTitle = "Dyr"
				BoarTitle = "Villsvin"
				CatTitle = "Katt"
				ChickenhawkTitle = "Hauk"
				ChimpTitle = "Sjimpanse"
				ChopTitle = "Chop"
				CormorantTitle = "Cormorant"
				CowTitle = "Ku"
				CoyoteTitle = "Prærieulv"
				CrowTitle = "Kråke"
				DeerTitle = "Hjort"
				DolphinTitle = "Delfin"
				FishTitle = "Fisk"
				HenTitle = "Høne"
				HammerheadSharkTitle = "Hammerhodehai"
				HumpbackTitle = "Humpback"
				HuskyTitle = "Husky"
				KillerWhaleTitle = "Spekkhogger"
				MountainLionTitle = "Puma"
				PigTitle = "Gris"
				PigeonTitle = "Due"
				PoodleTitle = "Puddel"
				PugTitle = "Pug"
				RabbitTitle = "Kanin"
				RatTitle = "Rotte"
				RetrieverTitle = "Retriever"
				RhesusTitle = "Rhesus"
				RottweilerTitle = "Rottweiler"
				SeagullTitle = "Måke"
				ShepherdTitle = "Shepherd"
				StingrayTitle = "Piggrokke"
				TigerSharkTitle = "Tigerhai"
				WestyTitle = "Westy"

				FemalePedsTitle = "Kvinnelige Karakterer"
				BusinessFemaleTitle = "Business"
				CopFemaleTitle = "Politi"
				EpsilonFemaleTitle = "Epsilon"
				FattyFemaleTitle = "Fatty"
				GolferFemaleTitle = "Golfer"
				HipsterFemaleTitle = "Hipster"
				Hooker1Title = "Hooker 1"
				Hooker2Title = "Hooker 2"
				Hooker3Title = "Hooker 3"
				MaidTitle = "Maid"
				RangerFemaleTitle = "Ranger"
				SheriffFemaleTitle = "Sheriff"
				Stripper1Title = "Stripper 1"
				Stripper2Title = "Stripper 2"

				MalePedsTitle = "Mannlige Karakterer"
				BusinessMaleTitle = "Business"
				CopMaleTitle = "Politi"
				EpsilonMaleTitle = "Epsilon"
				FattyMaleTitle = "Fatty"
				FiremanTitle = "Fireman"
				GolferMaleTitle = "Golfer"
				HighwayCopTitle = "Highway Cop"
				HipsterMaleTitle = "Hipster"
				PrisonerTitle = "Prisoner"
				Marine1Title = "Marine 1"
				Marine2Title = "Marine 2"
				Marine3Title = "Marine 3"
				RangerMaleTitle = "Ranger"
				SheriffMaleTitle = "Sheriff"

				PlayerPedsTitle = "Standard Karakterer"
				MPCharacterFemaleTitle = "MP Character (Female)"
				MPCharacterMaleTitle = "MP Character (Male)"
				FranklinTitle = "Franklin"
				MichaelTitle = "Michael"
				TrevorTitle = "Trevor"
				
				EveryPedsTitle = "Hver Karakterer"

				ComponentChangerTitle = "Komponenter"
				SkinTitle = "Utseende" --NEW
				MotherShapeTitle = "Mother Shape" --NEW
				MotherSkintoneTitle = "Mother Skintone" --NEW
				FatherShapeTitle = "Father Shape" --NEW
				FatherSkintoneTitle = "Father Skintone" --NEW
				ExtraShapeTitle = "Extra Shape" --NEW
				ExtraSkintoneTitle = "Extra Skintone" --NEW
				ShapeMixTitle = "Shape Mix" --NEW
				SkintoneMixTitle = "Skintone Mix" --NEW
				ExtraMixTitle = "Extra Mix" --NEW
				OverlaysTitle = "Overlays" --NEW
				BlemishesTitle = "Blemishes" --NEW
				FacialHairTitle = "Facial Hair" --NEW
				EyebrownsTitle = "Eyebrowns" --NEW
				AgeingTitle = "Ageing" --NEW
				MakeupTitle = "Makeup" --NEW
				BlushTitle = "Blush" --NEW
				ComplexionTitle = "Complexion" --NEW
				SunDamageTitle = "Sun Damage" --NEW
				LipstickTitle = "Lipstick" --NEW
				MolesFrecklesTitle = "Moles / Freckles" --NEW
				ChestHairTitle = "Chest Hair" --NEW
				BodyBlemishesTitle = "Body Blemishes" --NEW
				AddBodyBlemishesTitle = "Add Body Blemishes" --NEW
				HatsTitle = "Hatt" --NEW
				GlassesTitle = "Briller" --NEW
				EarPiecesTitle = "Ørestykke" --NEW
				WatchesTitle = "Klokke" --NEW
				FaceTitle = "Ansikt" --NEW
				MasksTitle = "Maske" --NEW
				HairTitle = "Hår" --NEW
				ArmsUpperBodyGlovesTitle = "Upper Body / Gloves" --NEW
				LegsTitle = "Ben" --NEW
				ParachutesHeistBagsTitle = "Parachute & Heist Bag" --NEW
				ShoesTitle = "Sko" --NEW
				TiesScarfsetcTitle = "Tie, Scarf, etc." --NEW
				UndershirtsSpecialThingsTitle = "Undershirt & Special Things" --NEW
				ArmorTitle = "Rustning" --NEW
				EmblemesTitle = "Embleme" --NEW
				TopsTitle = "Topper" --NEW
				TextureTitle = "Tekstur" --NEW

				PlayerGodmodeTitle = "Gudmodus"
				PlayerGodmodeEnableMessage = "Gudmodus På"
				PlayerGodmodeDisableMessage = "Gudmodus Av"
				InfiniteStaminaTitle = "Ubegrenset Stamina"
				InfiniteStaminaEnableMessage = "Ubegrenset Stamina På"
				InfiniteStaminaDisableMessage = "Ubegrenset Stamina Av"

				OutfitsTitle = "Utseende"
				SaveOutfitsTitle = "Lagre Utseende"
				LoadOutfitsTitle = "Last inn Utseende"
				DeleteOutfitsTitle = "Slett Utseende"
				NoOutfitName = "Tom"
				NewOutfitDefaultName = "Nytt Utseende"
				OutfitSavingAbortion = "Lagring Avbrutt"
				OutfitDeletingWord = "slett"
				OutfitDeletingConfirmation = "Skriv '" .. OutfitDeletingWord .. "' for å slette utseende"
				OutfitDeletingAbortion = "Sletting Avbrutt"
				OutfitMessage = "Utseende"
				LoadedMessage = "Lastet"

				RunSpeedMultiplierTitle = "Løpehastighet"

				ScenariosTitle = "Scener"
				StopScenariosTitle = "Stopp Scener"
				MalePedScenariosTitle = "Scener for Mannlig Karakter"
				BBQTitle = "BBQ"
				CarParkAttendantTitle = "Car Park Attendant"
				GolfTitle = "Golf"
				MusicianTitle = "Musician"
				PaparazziTitle = "Paparazzi"
				PushUpsTitle = "Push-Ups"
				SitUpsTitle = "Sit-Ups"
				BinocularsTitle = "Binoculars"
				CheeringTitle = "Cheering"
				DrillTitle = "Drill"
				DrinkingSomeCovfefeTitle = "Drinking Some Covfefe"
				FilmingTitle = "Filming"
				FishingTitle = "Fishing"
				HammeringTitle = "Hammering"
				JanitorTitle = "Janitor"
				TouristTitle = "Tourist"
				WeedSmokingTitle = "Weed Smoking"
				WeightliftingTitle = "Weightlifting"
				WeldingTitle = "Welding"
				YogaTitle = "Yoga"

				SuperJumpTitle = "Superhopp"
				SuperJumpEnableMessage = "Superhopp På"
				SuperJumpDisableMessage = "Superhopp Av"
				SuicideTitle = "Selvmord"
				SupermanModeTitle = "Supermann Modus"
				SupermanModeEnableMessage = "Supermann Modus På"
				SupermanModeDisableMessage = "Supermann Modus Av"
				SwimSpeedMultiplierTitle = "Svømmehastighet"

				WantedLevelTitle = "Ettersøkningsnivå"
				ClearWantedLevelTitle = "Fjern Ettersøkningsnivå"
				ClearWantedLevelMessage1 = "Trengs Ikke Når Ettersøkningsnivå Er Av"
				ClearWantedLevelMessage2 = "Wanted Level Cleared"
				DisableWantedLevelTitle = "Skru Av Ettersøkningsnivå"
				DisableWantedLevelDisableMessage = "Ettersøkningsnivå Av"
				DisableWantedLevelEnableMessage = "Ettersøkningsnivå På"
				MaximumWantedLevelTitle = "Maks Ettersøkningsnivå"
				SetWantedLevelTitle = "Sett Ettersøkningsnivå"
				SetWantedLevelMessage = "Ikke Mulig Mens Ettersøkningsnivå Er Av"

				PlayerVisibleTitle = "Synlighet"
				PlayerVisibleEnableMessage = "Synlig"
				PlayerVisibleDisableMessage = "Usynlig"


			-- Vehicle Menu
				SpawnVehicleTitle = "Opprett Kjøretøy"
				DespawnableTitle = "Forduftbar"
				DespawnableEnableMessage = "Forduftbarhet På"
				DespawnableDisableMessage = "Forduftbarhet Av"
				ReplaceTitle = "Erstatt"
				ReplaceEnableMessage = "Erstatter Kjøretøy Når Nytt Opprettes"
				ReplaceDisableMessage = "Erstatter Ikke Kjøretøy Når Nytt Opprettes"
				MarkOnMapTitle = "Kartmarkering"
				MarkOnMapEnableMessage = "Kartmarkering På"
				MarkOnMapDisableMessage = "Kartmarkering Av"
				SpawnVehicleByNameTitle = "Opprett Kjøretøy Via Navn"
				FancyVehiclesTitle = "Stilige Kjøretøy"
				SpawningByNameAborted = "Opprettelse Via Navn Avbrutt"
				InvalidModel = "Ugyldig Modellnavn"

				BoostOnHornTitle = "Hastighetsøksning På Horn"
				BoostOnHornEnableMessage = "Hastighetsøksning På Horn På"
				BoostOnHornDisableMessage = "Hastighetsøksning På Horn Av"
				BunnyHopTitle = "Kaninsprett"
				BunnyHopEnableMessage = "Kaninsprett På!~n~ Hopp Med Løpeknappen!"
				BunnyHopDisableMessage = "Kaninsprett Av"
				DeleteTitle = "Slett"

				DoorsTitle = "Dører"
				DoorTitle = "Dør"
				DoorNameFrontLeft = "Venstre Fordør"
				DoorNameFrontRight = "Høyre Fordør"
				DoorNameRearLeft = "Venste Bakdør"
				DoorNameRearRight = "Høyre Bakdør"
				DoorNameHood = "Panser"
				DoorNameTrunk = "Bakluke"
				DoorNameBack = "Bakdør"
				DoorNameBack2 = "Bakdør 2"
				DoorOpenedMessage = "Åpen"
				DoorClosedMessage = "Lukket"
				DoorOpenCloseTitle = "Åpne / Lukke"
				DoorOpenAllTitle = "Åpne Alle"
				DoorOpenAllMessage1 = "Åpnet Dører"
				DoorOpenAllMessage2 = "Dører Allerede Åpne"
				DoorCloseAllTitle = "Lukk Alle"
				DoorCloseAllMessage1 = "Lukket Dører"
				DoorCloseAllMessage2 = "Dører Allerede Lukket"
				DoorRepairAllTitle = "Reparer Alle"
				DoorRepairAllMessage1 = "Reparert Dører"
				DoorRepairAllMessage2 = "Dører Allerede Reparert"
				DoorDestroyAllTitle = "Ødelegg Alle"
				DoorDestroyAllMessage1 = "Ødela Dører"
				DoorDestroyAllMessage2 = "Dører Allerede Ødelagt"

				DriveOnWaterTitle = "Kjøring På Vann"
				DriveOnWaterEnableMessage = "Kjøring På Vann På"
				DriveOnWaterDisableMessage = "Kjøring På Vann Av"
				FixAndCleanTitle = "Reparer Og Rens"
				FlipTitle = "Snu"
				FuckUpTitle = "Herp"
				FlyingVehicleTitle = "Flyvende Kjøretøy"
				FlyingVehicleEnableMessage = "Flyvende Kjøretøy På"
				FlyingVehicleDisableMessage = "Flyvende Kjøretøy Av"
				VehicleGodmodeTitle = "Gudmodus"
				VehicleGodmodeEnableMessage = "Gudmodus På"
				VehicleGodmodeDisableMessage = "Gudmodus Av"
				GravityTitle = "Gravitet"
				GravityEnableMessage = "Gravitet På"
				GravityDisableMessage = "Gravitet Av"

				SavedVehiclesTitle = "Lagrede Kjøretøy"
				NoSavedVehiclesName = "Tomt"
				SaveVehiclesTitle = "Lagre Kjøretøy"
				LoadVehiclesTitle = "Last Inn Kjøretøy"
				UnsaveVehiclesTitle = "Fjern Kjøretøy"
				VehicleMessage = "Kjøretøy"
				VehicleSavedMessage = "Lagret"
				VehicleLoadedMessage = "Lastet Inn"
				VehicleUnsavedMessage = "Fjern"
				VehicleSavingAbortion = "Kjøretøylagring Avbrutt"
				VehicleUnsavingAbortion = "Kjøretøyfjerning Avbrutt"
				VehicleUnsaveWord = "fjern"
				VehicleUnsaveConfirmation = "Skriv '" .. VehicleUnsaveWord .. "' for å fjerne kjøretøyet"

				SeatbeltTitle = "Setebelte"
				SeatbeltEnableMessage = "Setebelte På"
				SeatbeltDisableMessage = "Setebelte Av"

				TuningModifyingTitle = "Modifikasjoner"
				UpgradeTitle = "Oppgrader"
				UpgradeTrailerTitle = "Oppgrader (Trailer)"
				DowngradeTitle = "Nedgrader"
				DowngradeTrailerTitle = "Nedgrader (Trailer)"
				EnginePowerMultiplierTitle = "Kraftmultiplikator"
				EngineTorqueMultiplierTitle = "Momentmultiplikator"
				ExtrasTitle = "Ektraer"
				ExtraTitle = "Ekstra"
				ExtraToggleTitle = "Veksle"
				ExtraEnabledTitle = "På"
				ExtraDisabledTitle = "Av"
				TrailerExtrasTitle = "Trailer Ekstra"
				TrailerExtraTitle = "Ekstra"
				TrailerExtraToggleTitle = "Veksle"
				TrailerExtraEnabledTitle = "På"
				TrailerExtraDisabledTitle = "Av"
				RainbowVehicleTitle = "Regnbue"
				RainbowVehicleTrailerTitle = "Regnbue (Trailer)"

				StockTitle = "Standard"
				NoneTitle = "Ingen"
				StreetTitle = "Gate"
				SportTitle = "Sport"
				RaceTitle = "Race"
				LoweredTitle = "Senket"
				CompetitionTitle = "Konkurranse"
				ArmorTitle = "Rustning"
				BrakesTitle = "Bremser"
				BumperTitle = "Støtfangere"
				FrontBumperTitle = "Støtfanger (Foran)"
				RearBumperTitle = "Støtfanger (Bak)"
				ChassisTitle = "Karosseri"
				EngineTitle = "Motor"
				EMSModeTitle = "EMS Modus"
				ExhaustTitle = "Eksosrør"
				FenderTitle = "Fender"
				FrontFenderTitle = "Fender (Foran)"
				RearFenderTitle = "Fender (Bak)"
				GrilleTitle = "Grill"
				HoodTitle = "Panser"
				HornTitle = "Horn"
				MelodyTitle = "Melodi"
				LoopTitle = "Løkke"
				LightsTitle = "Lys"
				XenonTitle = "Xenon"
				XenonEnableMessage = "Xenon På"
				XenonDisableMessage = "Xenon Av"
				NeonTitle = "Neon"
				ColorTitle = "Farge"
				CustomColorTitle = "Egen Farge"
				RainbowNeonsTitle = "Regnbue Neon"
				RainbowNeonsEnableMessage = "Regnbue Neon På"
				RainbowNeonsDisableMessage = "Regnbue Neon Av"
				LeftNeonsTitle = "Venstre Neon"
				LeftNeonsEnableMessage = "Venstre Neon På"
				LeftNeonsDisableMessage = "Venstre Neon Av"
				RightNeonsTitle = "Høyre Neon"
				RightNeonsEnableMessage = "Høyre Neon På"
				RightNeonsDisableMessage = "Høyre Neon Av"
				FrontNeonsTitle = "Front Neon"
				FrontNeonsEnableMessage = "Front Neon På"
				FrontNeonsDisableMessage = "Front Neon Av"
				RearNeonsTitle = "Bakre Neon"
				RearNeonsEnableMessage = "Bakre Neon På"
				RearNeonsDisableMessage = "Bakre Neon Av"
				PlateTitle = "Registreringsplate"
				SetPlateTextTitle = "Sett Platetekst"
				ResparyTitle = "Omlakker"
				PrimaryColorTitle = "Primærfarge"
				SecondaryColorTitle = "Sekundærfarge"
				PearlescentTitle = "Pearlescent"
				RimsTitle = "Rims"
				LiveryTitle = "Livery"
				LiverysTitle = "Liverys"
				NoLiverysTitle = "Your Vehicle Has No Liverys"
				NoLiveryTitly = "No Livery"
				RoofTitle = "Tak"
				SideSkirtTitle = "Side Skirt"
				SpoilerTitle = "Hekkving"
				SuspensionTitle = "Suspension"
				TransmissionTitle = "Transmission"
				TurboTitle = "Turbo"
				TurboEnableMessage = "Turbo Enabled"
				TurboDisableMessage = "Turbo Disabled"
				WheelsTitle = "Hjul"
				WheelAccessoriesTitle = "Hjul Accessories"
				WheelTypesTitle = "Hjultyper"
				BulletProofTiresTitle = "Bullet Proof Tires"
				BulletProofTiresEnableMessage = "Bullet Proof Tires Enabled"
				BulletProofTiresDisableMessage = "Bullet Proof Tires Disabled"
				RainbowTireSmokeTitle = "Rainbow Tire Smoke"
				RainbowTireSmokeEnableMessage = "Rainbow Tire Smoke Enabled"
				RainbowTireSmokeDisableMessage = "Rainbow Tire Smoke Disabled"
				NoTireSmokeTitle = "No Tire Smoke"
				CustomTireSmokeTitle = "Custom Tire Smoke"
				WhiteTireSmokeTitle = "White Tire Smoke"
				BlackTireSmokeTitle = "Black Tire Smoke"
				BlueTireSmokeTitle = "Blue Tire Smoke"
				YellowTireSmokeTitle = "Yellow Tire Smoke"
				PurpleTireSmokeTitle = "Purple Tire Smoke"
				OrangeTireSmokeTitle = "Orange Tire Smoke"
				GreenTireSmokeTitle = "Green Tire Smoke"
				RedTireSmokeTitle = "Red Tire Smoke"
				PinkTireSmokeTitle = "Pink Tire Smoke"
				BrownTireSmokeTitle = "Brown Tire Smoke"
				HighEndTitle = "High End"
				LowriderTitle = "Lowrider"
				MuscleTitle = "Muscle"
				OffroadTitle = "Offroad"
				SportTitle = "Sport"
				SUVTitle = "SUV"
				TunerTitle = "Tuner"
				FrontTitle = "Front"
				BackTitle = "Back"
				WindowTintTitle = "Window Tint"
				WindowTintMessage = "Changed Vehicle Window Tint"
				AirFilterTitle = "Air Filter"
				ArchCoverTitle = "Arch Cover"
				BonnetPinsTitle = "Bonnet Pins"
				CanardsVanityPlatesTitle = "Canards/Vanity Plates"
				DashboardTitle = "Dashboard"
				DialDesignTitle = "Dial Design"
				DoorsTitle = "Dører"
				EngineBlockTitle = "Engine Block"
				HydraulicsTitle = "Hydraulikk"
				OrnamentsTitle = "Ornaments"
				PlaquesTitle = "Plaques"
				PlateHolderTitle = "Plate Holder"
				SeatsTitle = "Seats"
				ShiftLeverTitle = "Shift Lever"
				SpeakersTitle = "Speakers"
				SteeringWheelTitle = "Steering Wheel"
				StrutsTitle = "Struts"
				TankTitle = "Tank"
				TrimTitle = "Trim"
				TrimDesignTitle = "Trim Design"
				TrunkTitle = "Bakluke"
				CustomColorSettingAborted = "Egenfiltret Farge Avbrutt"

				ReduceGripTitle = "Redusert Grep"
				ReduceGripEnableMessage = "Redusert Grep Av"
				ReduceGripDisableMessage = "Redusert Grep På"
				VehicleVisibleTitle = "Synlighet"
				VehicleVisibleEnableMessage = "Synlig"
				VehicleVisibleDisableMessage = "Usynlig"
				NotDriverOfAVehicleMessage = "Du Kjører Ikke Et Kjøretøy"


			-- Teleport Menu
				TeleportToWaypointTitle = "Teleporter Til Veipunkt"
				TeleportedToWaypointMessage = "Teleporterte Til Veipunkt"
				NoWaypointMessage = "Ingen Veipunkt Satt"
				TeleportIntoNearestVehicleTitle = "Teleporter Inn I Nærmeste Kjøretøy"
				TeleportedIntoNearestVehicleMessage = "Teleporterte Inn I Nærmeste Kjøretøy"
				NoVehicleFoundMessage = "Ingen Kjøretøy Funnet"
				TeleportEntityRelativeTitle = "Teleporter Enhet Relativt"
				TeleportForwardTitle = "Teleporter Forover"
				TeleportedForwardMessage = "Teleporterte Forover"
				TeleportBackwardTitle = "Teleporter Bakover"
				TeleportedBackwardMessage = "Teleporterte Bakover"
				TeleportToTheLeftTitle = "Teleporter Venstre"
				TeleportedToTheLeftMessage = "Teleporterte Venstre"
				TeleportToTheRightTitle = "Teleporter Høyre"
				TeleportedToTheRightMessage = "Teleporterte Høyre"
				TeleportToOnlinePlayerTitle = "Teleporter Til Spiller"
				CantTeleportToYourselfMessage = "Kan Ikke Teleportere Til Deg Selv"
				InteriorLocationsTitle = "Interiører"
				ExteriorLocationsTitle = "Eksterne Plasseringer"
				CustomLocationTitle = "Egenfiltrert Plassering"
				SetCoordsTitle = "Sett Koordinater"
				TeleportToCoordsTitle = "Teleporter Til Koordinater"
				NoSpacesMessage = "INGEN MELLOMROM"
				CoordsSetMessage = "Koordinater Satt"
				CoordsSettingAbortedMessage = "Koordinatsetting Avbrutt"


			-- Weapon Menu
				GiveAllWeaponsTitle = "Gi Alle Våpen"
				AllWeaponsGivenMessage = "Alle Våpen Gitt"
				RemoveAllWeaponsTitle = "Fjern Alle Våpen"
				AllWeaponsRemovedMessage = "Alle Våpen Fjernet"
				DeleteGunTitle = "Slettepistol"
				DeleteGunEnableMessage = "Slettepistol På!~n~~w~Bruk ~b~Pistol!~n~~b~Sikt ~w~Og ~b~Skyt ~w~For Å Slette"
				DeleteGunDisableMessage = "Slettepistol Av"
				DeletedMessage = "Slettet"
				ExplosiveBulletTitle = "Eksplosive Kuler"
				ExplosiveBulletEnableMessage = "Eksplosive Kuler På"
				ExplosiveBulletDisableMessage = "Eksplosive Kuler Av"
				ExplosionTypeTitle = "Explosion Type"
				FireAmmoTitle = "Brennende Ammunisjon"
				FireAmmoEnableMessage = "Brennende Ammunisjon På"
				FireAmmoDisableMessage = "Brennende Ammunisjon Av"
				InfiniteAmmoNoReloadTitle = "Ubegrenset Ammunisjon & Ingen Omlading"
				InfiniteAmmoNoReloadEnableMessage = "Ubegrenset Ammunisjon & Ingen Omlading På"
				InfiniteAmmoNoReloadDisableMessage = "Ubegrenset Ammunisjon & Ingen Omlading Av"
				OneShotKillTitle = "Umiddelbar Død"
				OneShotKillEnableMessage = "Umiddelbar Død På"
				OneShotKillDisableMessage = "Umiddelbar Død Av"
				TeleportGunTitle = "Teleporteringspistol"
				TeleportGunEnableMessage = "Teleporteringspistol På!~n~~w~Bruk ~b~Heavy Rifle!~n~~b~Sikt ~w~Og ~b~Skyt ~w~For Å Teleportere"
				TeleportGunDisableMessage = "Teleporteringspistol Av"
				VehicleGunTitle = "Kjøretøypistol"
				VehicleGunEnableMessage = "Kjøretøypistol På!~n~~w~Bruk ~b~AP Pistol~n~~b~Sikt ~w~Og ~b~Skyt"
				VehicleGunDisableMessage = "Kjøretøypistol Av"
				VehicleWeaponsTitle = "Kjøretøyvåpen"
				VehicleWeaponsEnableMessage = "Kjøretøyvåpen På!~n~~s~Sikt For Å Skyte"
				VehicleWeaponsDisableMessage = "Kjøretøyvåpen Av"
				AmmoTypeTitle = "Ammunisjonstype"
				WhaleGunTitle = "Hvalpistol"
				WhaleGunEnableMessage = "Hvalpistol På!~n~~w~Bruk ~b~Stungun~n~~b~Sikt ~w~Og ~b~Skyt"
				WhaleGunDisableMessage = "Hvalpistol Av"


			-- World Menu
				BlackoutTitle = "Strømstans"
				BlackoutEnableMessage = "Strømstans På"
				BlackoutDisableMessage = "Strømstans Av"
				ExplodeNearestVehicleTitle = "Eksploder Nærmeste Kjøretøy"
				ExplodeNearestVehicleEnableMessage = "Eksploder Nærmeste Kjøretøy På"
				ExplodeNearestVehicleDisableMessage = "Eksploder Nærmeste Kjøretøy Av"
				JumpModeTitle = "Hoppemodus"
				JumpModeEnableMessage = "Hoppemodus På"
				JumpModeDisableMessage = "Hoppemodus Av"
				NoNPCsTrafficTitle = "Ingen NPC & Trafikk"
				NPCsTrafficEnableMessage = "Ingen NPC & Trafikk På"
				NPCsTrafficDisableMessage = "Ingen NPC & Trafikk Av"
				TimeMenuTitle = "Tidsmeny"
				FreezeTimeTitle = "Frys Tid"
				FreezeTimeEnableMessage = "Tiden Er Frosset"
				FreezeTimeDisableMessage = "Tiden Er Ikke Frosset"
				HourTitle = "Time"
				MinuteTitle = "Minutt"
				MorningTitle = "Morgen"
				MiddayTitle = "Formiddag"
				EveningTitle = "Kveld"
				MidnightTitle = "Midnatt"
				WeatherMenuTitle = "Værmeny"
				WeatherTitle = "Vær"


			-- Misc Menu
				AlwaysParachuteTitle = "Fallskjerm"
				AlwaysParachuteEnableMessage = "Fallskjerm På"
				AlwaysParachuteDisableMessage = "Fallskjerm Av"
				BodyguardMenuTitle = "livvaktermeny"
				SpawnBodyguardTitle = "Gyte livvakter"
				BodyguardSpawnedMessage = "livvakter gytt"
				Maximum7BodyguardsMessage = "Maksimalt 7 livvakter"
				DeleteAllBodyguardsTitle = "Slett alle livvakter"
				AllBodyguardsDeletedMessage = "Alle livvakter ryddet"
				SelectedBodyguardTitle = "Valgte livvakter"
				DeleteBodyguardTitle = "Slett livvakt"
				DeletedSelectedBodyguardMessage = "Slett valgte livvakter"
				SelectedBodyguardNotExistingMessage = "Valgt livvakt eksisterer ikke"
				NoFormationTitle = "Ingen formasjon"
				CircleAroundLeader1Title = "Sirkel rundt Leader 1"
				CircleAroundLeader2Title = "Sirkel rundt Leader 2"
				LineLeaderAtCenterTitle = "Linje"
				CoordsOverMapTitle = "Koordinater Over Kart"
				CoordsOverMapEnableMessage = "Koordinater Over Kart På"
				CoordsOverMapDisableMessage = "Koordinater Over Kart Av"
				DisableCinematicCamButtonTitle = "Skru av Cinematic Cam"
				DisableCinematicCamButtonEnableMessage = "Cinematic Cam På"
				DisableCinematicCamButtonDisableMessage = "Cinematic Cam Av"
				DrawFPSTitle = "Tegn FPS"
				DrawFPSEnableMessage = "Tegn FPS På"
				DrawFPSDisableMessage = "Tegn FPS Av"
				FPSCountFailed = "FPS Count mislyktes"
				HeatvisionTitle = "Varmesyn"
				HeatvisionEnableMessage = "Varmesyn På"
				HeatvisionDisableMessage = "Varmesyn Av"
				HideHUDRadarTitle = "Skjule HUD & Radar"
				HideHUDRadarEnableMessage = "Skjule HUD & Radar"
				HideHUDRadarDisableMessage = "Viser HUD & Radar"
				HideOnlyRadarTitle = "Skjule Radar"
				HideOnlyRadarEnableMessage = "Skjule Radar"
				HideOnlyRadarDisableMessage = "Viser Radar"
				NightvisionTitle = "Nattsyn"
				NightvisionEnableMessage = "Nattsyn På"
				NightvisionDisableMessage = "Nattsyn Av"
				NoClipModeTitle = "No Clip Mode"
				NoClipModeEnableMessage = "No Clip Mode På"
				NoClipModeDisableMessage = "No Clip Mode Av"
				RadioMenuTitle = "Radiomeny"
				MobileRadioTitle = "Mobil Radio"
				MobileRadioEnableMessage = "Mobil Radio På"
				MobileRadioDisableMessage = "Mobil Radio Av"
				SkipCurrentSongTitle = "Hopp Over Sang"
				SenderToFreezeTitle = "Sender å fryse"
				RadiostationUnfrozenMessage = "Radiostasjon ufrosset"
				RadiostationFrozenMessage = "Radiostasjon frossen"
				SpeedometerTitle = "Speedometer"
				SimpleSpeedometerTitle = "Enkelt Speedometer"
				SimpleSpeedometerEnableMessage = "Enkelt Speedometer På"
				SimpleSpeedometerDisableMessage = "Enkelt Speedometer Av"
				UnitTitle = "Enhet"
				JoinedMessage = "ble med"
				LeftMessage = "forlot"


			-- Settings Menu
				RestoreAppearanceBySpawnTitle = "Gjenoppta Utseende Ved Start"
				SelectOutfitTitle = "Velg Utseende"
				KeepWeaponsTitle = "Behold Våpen"
				MenuPositionHorizontalTitle = "Horisontal Menyposisjon"
				AccountMenuTitle = "Konto" --NEW
				ChangeUsernameTitle = "Bytt Brukernavn" --NEW
				ChangePasswordTitle = "Bytt Passord" --NEW
				LogOutTitle = "Logg Ut" --NEW
				LanguageTitle = "Språk" --NEW


			-- Register / Login Menu
				LoginMenuTitle = "Logg Inn" --NEW
				RegisterMenuTitle = "Registering" --NEW
				UsernameTitle = "Brukernavn" --NEW
				PasswordTitle = "Passord" --NEW
				LoginRegisterErrorMessage = "Fyll Alle Felt" --NEW
				RegisterSuccessMessage = "Registrering Vellykket" --NEW
				RegisterFailMessage = "Brukernavn Allerede I Bruk" --NEW
				LoginSuccessMessage = "Innlogging Vellykket" --NEW
				LoginFailMessage = "Brukernavn Og Passord-kombinasjon Er Feil" --NEW
				PasswordTooShortMessage = "Passord Må Være Lengre Enn 6 Tegn" --NEW
				NameInvalidMessage = "Ugyldig Eller For Kort Navn" --NEW
				ChangeUsernameSuccessMessage = "Brukernavn Endret" --NEW
				ChangeUsernameFailMessage = "Kunne Ikke Endre Brukernavn" --NEW
				ChangePasswordSuccessMessage = "Passord Endret" --NEW
				SecurityQuestion1 = "Hva var ditt barndoms-kallenavn?" --NEW
				SecurityQuestion2 = "Hvem var din barndomshelt?" --NEW
				SecurityQuestion3 = "Hvor var du på nyttårsaften i 2000?" --NEW
				SecurityQuestion4 = "Hvor ble du født?" --NEW
				SecurityQuestionAnswerTitle = "Svar" --NEW
				ResetPasswordTitle = "Nullstill Passord" --NEW
				ResetPasswordErrorMessage = "Oppgi Et Navn" --NEW
				SecurityQuestionAnswerWrongMessage = "Sikkerhetsspørsmål Er Feil" --NEW


			-- About Menu
				VersionTitle = "Versjon"
				MenuBaseTitle = "Menybase"
				FoundAnyBugTitle = "Funnet En Feil"
				ContactMeTitle = "Kontakt Meg"
				TranslationTitle = "Oversettelse"


			-- KeyboardMessages
				KickReasonKeyboardMessage = "Utkastelsesmelding" --NEW
				BanReasonKeyboardMessage = "Utestengelsesmelding" --NEW
				OutfitNameKeyboardMessage = "Utseendenavn" --NEW
				PedModelKeyboardMessage = "Karaktermodell" --NEW
				CoordsKeyboardMessage = "Koordinater" --NEW
				VehicleNameKeyboardMessage = "Kjøretøynavn" --NEW
				VehicleModelKeyboardMessage = "Kjøretøymodell" --NEW
				ColorValuesKeyboardMessage = "Fargeverdier" --NEW
				PlateTextKeyboardMessage = "Registreringsplate" --NEW
				ChangeUsernameKeyboardMessage = "Nytt Brukernavn" --NEW
				ChangePasswordKeyboardMessage = "Nytt Passord" --NEW
				SecurityQuestionAnswerKeyboardMessage = "Sikkerhetsspørsmål" --NEW
				
			-- Language Credits
				LanguageCredits = "GlitchDetector"
				LanguageCreditsLink = "forum.fivem.net/u/GlitchDetector"
		end
		if SelectedLanguage == 4 then --Lithuanian
			-- Welcome Message
				WelcomeMessage = "Sveiki atvykę į CHEM!CAL T0Ж!N"

			-- Page Indicator
				PageIndicator = "Puslapis"

			-- Not Existing
				NotExisting = "Neegzistuoja"

			-- Main Menu
				AdminMenuTitle = "Administratoriaus meniu"
				PlayerMenuTitle = "Žaidėjo meniu"
				VehicleMenuTitle = "Transporto meniu"
				TeleportMenuTitle = "Teleportų meniu"
				WeaponMenuTitle = "Ginklų meniu"
				WorldMenuTitle = "Pasaulio meniu"
				MiscMenuTitle = "Įvairūs meniu"
				SettingsMenuTitle = "Nustatymų meniu"
				AboutTitle = "Apie"

			-- Admin Menu
				PlayerInfosTitle = "Žaidėjo informacija"

				KickPlayerTitle = "Išmesti žaidėją"
				KickYourselfMessage = "Negali išmesti savęs"

				BanDurationTitle = "Užblokuoti trukmė (valandos)"
				BanPlayerTitle = "Užblokuoti žaidėją"
				BanYourselfMessage = "Negali užblokuoti savęs"

				SpectatePlayerTitle = "Stebėti žaidėją"
				SpectateYourselfMessage = "Negali stebėti savęs"
				StopPlayerSpectateTitle = "Baigti stebėti"
				ChoosePlayerToSpectateTitle = "Pasirinkti žaidėją stebėti"

				TeleportPlayerToMeTitle = "Teleportuoti žaidėją pas save"
				TeleportYourselfMessage = "Negali teleportuoti savęs"

				MiscellaneousOptionsTitle = "Įvairūs pasirinkimai"

				ExtendableMapTitle = "Padidinamas žemėlapis"
				ExtendableMapEnableMessage = "Padidinamas žemėlapis įjungtas visiems klientams"
				ExtendableMapDisableMessage = "Padidinamas žemėlapis išjungtas visiems klientams"

				BlipsAndNamesTitle = "Blips ir vardai"
				BlipsAndNamesEnableMessage = "Blips ir vardai įjungti visiems klientams"
				BlipsAndNamesDisableMessage = "Blips ir vardai išjungti visiems klientams"

				BlipsAndNamesNonAdminsTitle = "Blips ir vardai (Ne administratoriai)"
				BlipsAndNamesNonAdminsEnableMessage = "Blips ir vardai (Ne administratoriai) įjungtas visiems klientams"
				BlipsAndNamesNonAdminsDisableMessage = "Blips ir vardai (Ne administratoriai) išjungtas visiems klientams"

				PvPTitle = "Vienas prieš vieną"
				PvPEnableMessage = "Vienas prieš vieną įjungta visiems klientams"
				PvPDisableMessage = "Vienas prieš vieną išjungta visiems klientams"

				ScoreboardTitle = "Žaidėjų taškai"
				ScoreboardEnableMessage = "Žaidėjų taškai įjungti visiems klientams"
				ScoreboardDisableMessage = "Žaidėjų taškai išjungti visiems klientams"

				StuntJumpTitle = "Kaskadiniai šuoliai"
				StuntJumpEnableMessage = "Kaskadiniai šuoliai įjungti visiems klientams"
				StuntJumpDisableMessage = "Kaskadiniai šuoliai išjungti visiems klientams"

				VoiceChatTitle = "Balso pokalbiai"
				VoiceChatEnableMessage = "Balso pokalbiai įjungti visiems klientams"
				VoiceChatDisableMessage = "Balso pokalbiai išjungti visiems klientams"

				VoiceChatProximityTitle = "Balso pokalbių pasiekiamumas"
				VoiceChatProximityChangeToDefaultMessage = "Balso pokalbių pasiekiamumas pakeistas į ~y~visas serveris ~g~visiems klientams"
				VoiceChatProximityChangeMessage = "Balso pokalbių pasiekiamumas pakeistas visiems klientams"

				VoiceChatChannelTitle = "Balso pokalbių kanalas"
				VoiceChatChannelChangeToDefaultMessage = "Balso pokalbių kanalas pakeistas į standartinį"

				ShowTalkingPlayerTitle = "Rodyti kalbėtoją"
				ShowTalkingPlayerEnableMessage = "Rodyti kalbėtoją įjungti visiems klientams"
				ShowTalkingPlayerDisableMessage = "Rodyti kalbėtoją išjungti visiems klientams"

				NameTitle = "Vardas" --NEW
				MenuNameTitle = "Meniu pavadinimas" --NEW
				IPTitle = "IP" --NEW
				PingTitle = "Ping" --NEW
				SteamIDTitle = "Steam ID" --NEW
				LicenseIDTitle = "Licencijos ID" --NEW
				AdminsDecisionMessage = "Administratoriaus nutarimas" --NEW
				KickedMessage = "Išmestas" --NEW
				PlayerKickAbortedMessage = "Žaidėjo išmetimas atšauktas" --NEW
				BannedMessage = "Užblokuotas" --NEW
				PlayerBanAbortedMessage = "Žaidėjo blokavimas atšauktas" --NEW


			-- Player Menu
				ArmorHealWashTitle = "Pridėti šarvų, pagydyti ir apšvarinti"
				ArmorHealWashMessage = "Pridėta šarvų, pagydyta ir nuprausta"

				AnimationsTitle = "Animacijos"
				SexActsTitle = "Sekso veiksmai"
				StopSexActsTitle = "Baigti"
				AnalFuckedTitle = "Analinio gavėjas"
				AnalFuckerTitle = "Analinio davėjas"
				CarBJGetterTitle = "Oralinio gavėjas mašinoje"
				CarBJGiverTitle = "Oralinio davėjas mašinoje"
				CarSexGetterTitle = "Seksas mašinoje gavėjas"
				CarSexGiverTitle = "Seksas mašinoje davėjas"
				StripsTitle = "Striptizas"
				StopStripTitle = "Baigti"
				PoleDance1Title = "1. Stulpo šokis"
				PoleDance2Title = "2. Stulpo šokis"
				PoleDance3Title = "3. Stulpo šokis"
				LapDanceTitle = "Lap Dance"
				PrivateDanceTitle = "Privatus šokis"
				SuicideTitle = "Savižudybė"
				StopSuicideTitle = "Atšaukti savižudybę"
				PillSuicideTitle = "Savižudybė su tablete"
				PistolSuicideTitle = "Savižudybė su pistoletu"

				ChangePedTitle = "Keisti žaidėjo modelį"
				PedNotExistingMessage = "Žaidėjo modelis neegzistuoja"
				ChangingByNameAbortedMessage = "Keitimas pagal vardą atšauktas"

				ChangePedByNameTitle = "Keisti žaidėjo modelį pagal vardą"
				AnimalsTitle = "Gyvūnai"
				BoarTitle = "Šernas"
				CatTitle = "Katė"
				ChickenhawkTitle = "Vanagas"
				ChimpTitle = "Šimpanzė"
				ChopTitle = "Šuo"
				CormorantTitle = "Kormoranas"
				CowTitle = "Karvė"
				CoyoteTitle = "Kojotas"
				CrowTitle = "Varna"
				DeerTitle = "Elnias"
				DolphinTitle = "Delfinas"
				FishTitle = "Žuvis"
				HenTitle = "Višta"
				HammerheadSharkTitle = "Kūjaryklis"
				HumpbackTitle = "Kupranugaris"
				HuskyTitle = "Haskis"
				KillerWhaleTitle = "Orka"
				MountainLionTitle = "Kalnų liūtas"
				PigTitle = "Kiaulė"
				PigeonTitle = "Balandis"
				PoodleTitle = "Pudelis"
				PugTitle = "Mopsas"
				RabbitTitle = "Triušis"
				RatTitle = "Žiurkė"
				RetrieverTitle = "Retriveris"
				RhesusTitle = "Beždionė"
				RottweilerTitle = "Rotveileris"
				SeagullTitle = "Žuvėdra"
				ShepherdTitle = "Aviganis"
				StingrayTitle = "Manta"
				TigerSharkTitle = "Tigrinis ryklys"
				WestyTitle = "Terjeras"

				FemalePedsTitle = "Moteriški žaidėjo modeliai"
				BusinessFemaleTitle = "Verslininkė"
				CopFemaleTitle = "Policininkė"
				EpsilonFemaleTitle = "Epsilon"
				FattyFemaleTitle = "Storulė"
				GolferFemaleTitle = "Golfo žaidėja"
				HipsterFemaleTitle = "Hipis"
				Hooker1Title = "Prostitutė 1"
				Hooker2Title = "Prostitutė 2"
				Hooker3Title = "Prostitutė 3"
				MaidTitle = "Tarnaitė"
				RangerFemaleTitle = "Girininkė"
				SheriffFemaleTitle = "Šerifė"
				Stripper1Title = "Striptizo šokėja 1"
				Stripper2Title = "Striptizo šokėja 2"

				MalePedsTitle = "Vyriški žaidėjo modeliai"
				BusinessMaleTitle = "Verslininkas"
				CopMaleTitle = "Policininkas"
				EpsilonMaleTitle = "Epsilon"
				FattyMaleTitle = "Storulis"
				FiremanTitle = "Gaisrininkas"
				GolferMaleTitle = "Golfo žaidėjas"
				HighwayCopTitle = "Greitkelio policininkas"
				HipsterMaleTitle = "Hipis"
				PrisonerTitle = "Kalinys"
				Marine1Title = "Pėstininkas 1"
				Marine2Title = "Pėstininkas 2"
				Marine3Title = "Pėstininkas 3"
				RangerMaleTitle = "Girininkas"
				SheriffMaleTitle = "Šerifas"

				PlayerPedsTitle = "Žaidėjo modeliai"
				MPCharacterFemaleTitle = "Online modelis (moteriškas)"
				MPCharacterMaleTitle = "Online modelis (vyriškas)"
				FranklinTitle = "Franklin"
				MichaelTitle = "Michael"
				TrevorTitle = "Trevor"

				EveryPedsTitle = "Kiekvienas modeliai"

				ComponentChangerTitle = "Komponentų keitimas"
				SkinTitle = "Išvaizda" --NEW
				MotherShapeTitle = "Motinos sudėjimas" --NEW
				MotherSkintoneTitle = "Motinos odos atspalvis" --NEW
				FatherShapeTitle = "Tėvo sudėjimas" --NEW
				FatherSkintoneTitle = "Tėvo odos atspalvis" --NEW
				ExtraShapeTitle = "Papildomas sudėjimas" --NEW
				ExtraSkintoneTitle = "Papildomas odos atspalvis" --NEW
				ShapeMixTitle = "Sudėjimo derinys" --NEW
				SkintoneMixTitle = "Odos atspalvio derinys" --NEW
				ExtraMixTitle = "Papildomas derinys" --NEW
				OverlaysTitle = "Veido bruožai" --NEW
				BlemishesTitle = "Dėmės" --NEW
				FacialHairTitle = "Veido plaukai" --NEW
				EyebrownsTitle = "Antakiai" --NEW
				AgeingTitle = "Amžius" --NEW
				MakeupTitle = "Makiažas" --NEW
				BlushTitle = "Skruostai" --NEW
				ComplexionTitle = "Veido atspalvis" --NEW
				SunDamageTitle = "Saulės poveikis" --NEW
				LipstickTitle = "Lūpdažis" --NEW
				MolesFrecklesTitle = "Apgamai  / strazdanos" --NEW
				ChestHairTitle = "Krūtinės plaukai" --NEW
				BodyBlemishesTitle = "Kūno dėmės" --NEW
				AddBodyBlemishesTitle = "Pridėti kūno dėmę" --NEW
				HatsTitle = "Kepurė" --NEW
				GlassesTitle = "Akiniai" --NEW
				EarPiecesTitle = "Auskarai" --NEW
				WatchesTitle = "Laikrodis" --NEW
				FaceTitle = "Veidas" --NEW
				MasksTitle = "Kaukė" --NEW
				HairTitle = "Plaukai" --NEW
				ArmsUpperBodyGlovesTitle = "Viršutinė dalis / pirštinės" --NEW
				LegsTitle = "Apatinė dalis" --NEW
				ParachutesHeistBagsTitle = "Parašiutas ir apiplėšimų krepšys" --NEW
				ShoesTitle = "Batai" --NEW
				TiesScarfsetcTitle = "Kaklaraištis, šalikas ir kita" --NEW
				UndershirtsSpecialThingsTitle = "Apatiniai marškiniai ir ypatumai" --NEW
				ArmorTitle = "Šarvai" --NEW
				EmblemesTitle = "Emblema" --NEW
				TopsTitle = "Viršus" --NEW
				TextureTitle = "Tekstūra" --NEW

				PlayerGodmodeTitle = "Nemirtingas"
				PlayerGodmodeEnableMessage = "Nemirtingumas įjungtas"
				PlayerGodmodeDisableMessage = "Nemirtingumas išjungtas"
				InfiniteStaminaTitle = "Nesibaigianti ištvermė"
				InfiniteStaminaEnableMessage = "Nesibaigianti ištvermė įjungta"
				InfiniteStaminaDisableMessage = "Nesibaigianti ištvermė išjungta"

				OutfitsTitle = "Aprangos"
				SaveOutfitsTitle = "Išsaugoti aprangą"
				LoadOutfitsTitle = "Užkrauti aprangą"
				DeleteOutfitsTitle = "Ištrinti aprangą"
				NoOutfitName = "Tuščia"
				NewOutfitDefaultName = "Nauja apranga"
				OutfitSavingAbortion = "Aprangos saugojimas atšauktas"
				OutfitDeletingWord = "ištrinti"
				OutfitDeletingConfirmation = "Parašyk '" .. OutfitDeletingWord .. "', kad ištrinti aprangą"
				OutfitDeletingAbortion = "Aprangos trinimas atšauktas"
				OutfitMessage = "Apranga"
				LoadedMessage = "Užkrauta"

				RunSpeedMultiplierTitle = "Bėgimo greičio daugiklis"

				ScenariosTitle = "Scenarijai"
				StopScenariosTitle = "Baigti scenarijų"
				MalePedScenariosTitle = "Vyriškų modelių scenarijai"
				BBQTitle = "Kepsnių kepimas"
				CarParkAttendantTitle = "Mašinos parkavimosi avarija"
				GolfTitle = "Golfas"
				MusicianTitle = "Muzikantas"
				PaparazziTitle = "Paparacas"
				PushUpsTitle = "Atsispaudimai"
				SitUpsTitle = "Pritūpimai"
				BinocularsTitle = "Žiūronai"
				CheeringTitle = "Džiūgavimas"
				DrillTitle = "Gręžimas"
				DrinkingSomeCovfefeTitle = "Kavos gėrimas"
				FilmingTitle = "Filmavimas"
				FishingTitle = "Žvejyba"
				HammeringTitle = "Kalimas"
				JanitorTitle = "Valytojas"
				TouristTitle = "Turistas"
				WeedSmokingTitle = "Žolės rūkymas"
				WeightliftingTitle = "Svarmenų kilnojimas"
				WeldingTitle = "Virinimas"
				YogaTitle = "Joga"

				SuperJumpTitle = "Super šuoliai"
				SuperJumpEnableMessage = "Super šuoliai įjungti"
				SuperJumpDisableMessage = "Super šuoliai išjungti"
				SuicideTitle = "Savižudybė"
				SupermanModeTitle = "Supermeno rėžimas"
				SupermanModeEnableMessage = "Supermeno rėžimas įjungtas"
				SupermanModeDisableMessage = "Supermeno rėžimas išjungtas"
				SwimSpeedMultiplierTitle = "Plaukimo greičio daugiklis"

				WantedLevelTitle = "Ieškomumo lygis"
				ClearWantedLevelTitle = "Pašalinti ieškomumą"
				ClearWantedLevelMessage1 = "Negalioja kai ieškomumo lygiai išjungti"
				ClearWantedLevelMessage2 = "Ieškomumas pašalintas"
				DisableWantedLevelTitle = "Išjungti ieškomumą"
				DisableWantedLevelDisableMessage = "Ieškomumas išjungtas"
				DisableWantedLevelEnableMessage = "Ieškomumas įjungtas"
				MaximumWantedLevelTitle = "Maksimalus ieškomumo lygis"
				SetWantedLevelTitle = "Nustatyti ieškomumo lygį"
				SetWantedLevelMessage = "Neįmanoma to padaryti kai ieškomumas yra išjungtas"

				PlayerVisibleTitle = "Matomas"
				PlayerVisibleEnableMessage = "Matomas"
				PlayerVisibleDisableMessage = "Nematomas"


			-- Vehicle Menu
				SpawnVehicleTitle = "Gauti transportą"
				DespawnableTitle = "Sugrąžinamas"
				DespawnableEnableMessage = "Transporto sugrąžinimas įjungtas"
				DespawnableDisableMessage = "Transporto sugrąžinimas išjungtas"
				ReplaceTitle = "Pakeisti"
				ReplaceEnableMessage = "Pakeisti transportą kai išgavimas įjungtas"
				ReplaceDisableMessage = "Pakeisti transportą kai išgavimas išjungtas"
				MarkOnMapTitle = "Žymėjimas ant žemėlapio"
				MarkOnMapEnableMessage = "Transporto žymėjimas ant žemėlapio įjungtas"
				MarkOnMapDisableMessage = "Transporto žymėjimas ant žemėlapio išjungtas"
				SpawnVehicleByNameTitle = "Gauti transportą pagal pavadinimą"
				FancyVehiclesTitle = "Prabangus transportas"
				SpawningByNameAborted = "Išgavimas pagal pavadinimą atšauktas"
				InvalidModel = "Negaliojantis modelis"

				BoostOnHornTitle = "Pagreitinimas duodant signalą"
				BoostOnHornEnableMessage = "Pagreitinimas duodant signalą įjungtas"
				BoostOnHornDisableMessage = "Pagreitinimas duodant signalą išjungtas"
				BunnyHopTitle = "Pasišokinėjimas"
				BunnyHopEnableMessage = "Pasišokinėjimas įjungtas!~n~ Pasišokinėti galima su bėgimo mygtuku"
				BunnyHopDisableMessage = "Pasišokinėjimas išjungtas"
				DeleteTitle = "Ištrinti"

				DoorsTitle = "Durys"
				DoorTitle = "Durys"
				DoorNameFrontLeft = "Priekinės kairiosios durys"
				DoorNameFrontRight = "Priekinės dešiniosios durys"
				DoorNameRearLeft = "Galinės kairiosios durys"
				DoorNameRearRight = "Galinės dešiniosios durys"
				DoorNameHood = "Kapotas"
				DoorNameTrunk = "Bagažinė"
				DoorNameBack = "Galas"
				DoorNameBack2 = "Galas 2"
				DoorOpenedMessage = "Atidaryta"
				DoorClosedMessage = "Uždaryta"
				DoorOpenCloseTitle = "Atidaryti / Uždaryti"
				DoorOpenAllTitle = "Atidaryti viską"
				DoorOpenAllMessage1 = "Durys atidarytos"
				DoorOpenAllMessage2 = "Durys jau atidarytos"
				DoorCloseAllTitle = "Uždaryti viską"
				DoorCloseAllMessage1 = "Durys uždarytos"
				DoorCloseAllMessage2 = "Durys jau uždarytos"
				DoorRepairAllTitle = "Sutvarkyti viską"
				DoorRepairAllMessage1 = "Durys sutvarkytos"
				DoorRepairAllMessage2 = "Durys jau sutvarkytos"
				DoorDestroyAllTitle = "Sunaikinti viską"
				DoorDestroyAllMessage1 = "Durys sunaikintos"
				DoorDestroyAllMessage2 = "Durys jau sunaikintos"

				DriveOnWaterTitle = "Važiavimas vandeniu"
				DriveOnWaterEnableMessage = "Važiavimas vandeniu įjungtas"
				DriveOnWaterDisableMessage = "Važiavimas vandeniu išjungtas"
				FixAndCleanTitle = "Sutvarkyti ir švarinti"
				FlipTitle = "Apversti"
				FuckUpTitle = "Suniokoti"
				FlyingVehicleTitle = "Skraidantis transportas"
				FlyingVehicleEnableMessage = "Skraidantis transportas įjungtas"
				FlyingVehicleDisableMessage = "Skraidantis transportas išjungtas"
				VehicleGodmodeTitle = "Transporto nemirtingumas"
				VehicleGodmodeEnableMessage = "Transporto nemirtingumas įjungtas"
				VehicleGodmodeDisableMessage = "Transporto nemirtingumas išjungtas"
				GravityTitle = "Gravitacija"
				GravityEnableMessage = "Gravitacija įjungta"
				GravityDisableMessage = "Gravitacija išjungta"

				SavedVehiclesTitle = "Išsaugotas transportas"
				NoSavedVehiclesName = "Tuščia"
				SaveVehiclesTitle = "Išsauto transportą"
				LoadVehiclesTitle = "Užkrauti transportą"
				UnsaveVehiclesTitle = "Panaikinti transporto išsaugojimą"
				VehicleMessage = "Transportas"
				VehicleSavedMessage = "Išsaugotas"
				VehicleLoadedMessage = "Užkrautas"
				VehicleUnsavedMessage = "Išsaugojimas panaikintas"
				VehicleSavingAbortion = "Transporto išsaugojimas atšauktas"
				VehicleUnsavingAbortion = "Transporto išsaugojimo panaikinimas atšauktas"
				VehicleUnsaveWord = "unsave"
				VehicleUnsaveConfirmation = "Parašyk '" .. VehicleUnsaveWord .. "', kad panaikinti transporto išsaugojimą"

				SeatbeltTitle = "Saugos diržai"
				SeatbeltEnableMessage = "Saugos diržai įjungti"
				SeatbeltDisableMessage = "Saugos diržai išjungti"

				TuningModifyingTitle = "Tuningas / modifikavimas"
				UpgradeTitle = "Patobulinimas"
				UpgradeTrailerTitle = "Patobulinimas (Trailer)" -- ???
				DowngradeTitle = "Patobulinimų nuėmimas"
				DowngradeTrailerTitle = "Patobulinimų nuėmimas (Trailer)" -- ???
				EnginePowerMultiplierTitle = "Variklio galios daugiklis"
				EngineTorqueMultiplierTitle = "Variklio apsukų daugiklis"
				ExtrasTitle = "Priedai"
				ExtraTitle = "Priedas"
				ExtraToggleTitle = "Įjungti/išjungti"
				ExtraEnabledTitle = "Įjungta"
				ExtraDisabledTitle = "Išjungta"
				TrailerExtrasTitle = "Trailer priedai" -- ???
				TrailerExtraTitle = "Priedas"
				TrailerExtraToggleTitle = "Įjungti/išjungti"
				TrailerExtraEnabledTitle = "Įjungta"
				TrailerExtraDisabledTitle = "Išjungta"
				RainbowVehicleTitle = "Vaivorykštinis transportas"
				RainbowVehicleTrailerTitle = "Vaivorykštinis transportas (Trailer)"

				StockTitle = "Pradinis"
				NoneTitle = "Joks"
				StreetTitle = "Gatvės"
				SportTitle = "Sportinis"
				RaceTitle = "Lenktynės"
				LoweredTitle = "Pažemintas"
				CompetitionTitle = "Konkursas"
				ArmorTitle = "Šarvai"
				BrakesTitle = "Stabdžiai"
				BumperTitle = "Bamperiai"
				FrontBumperTitle = "Bamperis (priekis)"
				RearBumperTitle = "Bamperis (galas)"
				ChassisTitle = "Važiuoklė"
				EngineTitle = "Variklis"
				EMSModeTitle = "Greitosios pagalbos tarnybų rėžimas"
				ExhaustTitle = "Duslintuvas"
				FenderTitle = "Sparnai"
				FrontFenderTitle = "Sparnai (priekis)"
				RearFenderTitle = "Sparnai (galas)"
				GrilleTitle = "Grotelės"
				HoodTitle = "Kapotas"
				HornTitle = "Signalas"
				MelodyTitle = "Melodija"
				LoopTitle = "Pasikartojantis"
				LightsTitle = "Šviesos"
				XenonTitle = "Ksenonas"
				XenonEnableMessage = "Ksenonai įjungti"
				XenonDisableMessage = "Ksenonai išjungti"
				NeonTitle = "Neonai"
				ColorTitle = "Spalva"
				CustomColorTitle = "Pasirinktina spalva"
				RainbowNeonsTitle = "Vaivorykštiniai neonai"
				RainbowNeonsEnableMessage = "Vaivorykštiniai neonai įjungti"
				RainbowNeonsDisableMessage = "Vaivorykštiniai neonai išjungti"
				LeftNeonsTitle = "Kairysis neonas"
				LeftNeonsEnableMessage = "Kairysis neonas įjungtas"
				LeftNeonsDisableMessage = "Kairysis neonas išjungtas"
				RightNeonsTitle = "Dešinysis neonas"
				RightNeonsEnableMessage = "Dešinysis neonas įjungtas"
				RightNeonsDisableMessage = "Dešinysis neonas išjungtas"
				FrontNeonsTitle = "Priekinis neonas"
				FrontNeonsEnableMessage = "Priekinis neonas įjungtas"
				FrontNeonsDisableMessage = "Priekinis neonas išjungtas"
				RearNeonsTitle = "Galinis neonas"
				RearNeonsEnableMessage = "Galinis neonas įjungtas"
				RearNeonsDisableMessage = "Galinis neonas išjungtas"
				PlateTitle = "Mašinos numeriai"
				SetPlateTextTitle = "Nustatyti mašinos numerių tekstą"
				ResparyTitle = "Perdažyti"
				PrimaryColorTitle = "Pirminė spalva"
				SecondaryColorTitle = "Antrinė spalva"
				PearlescentTitle = "Polichlortrifluoretilenas"
				RimsTitle = "Ratlankiai"
				LiveryTitle = "Papuošimas"
				LiverysTitle = "Papuošimai"
				NoLiverysTitle = "Jūsų transportas neturi jokių papuošimų"
				NoLiveryTitly = "Papuošimų nėra"
				RoofTitle = "Stogas"
				SideSkirtTitle = "Slenksčiai"
				SpoilerTitle = "Spoileris"
				SuspensionTitle = "Armotizatoriai"
				TransmissionTitle = "Transmisija"
				TurboTitle = "Turbina"
				TurboEnableMessage = "Turbina įjungta"
				TurboDisableMessage = "Turbina išjungta"
				WheelsTitle = "Ratai"
				WheelAccessoriesTitle = "Ratų priedai"
				WheelTypesTitle = "Ratų tipai"
				BulletProofTiresTitle = "Neperšaunami ratai"
				BulletProofTiresEnableMessage = "Neperšaunami ratai įjungti"
				BulletProofTiresDisableMessage = "Neperšaunami ratai išjungti"
				RainbowTireSmokeTitle = "Vaivorykštės spalvos ratų dūmai"
				RainbowTireSmokeEnableMessage = "Vaivorykštės spalvos ratų dūmai įjungti"
				RainbowTireSmokeDisableMessage = "Vaivorykštės spalvos ratų dūmai išjungti"
				NoTireSmokeTitle = "Jokie ratų dūmai"
				CustomTireSmokeTitle = "Pasirinktina ratų dūmų spalva"
				WhiteTireSmokeTitle = "Balti dūmai"
				BlackTireSmokeTitle = "Juodi dūmai"
				BlueTireSmokeTitle = "Mėlyni dūmai"
				YellowTireSmokeTitle = "Geltoni dūmai"
				PurpleTireSmokeTitle = "Violetiniai dūmai"
				OrangeTireSmokeTitle = "Oranžiniai dūmai"
				GreenTireSmokeTitle = "Žali dūmai"
				RedTireSmokeTitle = "Raudoni dūmai"
				PinkTireSmokeTitle = "Rožiniai dūmai"
				BrownTireSmokeTitle = "Rudi dūmai"
				HighEndTitle = "Prabangūs"
				LowriderTitle = "Pažemintos mašinos"
				MuscleTitle = "Amerikietiškos mašinos"
				OffroadTitle = "Bekeliai"
				SportTitle = "Sportinės"
				SUVTitle = "Visureigis"
				TunerTitle = "Tuningas"
				FrontTitle = "Priekis"
				BackTitle = "Galas"
				WindowTintTitle = "Langų tamsinimas"
				WindowTintMessage = "Langų plėvelė pakeista"
				AirFilterTitle = "Oro filtras"
				ArchCoverTitle = "Sparno praplatinimas"
				BonnetPinsTitle = "Kapoto sutvirtinimai"
				CanardsVanityPlatesTitle = "Canards/Raidiniai numeriai" -- Not translated
				DashboardTitle = "Prietaisų skydelis"
				DialDesignTitle = "Skydelio dizainas"
				DoorsTitle = "Durys"
				EngineBlockTitle = "Variklio blokas"
				HydraulicsTitle = "Hidraulika"
				OrnamentsTitle = "Ornamentai"
				PlaquesTitle = "Galinio lango ženklai"
				PlateHolderTitle = "Numerio laikiklis"
				SeatsTitle = "Sėdynės"
				ShiftLeverTitle = "Bėgių svirtis"
				SpeakersTitle = "Kolonėlės"
				SteeringWheelTitle = "Vairas"
				StrutsTitle = "Struts" -- Not translated
				TankTitle = "Tankas"
				TrimTitle = "Salonas"
				TrimDesignTitle = "Salono dizainas"
				TrunkTitle = "Bagažinė"
				CustomColorSettingAborted = "Pasirinktinos spalvos nustatymas atšauktas"

				ReduceGripTitle = "Sukibimo mažinimas"
				ReduceGripEnableMessage = "Sukibimo mažinimas įjungtas"
				ReduceGripDisableMessage = "Sukibimo mažinimas išjungtas"
				VehicleVisibleTitle = "Matomas"
				VehicleVisibleEnableMessage = "Matomas"
				VehicleVisibleDisableMessage = "Nematomas"
				NotDriverOfAVehicleMessage = "Nesi transporto vairuotojas"


			-- Teleport Menu
				TeleportToWaypointTitle = "Į žemėlapio žymeklį"
				TeleportedToWaypointMessage = "Nusiteleportuota į žymeklį"
				NoWaypointMessage = "Žymeklis nėra nustatytas"
				TeleportIntoNearestVehicleTitle = "Į arčiausią transportą"
				TeleportedIntoNearestVehicleMessage = "Nusiteleportuota į arčiausią transportą"
				NoVehicleFoundMessage = "Jokio transporto nerasta"
				TeleportEntityRelativeTitle = "Subjektą - reliatyvus"
				TeleportForwardTitle = "Pirmyn"
				TeleportedForwardMessage = "Nuteleportuota pirmyn"
				TeleportBackwardTitle = "Atgal"
				TeleportedBackwardMessage = "Nuteleportuota atgal"
				TeleportToTheLeftTitle = "Į kairę"
				TeleportedToTheLeftMessage = "Nuteleportuota į kairę"
				TeleportToTheRightTitle = "Į dešinę"
				TeleportedToTheRightMessage = "Nuteleportuota į dešinę"
				TeleportToOnlinePlayerTitle = "Į prisijungusį žaidėją"
				CantTeleportToYourselfMessage = "Negali teleportuoti savęs"
				InteriorLocationsTitle = "Interjerų vietos"
				ExteriorLocationsTitle = "Eksterjerų vietos"
				CustomLocationTitle = "Pasirinktina vieta"
				SetCoordsTitle = "Nustatyti koordinates"
				TeleportToCoordsTitle = "Į koordinates"
				NoSpacesMessage = "BE TARPŲ"
				CoordsSetMessage = "Koordinatės nustatytos"
				CoordsSettingAbortedMessage = "Koordinačių nustatymas atšauktas"


			-- Weapon Menu
				GiveAllWeaponsTitle = "Duoti visus ginklus"
				AllWeaponsGivenMessage = "Duoti visi ginklai"
				RemoveAllWeaponsTitle = "Pašalinti visus ginklus"
				AllWeaponsRemovedMessage = "Visi ginklai pašalinti"
				DeleteGunTitle = "Ginklo pašalinimas"
				DeleteGunEnableMessage = "Ginklo pašalinimas įjungtas!~n~~w~Naudok ~b~Pistol!~n~~b~Taikykis ~w~ir ~b~šauk ~w~, kad ištrintum"
				DeleteGunDisableMessage = "Ginklo pašalinimas išjungtas"
				DeletedMessage = "Pašalinta"
				ExplosiveBulletTitle = "Sprogstamosios kulkos"
				ExplosiveBulletEnableMessage = "Sprogstamosios kulkos įjungta"
				ExplosiveBulletDisableMessage = "Sprogstamosios kulkos išjungta"
				ExplosionTypeTitle = "Sprogimo tipas"
				FireAmmoTitle = "Degios kulkos"
				FireAmmoEnableMessage = "Degios kulkos įjungtos"
				FireAmmoDisableMessage = "Degios kulkos išjungtos"
				InfiniteAmmoNoReloadTitle = "Begalinės kulkos be persitaisymų"
				InfiniteAmmoNoReloadEnableMessage = "Begalinės kulkos be persitaisymų įjungta"
				InfiniteAmmoNoReloadDisableMessage = "Begalinės kulkos be persitaisymų išjungta"
				OneShotKillTitle = "Vieno pataikymo mirtis"
				OneShotKillEnableMessage = "Vieno pataikymo mirtis įjungta"
				OneShotKillDisableMessage = "Vieno pataikymo mirtis išjungta"
				TeleportGunTitle = "Teleportavimosi ginklas"
				TeleportGunEnableMessage = "Teleportavimosi ginklas įjungtas!~n~~w~Naudok ~b~Heavy Sniper!~n~~b~Taikykis ~w~ir ~b~šauk ~w~, kad teleportuotis"
				TeleportGunDisableMessage = "Teleportavimosi ginklas išjungtas"
				VehicleGunTitle = "Mašinų ginklas"
				VehicleGunEnableMessage = "Mašinų ginklas įjungtas!~n~~w~Naudok ~b~AP Pistol~n~~b~Taikykis ~w~ir ~b~šauk"
				VehicleGunDisableMessage = "Mašinų ginklas išjungtas"
				VehicleWeaponsTitle = "Mašinų ginklai"
				VehicleWeaponsEnableMessage = "Mašinų ginklai įjungti!~n~~s~Taikykis, kad šauti"
				VehicleWeaponsDisableMessage = "Mašinų ginklai išjungti"
				AmmoTypeTitle = "Kulkų tipas"
				WhaleGunTitle = "Banginio ginklas"
				WhaleGunEnableMessage = "Banginio ginklas įjungtas!~n~~w~Naudok ~b~Stungun~n~~b~Taikykis ~w~ir ~b~šauk"
				WhaleGunDisableMessage = "Banginio ginklas išjungtas"


			-- World Menu
				BlackoutTitle = "Apalpimas"
				BlackoutEnableMessage = "Apalpimas įjungtas"
				BlackoutDisableMessage = "Apalpimas išjungtas"
				ExplodeNearestVehicleTitle = "Susprogdinti arčiausią mašiną"
				ExplodeNearestVehicleEnableMessage = "Susprogdinti arčiausią mašiną įjungta"
				ExplodeNearestVehicleDisableMessage = "Susprogdinti arčiausią mašiną išjungta"
				JumpModeTitle = "Šokinėjimo rėžimas"
				JumpModeEnableMessage = "Šokinėjimo rėžimas įjungtas"
				JumpModeDisableMessage = "Šokinėjimo rėžimas išjungtas"
				NoNPCsTrafficTitle = "Jokių žmonių ir eismo"
				NPCsTrafficEnableMessage = "Jokių žmonių ir eismo įjungta"
				NPCsTrafficDisableMessage = "Jokių žmonių ir eismo išjungta"
				TimeMenuTitle = "Laiko meniu"
				FreezeTimeTitle = "Sustabdyti laiką"
				FreezeTimeEnableMessage = "Laikas sustabdytas"
				FreezeTimeDisableMessage = "Laikas tęsiamas"
				HourTitle = "Valanda"
				MinuteTitle = "Minutė"
				MorningTitle = "Rytas"
				MiddayTitle = "Vidurdienis"
				EveningTitle = "Vakaras"
				MidnightTitle = "Vidurnaktis"
				WeatherMenuTitle = "Oro meniu"
				WeatherTitle = "Oras"


			-- Misc Menu
				AlwaysParachuteTitle = "Visados gauti parašiutą"
				AlwaysParachuteEnableMessage = "Visados gauti parašiutą įjungta"
				AlwaysParachuteDisableMessage = "Visados gauti parašiutą išjungta"
				BodyguardMenuTitle = "Sargybinio meniu"
				SpawnBodyguardTitle = "Išgauti sargybinį"
				BodyguardSpawnedMessage = "Sargybinis išgautas"
				Maximum7BodyguardsMessage = "Limitas 7 sargybiniai"
				DeleteAllBodyguardsTitle = "Pašalinti visus sargybinius"
				AllBodyguardsDeletedMessage = "Visi sargybiniai pašalinti"
				SelectedBodyguardTitle = "Pasirinktas sargybinis"
				DeleteBodyguardTitle = "Sargybinis pašalintas"
				DeletedSelectedBodyguardMessage = "Pasirinktas sargybinis pašalintas"
				SelectedBodyguardNotExistingMessage = "Pasirinktas sargybinis neegzistuoja"
				NoFormationTitle = "Be rikiuotės"
				CircleAroundLeader1Title = "Ratas aplink lyderį 1"
				CircleAroundLeader2Title = "Ratas aplink lyderį 2"
				LineLeaderAtCenterTitle = "Linija"
				CoordsOverMapTitle = "Koordinatės virš žemėlapio"
				CoordsOverMapEnableMessage = "Koordinatės virš žemėlapio įjungta"
				CoordsOverMapDisableMessage = "Koordinatės virš žemėlapio išjungta"
				DisableCinematicCamButtonTitle = "Išjungti kinematografinę kamerą"
				DisableCinematicCamButtonEnableMessage = "Kinematografinė kamera įjungta"
				DisableCinematicCamButtonDisableMessage = "Kinematografinė kamera išjungta"
				DrawFPSTitle = "Rodyti FPS"
				DrawFPSEnableMessage = "Rodyti FPS įjungta"
				DrawFPSDisableMessage = "Rodyti FPS išjungta"
				FPSCountFailed = "FPS skaičiavimas nepavyko"
				HeatvisionTitle = "Šiluminis matymas"
				HeatvisionEnableMessage = "Šiluminis matymas įjungtas"
				HeatvisionDisableMessage = "Šiluminis matymas išjungtas"
				HideHUDRadarTitle = "Paslėpti HUD ir žemėlapį"
				HideHUDRadarEnableMessage = "HUD ir žemėlapis slepiami"
				HideHUDRadarDisableMessage = "HUD ir žemėlapis rodomi"
				HideOnlyRadarTitle = "Slėpti tik žemėlapį"
				HideOnlyRadarEnableMessage = "Žemėlapis slepiamas"
				HideOnlyRadarDisableMessage = "Žemėlapis rodomas"
				NightvisionTitle = "Naktinis matymas"
				NightvisionEnableMessage = "Naktinis matymas įjungtas"
				NightvisionDisableMessage = "Naktinis matymas išjungtas"
				NoClipModeTitle = "Jokio susidūrimo rėžimas"
				NoClipModeEnableMessage = "Jokio susidūrimo rėžimas įjungtas"
				NoClipModeDisableMessage = "Jokio susidūrimo rėžimas išjungtas"
				RadioMenuTitle = "Radijo meniu"
				MobileRadioTitle = "Mobili radija"
				MobileRadioEnableMessage = "Mobili radija įjungta"
				MobileRadioDisableMessage = "Mobili radija išjungtajungta"
				SkipCurrentSongTitle = "Praleisti dabartinę dainą"
				SenderToFreezeTitle = "Pristabdyti radiją" -- ???
				RadiostationUnfrozenMessage = "Radijo stotis tęsiama"
				RadiostationFrozenMessage = "Radijo stotis pristabdyta"
				SpeedometerTitle = "Spidometras"
				SimpleSpeedometerTitle = "Paprastas spidometras"
				SimpleSpeedometerEnableMessage = "Paprastas spidometras įjungtas"
				SimpleSpeedometerDisableMessage = "Paprastas spidometras išjungtas"
				UnitTitle = "Greičio vienetas" -- ???
				JoinedMessage = "prisijungė"
				LeftMessage = "atsijungė"


			-- Settings Menu
				RestoreAppearanceBySpawnTitle = "Atstatyti išvaizdą kas išgavimą"
				SelectOutfitTitle = "Pasirinkti aprangą"
				KeepWeaponsTitle = "Neprarasti ginklų"
				MenuPositionHorizontalTitle = "Meniu pozicija - horizontaliai"
				AccountMenuTitle = "Paskyros meniu" --NEW
				ChangeUsernameTitle = "Pakeisti vardą" --NEW
				ChangePasswordTitle = "Pakeisti slaptažodį" --NEW
				LogOutTitle = "Atsijungti" --NEW
				LanguageTitle = "Kalba" --NEW


			-- Register / Login Menu
				LoginMenuTitle = "Prisijungti" --NEW
				RegisterMenuTitle = "Registruoti" --NEW
				UsernameTitle = "Vardas" --NEW
				PasswordTitle = "Slaptažodis" --NEW
				LoginRegisterErrorMessage = "Užpildyk kiekvieną laukelį" --NEW
				RegisterSuccessMessage = "Sėkmingai užregistruota" --NEW
				RegisterFailMessage = "Toks vardas jau užregistruotas" --NEW
				LoginSuccessMessage = "Sėkmingai prisijungta" --NEW
				LoginFailMessage = "Vardas ir/arba slaptažodis neatitinka" --NEW
				PasswordTooShortMessage = "Slaptažodis per trumpas! Mažiausiai šešios raidės" --NEW
				NameInvalidMessage = "Klaidingas vardas! Mažiausiai trys raidės ir jokių specialiųjų simbolių" --NEW
				ChangeUsernameSuccessMessage = "Vardas sėkmingai pakeistas" --NEW
				ChangeUsernameFailMessage = "Vardo keitimas nepavyko" --NEW
				ChangePasswordSuccessMessage = "Slaptažodis sėkmingai pakeistas" --NEW
				SecurityQuestion1 = "Kokia buvo vaikystės pravardė?" --NEW
				SecurityQuestion2 = "Kas buvo vaikystės herojus?" --NEW
				SecurityQuestion3 = "Kur buvai per Naujuosius 2000 metais?" --NEW
				SecurityQuestion4 = "Kur tu gimė?" --NEW
				SecurityQuestionAnswerTitle = "Atsakyti" --NEW
				ResetPasswordTitle = "Atstatyti slaptažodį" --NEW
				ResetPasswordErrorMessage = "Prašome įvesti tekstą" --NEW
				SecurityQuestionAnswerWrongMessage = "Papildomas apsaugos klausimas neteisingas" --NEW


			-- About Menu
				VersionTitle = "Versija"
				MenuBaseTitle = "Meniu pagrindas"
				FoundAnyBugTitle = "Radai klaidų"
				ContactMeTitle = "Susisiek su manimi"
				TranslationTitle = "Vertimas"


			-- KeyboardMessages
				KickReasonKeyboardMessage = "Išmetimo priežastis" --NEW
				BanReasonKeyboardMessage = "Užblokavimo priežastis" --NEW
				OutfitNameKeyboardMessage = "Aprangos pavadinimas" --NEW
				PedModelKeyboardMessage = "Žaidėjo modelis" --NEW
				CoordsKeyboardMessage = "Koordinatės" --NEW
				VehicleNameKeyboardMessage = "Transporto pavadinimas" --NEW
				VehicleModelKeyboardMessage = "Transporto modelis" --NEW
				ColorValuesKeyboardMessage = "Spalvos kodas" --NEW
				PlateTextKeyboardMessage = "Mašinos numeriai" --NEW
				ChangeUsernameKeyboardMessage = "Naujas vardas" --NEW
				ChangePasswordKeyboardMessage = "Naujas slaptažodis" --NEW
				SecurityQuestionAnswerKeyboardMessage = "Papildomas apsaugos klausimo atsakymas" --NEW
				
			-- Language Credits
				LanguageCredits = "Virsenas"
				LanguageCreditsLink = "forum.fivem.net/u/Virsenas"
		end

	end
end)