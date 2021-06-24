local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData              = {}
local isBlip              = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
	
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
	PlayerData.job = job
	Citizen.Wait(5000)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
end)

-- MAP BLIP
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
	if PlayerData.job ~= nil and PlayerData.job.name == 'x' and not isBlip then --Change 'x' into the job name you wish to apply it into.
	isBlip = true
	blip = AddBlipForCoord(-1192.64,-890.52,14) -- Blip on Map Position
	SetBlipSprite  (blip, 106) -- Blip Model , you can change it from : https://wiki.gtanet.work/index.php?title=Blips
	SetBlipDisplay (blip, 4)
	SetBlipScale   (blip, 0.9)
	SetBlipCategory(blip, 3)
	SetBlipColour  (blip, 77) -- Blip Color , you can change it from : https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Burgershot") -- Blip name on map.
	EndTextCommandSetBlipName(blip)
  end
  end
end)


local inKitchen = false

-- Kitchen Menu Spot
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --Change 'x' into the job name you wish to apply it into.
		DrawMarker(21, -1200.0,-900.00,14.00, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Cooking Marker Position.
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, -1200.0,-900.00,14.00, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Cook Food')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu()
		end
		end
	end
end)

-- Kitchen Menu Spot 2
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --Change 'x' into the job name you wish to apply it into.
		DrawMarker(21, -1202.00,-897.00,14.00, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Cooking Marker Position.
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, -1202.00,-897.00,14.00, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Cook Food')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu()
		end
		end
	end
end)

-- Drinks Menu Spot
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'x' then --Change 'x' into the job name you wish to apply it into.
		DrawMarker(21, -1199.10,-895.20,14.00, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) -- Brewing Marker Position
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, -1199.10,-895.20,14.00, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('Press [E] To Make A Drink')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu2()
		end
		end
	end
end)



RegisterNetEvent('bshotcooking:animation')
AddEventHandler('bshotcooking:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true) -- Cooking Animation 
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
	ClearPedTasksImmediately(PlayerPedId()) -- Stops the animation after 10 Seconds.
end)

RegisterNetEvent('drinks:animation')
AddEventHandler('drinks:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_WELDING", 0, true) -- Drink Making Animation. You can change the animation to something else to be more realistic. Eg: champagnespray.
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms
	ClearPedTasksImmediately(PlayerPedId()) -- Stops the animation after 10 Seconds.
end)



-- COOKING MENU FOR FOODS
function openMenu()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'bshotcooking',
        {
            title    = 'Burgershot Kitchen',
            align    = 'top-right',
            elements = { 
                { label = 'Burger Blehh ', value = 'food1' }, -- You can change the "label" into whatever you want. You can also change the value but make sure to change everything that is binded to it.
                { label = 'The Bleeder ', value = 'food2' },
				{ label = 'The Heartstopper ', value = 'food3' }
            }
        },
    function(data, menu)
        local value = data.current.value

        if value == 'food1' then
            menu.close()
            TriggerServerEvent('bshotcooking:combination1')
		elseif value == 'food2' then
            menu.close()
            TriggerServerEvent('bshotcooking:combination2')
		elseif value == 'food3' then
            menu.close()
            TriggerServerEvent('bshotcooking:combination3')
        end
    end,
    function(data, menu)
        menu.close()
    end)
end



-- BREWING MENU FOR DRINKS -- 
function openMenu2()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'drinks',
        {
            title    = 'Burgershot SoftDrinks Machine',
            align    = 'top-right',
            elements = { 
                { label = 'Coca-Cola ', value = 'drink1' }, -- You can change the "label" into whatever you want. You can also change the value but make sure to change everything that is binded to it.
                { label = 'Sports Drink ', value = 'drink2' }
            }
        },
    function(data, menu)
        local value = data.current.value

		if value == 'drink1' then
            menu.close()
            TriggerServerEvent('drinks:combination1')
		elseif value == 'drink2' then
            menu.close()
            TriggerServerEvent('drinks:combination2')
        end
    end,
    function(data, menu)
        menu.close()
    end)
end

