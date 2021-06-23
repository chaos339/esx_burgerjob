ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
-- Normal Burger Recipe/Function
RegisterServerEvent('bshotcooking:combination1') -- Food combination function 1
AddEventHandler('bshotcooking:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('burger') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('burger_buns') -- Item 2 

	if xItem1.count > 1 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			TriggerClientEvent('bshotcooking:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('bshot_burger', 1)	-- add the cooked item to inventory
			xPlayer.removeInventoryItem('burger', 2) -- removing the burger (Item 1)
			xPlayer.removeInventoryItem('burger_buns', 2) -- removing the burgerbuns  (Item 2 )
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger Buns. [Need 2]') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger. [Need 2]') --xItem1 if else function
	end 
end)

-- The Bleeder Recipe/Function
RegisterServerEvent('bshotcooking:combination2') -- Food combination function 2
AddEventHandler('bshotcooking:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('burger') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('burger_buns') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('vegetables') -- Item 3
	
	if xItem1.count > 1 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 1 then -- Item 3 count
					TriggerClientEvent('bshotcooking:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('bshot_bleeder', 1) -- Puts the cooked item into your inventory
					xPlayer.removeInventoryItem('burger', 2) -- removing the Burger (Item 1)
					xPlayer.removeInventoryItem('burger_buns', 2) -- removing the Burger Buns  (Item 2)
					xPlayer.removeInventoryItem('vegetables', 2) -- removing the vegetables (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Vegetables. [Need 2]') --xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger Buns. [Need 2]') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger. [Need 2]') --xItem1 if else function
	end 
end)

-- The Heartstopper Recipe/Function
RegisterServerEvent('bshotcooking:combination3') -- Food combination function 2
AddEventHandler('bshotcooking:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('burger') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('burger_buns') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('vegetables') -- Item 3
	
	if xItem1.count > 2 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 2 then -- Item 3 count
					TriggerClientEvent('bshotcooking:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('bshot_heartstopper', 1) -- Puts the cooked item into your inventory
					xPlayer.removeInventoryItem('burger', 3) -- removing the Burger (Item 1)
					xPlayer.removeInventoryItem('burger_buns', 2) -- removing the Burger Buns  (Item 2)
					xPlayer.removeInventoryItem('vegetables', 3) -- removing the vegetables (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Vegetables. [Need 3]')--xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger Buns. [Need 2]')--xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Burger. [Need 3]')--xItem1 if else function
	end 
end)



-- Coca Cola
RegisterServerEvent('drinks:combination1') -- Drink combination function 1
AddEventHandler('drinks:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('water') -- Item 1
	local xItem2 = xPlayer.getInventoryItem('sugar_syrup') -- Item 2

		if xItem1.count > 1 then -- Item 1 count
			if xItem2.count > 1 then -- Item 2 count
					TriggerClientEvent('drinks:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('coca_cola', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 1)
					xPlayer.removeInventoryItem('sugar_syrup', 2) -- removing the Sugar Syrup  (Item 2)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar Syrup. [Need 2]')--xItem2 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Water. [Need 2]')--xItem1 if else function
		end
end)
 
-- Sports Drink Function
RegisterServerEvent('drinks:combination2') -- Drink combination function 2
AddEventHandler('drinks:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('water') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('sugar_syrup') -- Item 2 
	local xItem3 = xPlayer.getInventoryItem('fruitmix') -- Item 3
	
	if xItem1.count > 1 then  -- Item 1  count 
		if xItem2.count > 1 then -- Item 2 count
			if xItem3.count > 0 then -- Item 3 count
					TriggerClientEvent('drinks:animation' , source) -- Play animation function
					Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms.
					xPlayer.addInventoryItem('sports_drink', 1) -- Puts the brewed item into your inventory
					xPlayer.removeInventoryItem('water', 2) -- removing the Water (Item 1)
					xPlayer.removeInventoryItem('sugar_syrup', 2) -- removing the Sugar Syrup  (Item 2)
					xPlayer.removeInventoryItem('fruitmix', 3) -- removing the Fruit Mix (Item 3)
			else
				TriggerClientEvent('esx:showNotification', source, 'You do not have enough Fruit Mix. [Need 3]') --xItem3 if else function
			end
		else 
			TriggerClientEvent('esx:showNotification', source, 'You do not have enough Sugar Syrup. [Need 2]') --xItem2 if else function
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'You do not have enough Water. [Need 2]') --xItem1 if else function
	end 
end)




