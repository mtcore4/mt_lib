local menus = {}

function mt.lib.registerMenu(id, menu)
    menus[id] = menu
end

function mt.lib.showMenu(id)
    SendNUIMessage({ action = 'menu', menu = menus[id] })
    SetNuiFocus(true, true)
end

RegisterNUICallback('menuSelect', function(data, cb)
    if menus[data.id] and menus[data.id].onSelect then
        menus[data.id].onSelect(data.value)
    end
    SetNuiFocus(false, false)
    cb('ok')
end)

exports('registerMenu', mt.lib.registerMenu)
exports('showMenu', mt.lib.showMenu)
