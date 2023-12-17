ESX = exports["es_extended"]:getSharedObject()

local xPlayer = ESX.GetPlayerFromId(source)

math.randomseed(GetGameTimer())

RegisterServerEvent('ml-signs:stealed')
AddEventHandler('ml-signs:stealed', function()
    xPlayer.addInventoryItem(road_sign, math.random(1,2))
end)

RegisterServerEvent('ml-signs:melted')
AddEventHandler('ml-signs:melted', function()
    xPlayer.addInventoryItem(Config.Items[math.random(#Config.Items)], math.random(1,5))
end)
