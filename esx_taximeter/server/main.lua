ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('KMetre:updatePassengerMeters')
AddEventHandler('KMetre:updatePassengerMeters', function(player, meterAttrs)
  TriggerClientEvent('KMetre:updatePassenger', player, meterAttrs)
end)


RegisterServerEvent('KMetre:resetPassengerMeters')
AddEventHandler('KMetre:resetPassengerMeters', function(player)
  TriggerClientEvent('KMetre:resetMeter', player)
end)

RegisterServerEvent('KMetre:updatePassengerLocation')
AddEventHandler('KMetre:updatePassengerLocation', function(player)
  TriggerClientEvent('KMetre:updateLocation', player)
end)
