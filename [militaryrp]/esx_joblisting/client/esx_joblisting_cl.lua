--------------------------------------------------------
--------------------- NO TOUCHY ------------------------
--------------------------------------------------------
local Keys = {
	["ESC"] = 322, ["BACKSPACE"] = 177, ["E"] = 38, ["ENTER"] = 18,	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173
}

local menuIsShowed				  = false
local hasAlreadyEnteredMarker     = false
local lastZone                    = nil
local isInJoblistingMarker 		  = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--------------------------------------------------------
-------------------- YOU MAY TOUCH ---------------------
--------------------------------------------------------

function ShowJobListingMenu(data)
	ESX.TriggerServerCallback('esx_joblisting:getJobsList', function(data)
		local elements = {}

		table.insert(elements, { label = "United States", value = "unitedstates" })
		table.insert(elements, { label = "United Kingdom", value = "unitedkingdom" })
		table.insert(elements, { label = "Russian Federation", value = "russianfederation" })
		table.insert(elements, { label = "China", value = "china" })
		table.insert(elements, { label = "", value = "" }) --Spacer
		table.insert(elements, { label = "Leave Faction", value = "lf" })

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'joblisting',
			{
				title    = _U('job_center'),
				elements = elements
			},
			function(data, menu)
				if data.current.value == "unitedstates" then
					TriggerServerEvent('esx_joblisting:checkJobUS', source)

				elseif data.current.value == "unitedkingdom" then
					TriggerServerEvent('esx_joblisting:checkJobUK', source)

				elseif data.current.value == "russianfederation" then
					TriggerServerEvent('esx_joblisting:checkJobRF', source)

				elseif data.current.value == "china" then
					TriggerServerEvent('esx_joblisting:checkJobCN', source)
					
				elseif data.current.value == "lf" then
					TriggerServerEvent('esx_joblisting:leaveJob', source)

				end
				menu.close()
			end,
			function(data, menu)
				menu.close()
			end
		)

	end)
end

--------------------------------------------------------
------------------Teleport Functions--------------------
--------------------------------------------------------

--US--

RegisterNetEvent('esx_joblisting:TP2US')
AddEventHandler('esx_joblisting:TP2US', function(source)
		ESX.ShowNotification("Welcome Grunt, Let's Go!")	
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
		SetEntityCoords (GetPlayerPed(-1), tonumber("-2344.7475585938"), tonumber("3267.8195800781"), tonumber("32.81075668335"))
	end)
end)

--UK--

RegisterNetEvent('esx_joblisting:TP2UK')
AddEventHandler('esx_joblisting:TP2UK', function(source)
		ESX.ShowNotification("Welcome Grunt, Let's Go!")	
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
		SetEntityCoords (GetPlayerPed(-1), tonumber("1715.5010986328"), tonumber("3322.4750976563"), tonumber("41.223518371582"))
	end)
end)

--RF--

RegisterNetEvent('esx_joblisting:TP2RF')
AddEventHandler('esx_joblisting:TP2RF', function(source)
		ESX.ShowNotification("Welcome Grunt, Let's Go!")	
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
		SetEntityCoords (GetPlayerPed(-1), tonumber("-1226.0852050781"), tonumber("-2801.3203125"), tonumber("13.951337814331"))
	end)
end)

--CN--

RegisterNetEvent('esx_joblisting:TP2CN')
AddEventHandler('esx_joblisting:TP2CN', function(source)
		ESX.ShowNotification("Welcome Grunt, Let's Go!")	
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
		TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
		SetEntityCoords (GetPlayerPed(-1), tonumber("795.625"), tonumber("-2977.7133789063"), tonumber("6.0209379196167"))
	end)
end)

--Player attempting to "George Washington" out of their faction.

RegisterNetEvent('esx_joblisting:notJob')
AddEventHandler('esx_joblisting:notJob', function(source)
		ESX.ShowNotification("You are already in a faction. Leave your current faction first.")
end)

--------------------------------------------------------
--------------------- NO TOUCHY ------------------------
--------------------------------------------------------

AddEventHandler('esx_joblisting:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
end)

-- Display markers
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		for i=1, #Config.Zones, 1 do
			if(GetDistanceBetweenCoords(coords, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, true) < Config.DrawDistance) then
				DrawMarker(Config.MarkerType, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords      = GetEntityCoords(GetPlayerPed(-1))
		isInJoblistingMarker  = false
		local currentZone = nil
		for i=1, #Config.Zones, 1 do
			if(GetDistanceBetweenCoords(coords, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, true) < Config.ZoneSize.x / 2) then
				isInJoblistingMarker  = true
				SetTextComponentFormat('STRING')
            	AddTextComponentString(_U('access_job_center'))
            	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
			end
		end
		if isInJoblistingMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
		end
		if not isInJoblistingMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_joblisting:hasExitedMarker')
		end
	end
end)

-- Create blips
Citizen.CreateThread(function()
	for i=1, #Config.Zones, 1 do
		local blip = AddBlipForCoord(Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z)
		SetBlipSprite (blip, 408)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 1.2)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('job_center'))
		EndTextCommandSetBlipName(blip)
	end
end)

-- Menu Controls
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0, Keys['E']) and isInJoblistingMarker and not menuIsShowed then
			ShowJobListingMenu()
		end
	end
end)
