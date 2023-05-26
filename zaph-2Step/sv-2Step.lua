local QBCore = exports['qb-core']:GetCoreObject()

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
RegisterServerEvent("eff_flames")

AddEventHandler("eff_flames", function(entity)
	TriggerClientEvent("c_eff_flames", -1, entity)
end)

--[[

	Eğerki kod ile çalıştırmak isterseniz bunu aktif edersiniz

RegisterCommand("antilag", function(source, args, rawCommand)
	TriggerClientEvent("zaph:Anti-lag", source, 0)
end)  ]]--

-- Burası İtem kullanarak aktif edilen kısım
QBCore.Functions.CreateUseableItem("egzozkumandasi" , function(source, args, rawCommand)
	TriggerClientEvent("zaph:Anti-lag", source, 0)
end)