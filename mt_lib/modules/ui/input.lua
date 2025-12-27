local awaiting

function mt.lib.inputDialog(title, fields)
    local p = promise.new()
    awaiting = p
    SendNUIMessage({ action = 'input', title = title, fields = fields })
    SetNuiFocus(true, true)
    return Citizen.Await(p)
end

RegisterNUICallback('inputSubmit', function(data, cb)
    if awaiting then awaiting:resolve(data) awaiting = nil end
    SetNuiFocus(false, false)
    cb('ok')
end)

exports('inputDialog', mt.lib.inputDialog)
