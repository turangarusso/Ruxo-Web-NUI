--RUXO NUI Credit: Ruxo, BostonG, F3de
ESX = exports["es_extended"]:getSharedObject()

local display = false
local type = {}
local resourceName = "ruxo_ui"

-- check del player se è loadato e soppressione della ui al login
Citizen.CreateThread(function()
    while not ESX.IsPlayerLoaded() do 
        Citizen.Wait(100)
        TriggerEvent("rxo:nui:off")
      break
    end
end)

-- soppressione della ui al riavvio della risorsa
AddEventHandler('onResourceStart', function (resourceName)
    if (GetCurrentResourceName() ~= resourceName) then return end
    Wait(100)
    display = false
    TriggerEvent("rxo:nui:off")
    print("Ruxo NUI Credit Evolve RP v2 https://discord.com/invite/Cc7fbazCmB")
end)

-- soppressione della ui quando clicchi sul bottone "chiudi"
RegisterNUICallback('rxo:nui:off', function(data, cb)
    display = false
    TriggerEvent("rxo:nui:off")
    cb();
end)

-- toggle event della ui
RegisterNetEvent('rxo:nui:on')
AddEventHandler('rxo:nui:on', function()
    local ped = PlayerPedId()
    if display == false then
      exports["rpemotes"]:EmoteCommandStart("tablet", nil)
      FreezeEntityPosition(ped, true)
      Citizen.CreateThread(function()
        while true do
          Wait(500)
          DisableControlAction(0, 1, true) -- LookLeftRight
          DisableControlAction(0, 2, true) -- LookUpDown
          DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
        end
      end)
      display = true
      SetNuiFocus(true, true)
      SendNUIMessage({
        type = "ui",
        display = true
      })
    else
      exports["rpemotes"]:EmoteCancel()
      FreezeEntityPosition(ped, false)
      Citizen.CreateThread(function()
        while true do
          Wait(500)
          EnableControlAction(0, 1, true) -- LookLeftRight
          EnableControlAction(0, 2, true) -- LookUpDown
          EnableControlAction(0, 106, true) -- VehicleMouseControlOverride
        end
      end)
      display = false
      SetNuiFocus(false, false)
      SendNUIMessage({
        type = "ui",
        display = false
      })
    end
end)

-- off event della ui
RegisterNetEvent('rxo:nui:off')
AddEventHandler('rxo:nui:off', function()
    local ped = PlayerPedId()
    exports["rpemotes"]:EmoteCancel()
    FreezeEntityPosition(ped, false)
    Citizen.CreateThread(function()
      while true do
        Wait(500)
        EnableControlAction(0, 1, true) -- LookLeftRight
        EnableControlAction(0, 2, true) -- LookUpDown
        EnableControlAction(0, 106, true) -- VehicleMouseControlOverride
      end
    end)
    display = false
    SetNuiFocus(false, false)
    SendNUIMessage({
      type = "ui",
      display = false
    })
end)