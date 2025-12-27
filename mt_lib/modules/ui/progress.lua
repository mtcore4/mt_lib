function mt.lib.progress(data)
    SendNUIMessage({ action = 'progress', data = data })
    Wait(data.duration or 3000)
    return true
end

exports('progress', mt.lib.progress)
