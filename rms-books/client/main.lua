local bookProp = nil

local function PlayAnimation(dict, name, duration)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) end
    TaskPlayAnim(PlayerPedId(), dict, name, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(dict)
end



AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        SetNuiFocus(false,false)
        SendNUIMessage({
            show = false
        })
        ClearPedSecondaryTask(PlayerPedId())
        SetEntityAsMissionEntity(bookProp)
        DeleteObject(bookProp)
    end
end)

RegisterNetEvent('rms-books:client:OpenBook', function(bookName)
    local ped = PlayerPedId()
    local ped_coords = GetEntityCoords(ped)
    SetNuiFocus(true,true)
    SendNUIMessage({
        show = true,
        book = bookName,
        pages = Config.Books[bookName]["pages"],
        size = Config.Books[bookName]["size"],
    })
end)

RegisterNUICallback('escape', function(data, cb)
    local ped = PlayerPedId()
    SetNuiFocus(false, false)
    cb('ok')
end)