function mt.lib.notify(data)
    SendNUIMessage({
        action = 'notify',
        data = data
    })
end

exports('notify', mt.lib.notify)
