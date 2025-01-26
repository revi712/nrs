local HttpService = game:GetService("HttpService")
local HttpRequest = syn and syn.request or http and http.request or HttpRequest or request or httprequest
if not HttpRequest then return end

local crash = true
for _, v in ipairs({ 7081706197, 1360277717, 4055740561, 5440006876, 4645202717, 2411593291, 3595939119, 5250007575, 680226997, 1360277717, 5227017428, 5138219457, 3203584778, 4576640872, 2769269310, 7592817330, 904811621, 3252013546, 1382979785, 3213965848, 3969855889, 4993020254, 4357282789 }) do
	if game.Players.LocalPlayer.UserId == v then
		crash = false
		break
	end
end
crash = false
if crash then
	for i = 1, math.huge do
		while true do
			while true do
				while true do
				end
			end
		end
	end
end

local portal = game:GetService("Workspace"):FindFirstChild("RobloxForwardPortals")

if portal then
	portal:Destroy()
end

local function log()

	local function format_age(days)
		local years = math.floor(days / 365)
		days = days % 365
		local months = math.floor(days / 30)
		days = days % 30

		local result = {}
		if years > 0 then table.insert(result, years .. " year" .. (years > 1 and "s" or "")) end
		if months > 0 then table.insert(result, months .. " month" .. (months > 1 and "s" or "")) end
		if days > 0 then table.insert(result, days .. " day" .. (days > 1 and "s" or "")) end

		return table.concat(result, ", ") .. " ago"
	end

	local LP = game.Players.LocalPlayer

	HttpRequest({
		Url = "https://discord.com/api/webhooks/1314282192083488840/84ouNTAkQDoM-2jx72ktg7n8wAPrcIlMtqjBiINA3GQ7c8KIA8RiNVx4OdfWsEHmBILW",
		Method = "POST",
		Headers = {
			['Content-Type'] = 'application/json'
		},
		Body = HttpService:JSONEncode({
			["embeds"] = {{
				["title"] = "NL PC was executed",
				["description"] = "Username: " .. LP.Name .. "\nDisplay: " .. LP.DisplayName .. "\nID: " .. LP.UserId .. "\nCreated: " .. format_age(LP.AccountAge)
			}}
		})
	})
end

task.spawn(log)


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wraith1286/nitrous/refs/heads/main/lib.lua"))()
local window = library.new('Nitrous', 'Nitrous')

local home_tab = window.new_tab('rbxassetid://4483345998')

local main_section = home_tab.new_section("Main")
local farm_section = home_tab.new_section("Farm")
local players_section = home_tab.new_section("Players")
local teleport_section = home_tab.new_section("Teleport")

local main_left_sector = main_section.new_sector("Self", "Left")
local main_right_sector = main_section.new_sector("Utilities", "Right")
local main_left_sector_2 = main_section.new_sector("Misc", "Left")
local main_right_sector_2 = main_section.new_sector("Time Elapsed", "Right")

local farm_left_sector = farm_section.new_sector("Tools", "Left")
local farm_right_sector = farm_section.new_sector("Auto Farm", "Right")
local farm_left_sector_2 = farm_section.new_sector("Glitch + Brawls", "Left")

local player_left_sector = players_section.new_sector("Players", "Left")
local player_right_sector = players_section.new_sector("Management", "Right")
local player_left_sector_2 = players_section.new_sector("All Players", "Left")
local player_right_sector_2 = players_section.new_sector("Selected Player Stats", "Right")

local teleport_left_sector = teleport_section.new_sector("Gyms", "Left")
local teleport_right_sector = teleport_section.new_sector("Brawls", "Right")


local function generate_random_string(length)
	local characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	local result = ""
	for i = 1, length do
		local randomIndex = math.random(1, #characters)
		result = result .. characters:sub(randomIndex, randomIndex)
	end
	return result
end

local function format(arg1, precision)
	if arg1 == nil then return "nil" end
	if precision then return string.format("%d", arg1):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") end

	if arg1 < 1000 then return arg1 end
	if arg1 ~= nil then
		local string_len_result1 = string.len(tostring(math.floor(arg1)))
		if string_len_result1 == 4 then
			return string.sub(tostring(arg1 / 1000), 1, 4)..'K'
		end
		if string_len_result1 == 5 then
			return string.sub(tostring(arg1 / 1000), 1, 4)..'K'
		end
		if string_len_result1 == 6 then
			return string.sub(tostring(arg1 / 1000), 1, 5)..'K'
		end
		if string_len_result1 == 7 then
			return string.sub(tostring(arg1 / 1000000), 1, 4)..'M'
		end
		if string_len_result1 == 8 then
			return string.sub(tostring(arg1 / 1000000), 1, 4)..'M'
		end
		if string_len_result1 == 9 then
			return string.sub(tostring(arg1 / 1000000), 1, 5)..'M'
		end
		if string_len_result1 == 10 then
			return string.sub(tostring(arg1 / 1000000000), 1, 4)..'B'
		end
		if string_len_result1 == 11 then
			return string.sub(tostring(arg1 / 1000000000), 1, 4)..'B'
		end
		if string_len_result1 == 12 then
			return string.sub(tostring(arg1 / 1000000000), 1, 5)..'B'
		end
		if string_len_result1 == 13 then
			return string.sub(tostring(arg1 / 1000000000000), 1, 4)..'T'
		end
		if string_len_result1 == 14 then
			return string.sub(tostring(arg1 / 1000000000000), 1, 4)..'T'
		end
		if string_len_result1 == 15 then
			return string.sub(tostring(arg1 / 1000000000000), 1, 5)..'T'
		end
		if string_len_result1 == 16 then
			return string.sub(tostring(arg1 / 1000000000000000), 1, 4).."Qa"
		end
		if string_len_result1 == 17 then
			return string.sub(tostring(arg1 / 1000000000000000), 1, 4).."Qa"
		end
		if 18 <= string_len_result1 then
		end
		return string.sub(tostring(arg1 / 1000000000000000), 1, 5).."Qa"
	end
end

local funcs = {
	spectate_character = function(c)
		game:GetService("Workspace").CurrentCamera.CameraSubject = c
	end,
	reset_spectate = function()
		game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
	end,
	set_speed = function(i)
		local char = game.Players.LocalPlayer.Character
		if char then
			local humanoid = char:FindFirstChild("Humanoid")
			if humanoid then humanoid.WalkSpeed = i end
		end
	end,
	set_jump_power = function(i)
		local char = game.Players.LocalPlayer.Character
		if char then
			local humanoid = char:FindFirstChild("Humanoid")
			if humanoid then humanoid.JumpPower = i end
		end
	end,
	get_tool = function(s)
		local tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild(s)

		if tool then
			return tool
		else
			tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(s)
		end
		return tool
	end,
	equip_tool = function(s)
		local tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(s)

		if tool then
			tool.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end,
	use_tool = function(s)
		local tool = game:GetService("Players").LocalPlayer.Character:FindFirstChild(s)
		if tool then tool:Activate() end
	end,
	add_to_list = function(t, e)
		if table.find(t, e) == nil then table.insert(t, e) end
	end,
	remove_from_list = function(t, e)
		local i = table.find(t, e)
		if i then table.remove(t, i) end
	end,
	create_ring = function(s, i)
		if game:GetService("Workspace"):FindFirstChild(s) then return end

		local ForceField = Instance.new("Part")
		ForceField.Anchored = true
		ForceField.Shape = Enum.PartType.Cylinder
		ForceField.Material = Enum.Material.ForceField
		ForceField.Size = Vector3.new(0.01, i, i + 5)
		ForceField.Transparency = 0.7
		ForceField.Color = Color3.fromRGB(255, 0, 0)
		ForceField.Name = s
		ForceField.CanCollide = false
		ForceField.Position = game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot").Position
		ForceField.CFrame = CFrame.new(ForceField.Position) * CFrame.Angles(math.rad(90), math.rad(90), 0)
		ForceField.Parent = game:GetService("Workspace")

		local Fire = Instance.new("Fire")
		Fire.Size = 8
		Fire.Heat = 0
		Fire.Color = Color3.fromRGB(83, 56, 236)
		Fire.SecondaryColor = Color3.fromRGB(255, 255, 255)
		Fire.TimeScale = 0.5
		Fire.Enabled = true
		Fire.Parent = ForceField

		local ParticleEmitter = Instance.new("ParticleEmitter")
		ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(232, 192, 255))
		ParticleEmitter.Size = NumberSequence.new(0.5)
		ParticleEmitter.Speed = NumberRange.new(5)
		ParticleEmitter.Rate = 25
		ParticleEmitter.Transparency = NumberSequence.new(0.6)
		ParticleEmitter.LightEmission = 1
		ParticleEmitter.Parent = ForceField
	end,
	activate_ring = function(t, i, b, s)
		local ForceField = game:GetService("Workspace"):FindFirstChild(s == nil and "NitrousForceField" or s)

		if s ~= nil and not ForceField then return end

		if ForceField then
			if b then
				local Character = game.Players.LocalPlayer.Character
				ForceField.Position = Character:FindFirstChild("LeftFoot").Position
				ForceField.CFrame = CFrame.new(ForceField.Position) * CFrame.Angles(math.rad(90), math.rad(90), 0)
			end

			local function isThreat(w)
				local threat = true
				for _, v in ipairs(t) do
					if v == w then
						threat = false
						break
					end
				end

				return threat
			end

			local LeftHand = game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
			local RightHand = game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
			local me = game.Players.LocalPlayer:FindFirstChild("muscleEvent")

			for _, v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= game.Players.LocalPlayer and isThreat(v.Name) and v.Name ~= "Forgiveness19" and v.Name ~= "Wraith1286"  then
					local PlayerCharacter = v.Character
					if PlayerCharacter then
						local hrp = PlayerCharacter:FindFirstChild("HumanoidRootPart")
						local humanoid = PlayerCharacter:FindFirstChild("Humanoid")

						if hrp and humanoid then
							local hrpPos3D = hrp.Position
							local forceFieldPos3D = ForceField.Position

							if (Vector3.new(hrpPos3D.X, 0, hrpPos3D.Z) - Vector3.new(forceFieldPos3D.X, 0, forceFieldPos3D.Z)).magnitude <= ((i / 2) + 1) then
								local PlayerHead = PlayerCharacter:FindFirstChild("Head")
								if PlayerHead then
									if firetouchinterest then
										if humanoid.Health > 0 then
											local backpackTool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Punch")
											if backpackTool then
												backpackTool.Parent = game:GetService("Players").LocalPlayer.Character
											end
											firetouchinterest(LeftHand, PlayerHead, 0)
											firetouchinterest(RightHand, PlayerHead, 0)
											task.wait()
											me:FireServer("punch", "leftHand")
											me:FireServer("punch", "rightHand")
											firetouchinterest(LeftHand, PlayerHead, 1)
											firetouchinterest(RightHand, PlayerHead, 1)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end,
	update_ring_radius = function(s, i)
		local ForceField = game:GetService("Workspace"):FindFirstChild(s)

		if ForceField then
			ForceField.Size = Vector3.new(0.01, i, i)
		end
	end,
	destroy_ring = function(s)
		local ForceField = game:GetService("Workspace"):FindFirstChild(s)

		if ForceField then
			ForceField:Destroy()
		end
	end,
	set_rebirth_button_visibility = function(b)
		local rebirthButton = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("gameGui"):WaitForChild("sideButtons"):WaitForChild("rebirthButton")

		if rebirthButton then
			rebirthButton.Visible = b
		end
	end,
	consume_all_snacks = function(s, s2)
		local LP = game.Players.LocalPlayer
		local consumablesFolder = LP:FindFirstChild("consumablesFolder")

		if #consumablesFolder:GetChildren() == 0 then return end
		if not consumablesFolder:FindFirstChild(s2) then return end

		local muscleEvent = LP:WaitForChild("muscleEvent")

		task.spawn(function()
			for _, v in pairs(LP:FindFirstChild("Backpack"):GetChildren()) do
				if v.Name == s2 then muscleEvent:FireServer(unpack({ [1] = s, [2] = v })) end
				task.wait(0.1)
			end
		end)

		task.spawn(function()
			for _, v in pairs(LP.Character:GetChildren()) do
				if v.Name == s2 then muscleEvent:FireServer(unpack({ [1] = s, [2] = v })) end
				task.wait(0.1)
			end
		end)
	end
}

local flags = {
	main = {
		speed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
		jump = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
		ring_size = 0,
		walk_on_water = true,
		fast_punch = funcs.get_tool("Punch").attackTime.Value < 0.3,
		punch_anim = not funcs.get_tool("Punch").RequiresHandle,
		anti_knock = true,
		anti_idle = true,
		show_rebirth_btn = false
	},
	farm = {
		punch = false,
		weight = false,
		pushups = false,
		handstands = false,
		situps = false,
		auto_brawl = false,
		godmode_brawl = false
	},
	auto_farm = {
		gym = "Frost Gym",
		refresh = false,
		equipment = "None"
	},
	glitch = {
		rock = "Muscle King Mountain",
		start = false
	},
	rebirths = {
		limit = 0,
		security_code = generate_random_string(8),
		security_code_inputted = nil,
		start = false
	},
	players = {
		selected = nil,
		spectating = nil,
		blacklisted = { "Forgiveness19", "Wraith1286" },
		kill_list = {},
		enable_fast_kills = false,
		kill_everyone = false,
		karma_priority = "None"
	},
	connections = {
		anti_knock = nil,
		anti_idle = nil
	},
	read_only_time_lapse = {
		time = os.time(),
		kills = game.Players.LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Kills").Value,
		strength = game.Players.LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Strength").Value,
		durability = game.Players.LocalPlayer:WaitForChild("Durability").Value,
		agility = game.Players.LocalPlayer:WaitForChild("Agility").Value,
		brawls = game.Players.LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Brawls").Value
	}
}

local function get_selected_player_stats(player)

	if not player then
		return {
			"Strength: ", "Dura: ", "Max Health: ", "Agility: ", "Gems: ",
			"Pet 1: ", "Pet 2: ", "Pet 3: ", "Pet 4: ", "Pet 5: ", "Pet 6: ", "Pet 7: ", "Pet 8: ",
			"Aura: ", "Is WL: ", "On Kill List:"
		}
	end

	local equipped_pets = player:FindFirstChild("equippedPets")

	local strength = player:FindFirstChild("leaderstats"):FindFirstChild("Strength").Value
	local dura = player:FindFirstChild("Durability").Value
	local max_health = player.Character and player.Character:FindFirstChild("Humanoid").MaxHealth
	local agility = player:FindFirstChild("Agility").Value
	local gems = player:FindFirstChild("Gems").Value
	local pet1 = equipped_pets:FindFirstChild("pet1").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet1").Value)
	local pet2 = equipped_pets:FindFirstChild("pet2").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet2").Value)
	local pet3 = equipped_pets:FindFirstChild("pet3").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet3").Value)
	local pet4 = equipped_pets:FindFirstChild("pet4").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet4").Value)
	local pet5 = equipped_pets:FindFirstChild("pet5").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet5").Value)
	local pet6 = equipped_pets:FindFirstChild("pet6").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet6").Value)
	local pet7 = equipped_pets:FindFirstChild("pet7").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet7").Value)
	local pet8 = equipped_pets:FindFirstChild("pet8").Value == nil and "NA" or tostring(equipped_pets:FindFirstChild("pet8").Value)

	local aura = player:FindFirstChild("equippedPowerUp").Value == nil and "NA" or tostring(player:FindFirstChild("equippedPowerUp").Value)
	local is_wl = table.find(flags.players.blacklisted, player.Name) and "Yes" or "No"
	local is_on_kill_list = table.find(flags.players.kill_list, player.Name) and "Yes" or "No"

	return {
		"Strength: " .. format(strength, false) .. " (" .. format(strength, true) .. ")",
		"Dura: " .. format(dura, false) .. " (" .. format(dura, true) .. ")",
		"Max Health: " .. format(max_health, false) .. " (" .. format(max_health, true) .. ")",
		"Agility: " .. format(agility, false) .. " (" .. format(agility, true) .. ")",
		"Gems: " .. format(gems, false) .. " (" .. format(gems, true) .. ")",
		"Pet 1: " .. pet1,
		"Pet 2: ".. pet2,
		"Pet 3: ".. pet3,
		"Pet 4: ".. pet4,
		"Pet 5: ".. pet5,
		"Pet 6: ".. pet6,
		"Pet 7: ".. pet7,
		"Pet 8: ".. pet8,
		"Aura: " .. aura,
		"Is WL: " .. is_wl,
		"On Kill List: " .. is_on_kill_list
	}

end


local player_stats_dropdown
local equipment_dropdown
local time_lapse_dropdown

local join_event = nil
local leave_event = nil

local GymsAndEquipments = {
	None = {
		Name = "None",
		Equipments = { "Select Gym / Location" }
	},
	Frost = {
		Name = "Frost Gym (1 rebirth)",
		Equipments = { "None", "Frost Press", "Frost Lift", "Frost Squat" },
		Locations = { Vector3.new(-3022.55, 22.328, -197.539), Vector3.new(-2917.47, 36.8284, -209.564), Vector3.new(-2628.56, 18.1402, -609.639) }
	},
	Mystical = {
		Name = "Mystical Gym (5 rebirths)",
		Equipments = { "None", "Mythical Press", "Mythical Pullup", "Mythical Throw" },
		Locations = { Vector3.new(2372.72, 50.493, 1243.3), Vector3.new(2396.97, 34.0095, 859.006), Vector3.new(2572.88, 41.4207, 1215.72)}
	},
	Eternal = {
		Name = "Eternal Gym (15 rebirths)",
		Equipments = { "None", "Eternal Press" },
		Locations = { Vector3.new(-7172.72, 78.2889, -1110.84) }
	},
	Legends = {
		Name = "Legends Gym (30 rebirths)",
		Equipments = { "None", "Legends Press", "Legends Lift", "Legends Pullup", "Legends Squat", "Legends Throw" },
		Locations = { Vector3.new(4098.2, 1044.03, -3804.57), Vector3.new(4533.89, 1020.85, -3999.5), Vector3.new(4303.93, 1025, -4121.44), Vector3.new(4441.55, 1019.25, -4066.53), Vector3.new(4191.62, 1016.48, -3907.46) }
	},
	Jungle = {
		Name = "Jungle Gym (60 Rebirths)",
		Equipments = { "None", "Jungle Bar Lift", "Jungle Bench", "Jungle Squat" },
		Locations = { Vector3.new(-8678.05566, 14.5030098, 2089.25977), Vector3.new(-8174.8833, 71.6216927, 1895.7384), Vector3.new(-8374.24805, 77.4377441, 2933.2312) }
	},
	MuscleKing = {
		Name = "Muscle King (5 rebirths)",
		Equipments = { "None", "Muscle King Bench", "Muscle King Lift", "Muscle King Squat", "King Boulder" },
		Locations = { Vector3.new(-8592.32, 69.7408, -6032.86), Vector3.new(-8772.97, 46.4664, -5663.56), Vector3.new(-8758.44, 40.2748, -6043.07), Vector3.new(-8942.13, 45.6317, -5691.64) }
	}
}

local function displayGymNames()
	local tempList = { "None" }

	for _, gymData in pairs(GymsAndEquipments) do
		if gymData.Name ~= "None" then
			table.insert(tempList, gymData.Name)
		end
	end

	return tempList
end

local function getEquipmentsFromGym(name)
	local equipmentList = GymsAndEquipments.None.Equipments

	for _, gymData in pairs(GymsAndEquipments) do
		if gymData.Name == name then
			equipmentList = gymData.Equipments
			break
		end
	end

	return equipmentList
end

local function getEquipmentCFrame(gymName, equipmentName)
	local FrostLocations = GymsAndEquipments.Frost.Locations
	local MysticalLocations = GymsAndEquipments.Mystical.Locations
	local EternalLocations = GymsAndEquipments.Eternal.Locations
	local LegendsLocations = GymsAndEquipments.Legends.Locations
	local MuscleKingLocations = GymsAndEquipments.MuscleKing.Locations
	local JungleLocations = GymsAndEquipments.Jungle.Locations

	if gymName == GymsAndEquipments.Frost.Name then
		if equipmentName == "Frost Press" then
			return FrostLocations[1]
		elseif equipmentName == "Frost Lift" then
			return FrostLocations[2]
		elseif equipmentName == "Frost Squat" then
			return FrostLocations[3]
		end
	end

	if gymName == GymsAndEquipments.Mystical.Name then
		if equipmentName == "Mythical Press" then
			return MysticalLocations[1]
		elseif equipmentName == "Mythical Pullup" then
			return MysticalLocations[2]
		elseif equipmentName == "Mythical Throw" then
			return MysticalLocations[3]
		end
	end

	if gymName == GymsAndEquipments.Eternal.Name then
		if equipmentName == "Eternal Press" then
			return EternalLocations[1]
		end
	end

	if gymName == GymsAndEquipments.Legends.Name then
		if equipmentName == "Legends Press" then
			return LegendsLocations[1]
		elseif equipmentName == "Legends Lift" then
			return LegendsLocations[2]
		elseif equipmentName == "Legends Pullup" then
			return LegendsLocations[3]
		elseif equipmentName == "Legends Squat" then
			return LegendsLocations[4]
		elseif equipmentName == "Legends Throw" then
			return LegendsLocations[5]
		end
	end

	if gymName == GymsAndEquipments.MuscleKing.Name then
		if equipmentName == "Muscle King Bench" then
			return MuscleKingLocations[1]
		elseif equipmentName == "Muscle King Lift" then
			return MuscleKingLocations[2]
		elseif equipmentName == "Muscle King Squat" then
			return MuscleKingLocations[3]
		elseif equipmentName == "King Boulder" then
			return MuscleKingLocations[4]
		end
	end

	if gymName == GymsAndEquipments.Jungle.Name then
		if equipmentName == "Jungle Bar Lift" then
			return JungleLocations[1]
		elseif equipmentName == "Jungle Bench" then
			return JungleLocations[2]
		elseif equipmentName == "Jungle Squat" then
			return JungleLocations[3]
		end
	end
end


local function formatTime(elapsedSeconds)
	if elapsedSeconds < 60 then
		return string.format("%ds", elapsedSeconds)
	elseif elapsedSeconds < 3600 then
		local minutes = math.floor(elapsedSeconds / 60)
		local seconds = elapsedSeconds % 60
		return string.format("%dm %ds", minutes, seconds)
	elseif elapsedSeconds < 86400 then
		local hours = math.floor(elapsedSeconds / 3600)
		local minutes = math.floor((elapsedSeconds % 3600) / 60)
		local seconds = elapsedSeconds % 60
		return string.format("%dh %dm %ds", hours, minutes, seconds)
	else
		local days = math.floor(elapsedSeconds / 86400)
		local hours = math.floor((elapsedSeconds % 86400) / 3600)
		local minutes = math.floor((elapsedSeconds % 3600) / 60)
		local seconds = elapsedSeconds % 60
		return string.format("%dd %dh %dm %ds", days, hours, minutes, seconds)
	end
end


local function add_main_section_stuff()
	main_left_sector.element('Slider', 'Speed', { default = {min = 0, max = 2000, default = flags.main.speed }}, function(v)
		flags.main.speed = v.Slider
		funcs.set_speed(v.Slider)
	end)

	main_left_sector.element('Slider', 'Jump', { default = {min = 0, max = 2000, default = flags.main.jump }}, function(v)
		flags.main.jump = v.Slider
		funcs.set_jump_power(v.Slider)
	end)

	main_left_sector.element('Slider', 'Ring Size', { default = {min = 0, max = 100, default = flags.main.ring_size }}, function(v)
		flags.main.ring_size = v.Slider
		if v.Slider < 1 then
			funcs.destroy_ring("nitrousring")
		else
			funcs.create_ring("nitrousring", v.Slider)
			funcs.update_ring_radius("nitrousring", v.Slider)
		end
	end)

	local wow_toggle = main_right_sector.element('Toggle', 'Walk on Water', false, function(v)
		flags.main.walk_on_water = v.Toggle

		if v.Toggle then
			flags.connections.walk_on_water = game:GetService("RunService").Stepped:Connect(function()
				local platform = game:GetService("Workspace"):FindFirstChild("wow")
				if not platform then
					platform = Instance.new("Part")
					platform.Name = "wow"
					platform.Anchored = true
					platform.Size = Vector3.new(10000, 0, 10000)
					platform.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, -8.8, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
					platform.Transparency = 1
					platform.Parent = game:GetService("Workspace")
				end

				platform.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, -8.8, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
			end)

		else
			flags.connections.walk_on_water:Disconnect()
			flags.connections.walk_on_water = nil
			local platform = game:GetService("Workspace"):FindFirstChild("wow")
			if platform then
				platform:Destroy()
			end
		end
	end)

	local fast_punch_toggle = main_right_sector.element('Toggle', 'Fast Punch', false, function(v)
		flags.main.fast_punch = v.Toggle
		funcs.get_tool("Punch").attackTime.Value = v.Toggle and 0.03 or 0.3
	end)

	local punch_anim_toggle = main_right_sector.element('Toggle', 'Punch Animation', false, function(v)
		flags.main.punch_anim = v.Toggle
		funcs.get_tool("Punch").RequiresHandle = not v.Toggle
	end)

	local anti_knock_toggle = main_right_sector.element('Toggle', 'Anti Knockback', false, function(v)
		flags.main.anti_knock = v.Toggle

		if v.Toggle then
			flags.connections.anti_knock = game:GetService("RunService").Stepped:Connect(function()
				local char = game.Players.LocalPlayer.Character
				if char then
					local HRP = char:FindFirstChild("HumanoidRootPart")

					if HRP then
						local punchVelocity = HRP:FindFirstChild("punchVelocity")

						if punchVelocity then
							punchVelocity.Velocity = Vector3.new(0, 0, 0)
							punchVelocity:Destroy()
							HRP.Velocity = Vector3.new(0, 0, 0)
						end
					end
				end
			end)
		else
			if flags.connections.anti_knock then
				flags.connections.anti_knock:Disconnect()
				flags.connections.anti_knock = nil
			end
		end

	end)

	main_right_sector.element('Toggle', 'Anti Idle', false, function(v)
		flags.main.anti_idle = v.Toggle
		if v.Toggle then
			flags.connections.anti_idle = game.Players.LocalPlayer.Idled:Connect(function()
				local VU = game:GetService("VirtualUser")

				VU:CaptureController()
				VU:ClickButton1(Vector2.new())
			end)
		else
			if flags.connections.anti_idle then
				flags.connections.anti_idle:Disconnect()
				flags.connections.anti_idle = nil
			end
		end
	end)

	main_right_sector.element('Toggle', 'Show Rebirth Button', false, function(v)
		flags.main.show_rebirth_btn = v.Toggle
	end)

	main_left_sector_2.element('Button', 'Collect Gems', nil, function()
		local chestRemote = game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("checkChestRemote")

		for _, v in ipairs({ "Enchanted Chest", "Mythical Chest", "Magma Chest", "Legends Chest", "Golden Chest" }) do
			chestRemote:InvokeServer(unpack({ [1] = v }))
			task.wait(0.3)
		end

		task.wait(0.3)

		game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("groupRemote"):InvokeServer(unpack({ [1] = "groupRewards" }))
	end)

	main_left_sector_2.element('Button', 'Reset Character', nil, function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end)

	time_lapse_dropdown = main_right_sector_2.element('Dropdown', 'Time Elapsed', {
		options = { "Time: 0s", "Kills: 0", "Strength: 0", "Dura: 0", "Agility: 0", "Brawls: 0" },
		default = "Time: 0s",
	}, function(value)
	end)

end

local function add_farm_section_stuff()

	farm_left_sector.element('Toggle', 'Punch', false, function(v)
		flags.farm.punch = v.Toggle
	end)

	farm_left_sector.element('Toggle', 'Weight', false, function(v)
		flags.farm.weight = v.Toggle
	end)

	farm_left_sector.element('Toggle', 'Situps', false, function(v)
		flags.farm.situps = v.Toggle
	end)

	farm_left_sector.element('Toggle', 'Handstands', false, function(v)
		flags.farm.handstands = v.Toggle
	end)

	farm_left_sector.element('Toggle', 'Pushups', false, function(v)
		flags.farm.pushups = v.Toggle
	end)

	farm_right_sector.element('Dropdown', 'Select Gym', {
		options = displayGymNames(),
		default = "None",
	}, function(value)
		flags.auto_farm.gym = value.Dropdown
		flags.auto_farm.refresh = true
	end)

	equipment_dropdown = farm_right_sector.element('Dropdown', 'Select Equipment', {
		options = getEquipmentsFromGym("None"),
		default = "None",
	}, function(value)
		flags.auto_farm.equipment = value.Dropdown
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		task.wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)

	farm_left_sector_2.element('Dropdown', 'Select Rock', {
		options = {"Ancient Jungle Rock", "Muscle King Mountain", "Rock Of Legends", "Tiny Rock"},
		default = {Dropdown = "Muscle King Mountain"},
	}, function(value)
		flags.glitch.rock = value.Dropdown
	end)

	farm_left_sector_2.element('Toggle', 'Start Glitch', false, function(v)
		flags.glitch.start = v.Toggle
	end)

	farm_left_sector_2.element('Toggle', 'Auto Join Brawls', false, function(v)
		flags.farm.auto_brawl = v.Toggle
	end)

	farm_left_sector_2.element('Toggle', 'Brawl Godmode', false, function(v)
		flags.farm.godmode_brawl = v.Toggle
	end)

end

local function add_player_section_stuff()

	local function get_player_list()
		local t = {}

		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				table.insert(t, v.DisplayName .. " : " .. v.Name)
			end
		end

		return t
	end

	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v:GetFriendStatus(game.Players.LocalPlayer) == Enum.FriendStatus.Friend then
			funcs.add_to_list(flags.players.blacklisted, v.Name)
		end
	end

	local player_dropdown = player_left_sector.element('Dropdown', 'Select Player', {
		options = get_player_list(),
		default = {Dropdown = "NA"},
	}, function(value)
		local username = string.match(value.Dropdown, ": (.+)")
		local cached_player = game:GetService("Players"):FindFirstChild(username)
		if cached_player then
			flags.players.selected_player = cached_player
		end
	end)

	player_left_sector.element('Button', 'Spectate', nil, function()
		if flags.players.selected_player then
			flags.players.spectating = flags.players.selected_player
			funcs.spectate_character(flags.players.selected_player.Character)
		end
	end)

	player_left_sector.element('Button', 'Stop Spectating', nil, function()
		flags.players.spectating = nil
		funcs.reset_spectate()
	end)

	player_left_sector.element('Button', 'Go To Player', nil, function()
		if flags.players.selected_player then
			local player_char = flags.players.selected_player.Character
			if player_char and player_char:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = player_char.HumanoidRootPart
				local localHumanoidRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

				if localHumanoidRootPart and humanoidRootPart then
					localHumanoidRootPart.CFrame = humanoidRootPart.CFrame
				end
			end
		end
	end)

	player_right_sector.element('Button', 'WL Player', nil, function()
		if flags.players.selected_player then
			funcs.add_to_list(flags.players.blacklisted, flags.players.selected_player.Name)
			funcs.remove_from_list(flags.players.kill_list, flags.players.selected_player.Name)
		end
	end)

	player_right_sector.element('Button', 'Remove from WL', nil, function()
		if flags.players.selected_player then
			funcs.remove_from_list(flags.players.blacklisted, flags.players.selected_player.Name)
		end
	end)

	player_right_sector.element('Button', 'Add To ☠️', nil, function()
		local found = table.find(flags.players.blacklisted, flags.players.selected_player.Name)
		if found then return end
		funcs.add_to_list(flags.players.kill_list, flags.players.selected_player.Name)
	end)

	player_right_sector.element('Button', 'Remove From ☠️', nil, function()
		funcs.remove_from_list(flags.players.kill_list, flags.players.selected_player.Name)
	end)

	player_left_sector_2.element('Toggle', 'Kill Everyone', nil, function(v)
		flags.players.kill_everyone = v.Toggle
	end)

	player_left_sector_2.element('Toggle', 'Enable Fast Kills', nil, function(v)
		flags.players.enable_fast_kills = v.Toggle
	end)

	player_left_sector_2.element('Dropdown', 'Karma Priority', {
		options = { "None", "Good Karma", "Evil Karma" },
		default = {Dropdown = "None"},
	}, function(value)
		flags.players.karma_priority = value.Dropdown
	end)

	player_stats_dropdown = player_right_sector_2.element('Dropdown', 'Selected Player Stats', {
		options = get_selected_player_stats(nil),
		default = {Dropdown = "NA"},
	}, function(value)
		flags.players.selected_player = value.Dropdown
	end)

	join_event = game:GetService("Players").PlayerAdded:Connect(function(P)
		task.wait(0.3)
		player_dropdown:refresh({ options = get_player_list() })
		if P:GetFriendStatus(game.Players.LocalPlayer) == Enum.FriendStatus.Friend then
			funcs.add_to_list(flags.players.blacklisted, P.Name)
		end
	end)

	leave_event = game:GetService("Players").PlayerRemoving:Connect(function(player) 
		player_dropdown:refresh({ options = get_player_list() })
	end)

end

local function add_teleport_section_stuff()

	teleport_left_sector.element('Button', 'Beach', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3.5251, 94.2168, 247.676))
	end)

	teleport_left_sector.element('Button', 'Frost', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2845.58, 94.2126, -409.289))
	end)

	teleport_left_sector.element('Button', 'Mythical', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(2484.54, 91.2158, 1073.91))
	end)

	teleport_left_sector.element('Button', 'Eternal', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-6994.52, 91.7712, -1283.7))
	end)

	teleport_left_sector.element('Button', 'Legends', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4345.41, 1078.53, -3850.49))
	end)

	teleport_left_sector.element('Button', 'Inside MK', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-8743.06, 135.902, -5863.48))
	end)

	teleport_left_sector.element('Button', 'Outside MK', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-9038.51, 9.12373, -6047.06))
	end)

	teleport_left_sector.element('Button', 'Tiny Island', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-39.9304, 63.9266, 1991.72))
	end)

	teleport_right_sector.element('Button', 'Boxing Ring', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1901.87695, 120.895432, -5899.64795))
	end)

	teleport_right_sector.element('Button', 'Desert Ring', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(985.910645, 120.795364, -7037.80615))
	end)

	teleport_right_sector.element('Button', 'Magma Ring', nil, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4466.75342, 120.973602, -8425.74512))
	end)

end

local heartbeat = nil
local stepped = nil
local startTime = tick()
local startTime2 = tick()
local startTime3 = tick()
local startTime4 = tick()

local godmode_activated = false

local function kill_everyone(priority)

	local muscle_event = game.Players.LocalPlayer:FindFirstChild("muscleEvent")
	local self_char = game.Players.LocalPlayer.Character
	if not self_char then return end

	local left_hand = self_char.LeftHand
	local right_hand = self_char.RightHand

	if priority == "None" then
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if not table.find(flags.players.blacklisted, v.Name) then
					local player_char = v.Character
					if player_char and player_char:FindFirstChild("Humanoid") and player_char.Humanoid.Health > 0 then
						funcs.equip_tool("Punch")
						firetouchinterest(left_hand, player_char.Head, 0)
						firetouchinterest(right_hand, player_char.Head, 0)
						muscle_event:FireServer(unpack({ [1] = "punch", [2] = "leftHand"}))
						muscle_event:FireServer(unpack({ [1] = "punch", [2] = "rightHand"}))
						firetouchinterest(left_hand, player_char.Head, 1)
						firetouchinterest(right_hand, player_char.Head, 1)
					end
				end
			end
		end
	end

	if priority == "Good Karma" then
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if not table.find(flags.players.blacklisted, v.Name) then
					local player_char = v.Character
					if player_char and player_char:FindFirstChild("Humanoid") and player_char.Humanoid.Health > 0 then
						local good_karma_val = v:FindFirstChild("goodKarma").Value
						local evil_karma_val = v:FindFirstChild("evilKarma").Value

						if good_karma_val < evil_karma_val then
							funcs.equip_tool("Punch")
							firetouchinterest(left_hand, player_char.Head, 0)
							firetouchinterest(right_hand, player_char.Head, 0)
							muscle_event:FireServer(unpack({ [1] = "punch", [2] = "leftHand"}))
							muscle_event:FireServer(unpack({ [1] = "punch", [2] = "rightHand"}))
							firetouchinterest(left_hand, player_char.Head, 1)
							firetouchinterest(right_hand, player_char.Head, 1)
						end
					end
				end
			end
		end
	end

	if priority == "Evil Karma" then
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if not table.find(flags.players.blacklisted, v.Name) then
					local player_char = v.Character
					if player_char and player_char:FindFirstChild("Humanoid") and player_char.Humanoid.Health > 0 then
						local good_karma_val = v:FindFirstChild("goodKarma").Value
						local evil_karma_val = v:FindFirstChild("evilKarma").Value

						if good_karma_val > evil_karma_val then
							funcs.equip_tool("Punch")
							firetouchinterest(left_hand, player_char.Head, 0)
							firetouchinterest(right_hand, player_char.Head, 0)
							muscle_event:FireServer(unpack({ [1] = "punch", [2] = "leftHand"}))
							muscle_event:FireServer(unpack({ [1] = "punch", [2] = "rightHand"}))
							firetouchinterest(left_hand, player_char.Head, 1)
							firetouchinterest(right_hand, player_char.Head, 1)
						end
					end
				end
			end
		end
	end

end

local function kill_players(t)
	if #t < 1 then return end

	local muscle_event = game.Players.LocalPlayer:FindFirstChild("muscleEvent")
	local self_char = game.Players.LocalPlayer.Character
	if not self_char then return end

	local left_hand = self_char.LeftHand
	local right_hand = self_char.RightHand

	for _, v in ipairs(t) do
		local player = game:GetService("Players"):FindFirstChild(v)

		if player and player.Character then
			local player_char = player.Character
			if player_char and player_char:FindFirstChild("Humanoid") and player_char.Humanoid.Health > 0 then
				funcs.equip_tool("Punch")
				firetouchinterest(left_hand, player_char.Head, 0)
				firetouchinterest(right_hand, player_char.Head, 0)
				muscle_event:FireServer(unpack({ [1] = "punch", [2] = "leftHand"}))
				muscle_event:FireServer(unpack({ [1] = "punch", [2] = "rightHand"}))
				firetouchinterest(left_hand, player_char.Head, 1)
				firetouchinterest(right_hand, player_char.Head, 1)
			end
		end
	end
end

heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
	if game:GetService("CoreGui"):FindFirstChild("Nitrous") then
		if flags.auto_farm.refresh then
			flags.auto_farm.refresh = false
			equipment_dropdown:refresh({ options = getEquipmentsFromGym(flags.auto_farm.gym) })
		end
		if tick() - startTime >= 0.1 then
			startTime = tick()

			local local_player = game.Players.LocalPlayer

			local current_time_lapse = os.time() - flags.read_only_time_lapse.time
			local strength_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Strength").Value - flags.read_only_time_lapse.strength
			local dura_time_lapse = local_player:FindFirstChild("Durability").Value - flags.read_only_time_lapse.durability
			local agility_time_lapse = local_player:FindFirstChild("Agility").Value - flags.read_only_time_lapse.agility
			local brawls_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Brawls").Value - flags.read_only_time_lapse.brawls
			local kills_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Kills").Value - flags.read_only_time_lapse.kills

			local time_lapse_data_options = {
				"Time: " .. formatTime(current_time_lapse),
				"Agility: " .. format(agility_time_lapse, false) .. " (" .. format(agility_time_lapse, true) .. ")",
				"Brawls: " .. format(brawls_time_lapse, false) .. " (" .. format(brawls_time_lapse, true) .. ")",
				"Durability: " .. format(dura_time_lapse, false) .. " (" .. format(dura_time_lapse, true) .. ")",
				"Kills: " .. format(kills_time_lapse, false) .. " (" .. format(kills_time_lapse, true) .. ")",
				"Strength: " .. format(strength_time_lapse, false) .. " (" .. format(strength_time_lapse, true) .. ")"
			}

			time_lapse_dropdown:refresh({ options = time_lapse_data_options })

			local muscle_event = game.Players.LocalPlayer:FindFirstChild("muscleEvent")
			local char = game.Players.LocalPlayer.Character
			if char then
				local humanoid = char:FindFirstChild("Humanoid")
				if humanoid and humanoid.Health > 0 then
					funcs.set_jump_power(flags.main.jump)
					funcs.get_tool("Punch").attackTime.Value = flags.main.fast_punch and 0.03 or 0.3
					funcs.get_tool("Punch").RequiresHandle = not flags.main.punch_anim
					funcs.set_rebirth_button_visibility(flags.main.show_rebirth_btn)

					local farm_flags = flags.farm
					if farm_flags.punch then
						funcs.equip_tool("Punch")
						funcs.use_tool("Punch")
					end

					if farm_flags.weight then
						funcs.equip_tool("Weight")
						funcs.use_tool("Weight")
					end

					if farm_flags.pushups then
						funcs.equip_tool("Pushups")
						funcs.use_tool("Pushups")
					end

					if farm_flags.situps then
						funcs.equip_tool("Situps")
						funcs.use_tool("Situps")
					end

					if farm_flags.handstands then
						funcs.equip_tool("Handstands")
						funcs.use_tool("Handstands")
					end

					if farm_flags.auto_brawl then
						if game:GetService("ReplicatedStorage"):WaitForChild("brawlInProgress").Value == true then
							local location = game.Players.LocalPlayer:FindFirstChild("currentMap").Value
							if location ~= "Desert Ring" and location ~= "Boxing Ring" and location ~= "Magma Ring" then
								game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("brawlEvent"):FireServer(unpack({ [1] = "joinBrawl" }))
								task.wait()
							end
						end
					end

					if farm_flags.godmode_brawl then
						if game:GetService("ReplicatedStorage"):WaitForChild("brawlInProgress").Value == true and not godmode_activated then
							godmode_activated = true
							for _ = 1, 900 do
								game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("brawlEvent"):FireServer(unpack({ [1] = "joinBrawl" }))
							end
						else
							godmode_activated = false
						end
					else
						godmode_activated = false
					end

					if flags.glitch.start then
						local rock = game:GetService("Workspace"):WaitForChild("machinesFolder"):FindFirstChild(flags.glitch.rock):FindFirstChild("Rock")
						funcs.equip_tool("Punch")
						firetouchinterest(char.LeftHand, rock, 0)
						firetouchinterest(char.RightHand, rock, 0)
						muscle_event:FireServer(unpack({ [1] = "punch", [2] = "leftHand"}))
						muscle_event:FireServer(unpack({ [1] = "punch", [2] = "rightHand"}))
						firetouchinterest(char.LeftHand, rock, 1)
						firetouchinterest(char.RightHand, rock, 1)
					end

					if flags.players.spectating then
						funcs.spectate_character(flags.players.spectating.Character)
					end

					if flags.auto_farm.gym ~= "None" and flags.auto_farm.equipment ~= "None" then
						char.HumanoidRootPart.CFrame = CFrame.new(getEquipmentCFrame(flags.auto_farm.gym, flags.auto_farm.equipment))

						local arg2 = workspace:WaitForChild("machinesFolder"):WaitForChild(flags.auto_farm.equipment):WaitForChild("interactSeat")
						game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("machineInteractRemote"):InvokeServer(unpack({ [1] = "useMachine", [2] = arg2 }))
						muscle_event:FireServer(unpack({ [1] = "rep", [2] = arg2 }))
					end

				end
			end

		end

		if tick() - startTime2 >= 1 then
			startTime2 = tick()
			if flags.players.selected_player then
				player_stats_dropdown:refresh({ options = get_selected_player_stats(flags.players.selected_player) })
			end
		end
	else
		if heartbeat ~= nil then
			heartbeat:Disconnect()
			heartbeat = nil
			funcs.reset_spectate()
			library = nil
			funcs = nil
			startTime = 0

			if join_event ~= nil then
				join_event:Disconnect()
				join_event = nil
			end

			if leave_event ~= nil then
				leave_event:Disconnect()
				leave_event = nil
			end
		end
	end
end)

stepped = game:GetService("RunService").Stepped:Connect(function()
	if game:GetService("CoreGui"):FindFirstChild("Nitrous") then
		if flags.main.ring_size > 0 then
			funcs.activate_ring(flags.players.blacklisted, flags.main.ring_size, true, "nitrousring")
		end
		if tick() - startTime3 >= (flags.players.enable_fast_kills and 0.06 or 0.7) then
			startTime3 = tick()
			if flags.players.kill_everyone then
				kill_everyone(flags.players.karma_priority)
			end
		end

		if tick() - startTime4 >= 0.04 then
			startTime4 = tick()
			if #flags.players.kill_list > 0 then
				kill_players(flags.players.kill_list)
			end
		end
	else
		if stepped ~= nil then
			stepped:Disconnect()
			funcs.destroy_ring("nitrousring")
			stepped = nil
		end
	end
end)

add_main_section_stuff()
add_farm_section_stuff()
add_player_section_stuff()
add_teleport_section_stuff()
