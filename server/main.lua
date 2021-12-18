
local AcidFW = exports['AcidFW-core']:GetCoreObject()

--========================================================== Turbo
RegisterNetEvent('AcidFW:server:removeTurbo', function()
    local Player = AcidFW.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('turbo', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, AcidFW.Shared.Items['turbo'], "remove", 1)
    TriggerClientEvent('AcidFW:Notify', source, "Turbo has been installed", 'success')
end)

AcidFW.Functions.CreateUseableItem("turbo", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
	TriggerClientEvent("AcidFW:client:applyTurbo", source) 
end)

--========================================================== Headlights
RegisterNetEvent('AcidFW:server:removeXenon', function()
    local Player = AcidFW.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('headlights', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, AcidFW.Shared.Items['headlights'], "remove", 1)
    TriggerClientEvent('AcidFW:Notify', source, "Xenon Headlights Installed", 'success')
end)

AcidFW.Functions.CreateUseableItem("headlights", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
	TriggerClientEvent("AcidFW:client:applyXenons", source)
end)

AcidFW.Functions.CreateUseableItem("hid_controller", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
    TriggerClientEvent('AcidFW:client:xenonMenu', source)
end)

--========================================================== Tire Repair
AcidFW.Functions.CreateUseableItem("tire", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
    TriggerClientEvent('AcidFW:client:replacePoppedTire', source) 
end)

RegisterNetEvent('AcidFW:server:removeTire', function()
    local Player = AcidFW.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('tire', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, AcidFW.Shared.Items['tire'], "remove", 1)
    TriggerClientEvent('AcidFW:Notify', source, "Tire replaced", 'success')
end)

--========================================================== suspension

AcidFW.Functions.CreateUseableItem("coilovers", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
    TriggerClientEvent('AcidFW:client:coiloverMenu', source)
end)

--========================================================== Neons

AcidFW.Functions.CreateUseableItem("underglow_controller", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
    TriggerClientEvent('AcidFW:client:openNeonMenu', source)
end)

--========================================================== Windowtint

AcidFW.Functions.CreateUseableItem("tint_supplies", function(source, item)
    local Player = AcidFW.Functions.GetPlayer(source)
    TriggerClientEvent('AcidFW:client:openWindowTintMenu', source)
end)

RegisterNetEvent('AcidFW:server:removeTintSupplies', function()
    local Player = AcidFW.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('tint_supplies', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, AcidFW.Shared.Items['tint_supplies'], "remove", 1)
end)
