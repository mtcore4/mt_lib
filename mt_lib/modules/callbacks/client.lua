local pending = {}

RegisterNetEvent('mt_lib:cb:res', function(id, data)
    if pending[id] then
        pending[id]:resolve(data)
        pending[id] = nil
    end
end)

function mt.lib.callback(name, ...)
    local id = math.random(100000,999999)
    local p = promise.new()
    pending[id] = p
    TriggerServerEvent('mt_lib:cb:req', name, id, ...)
    return Citizen.Await(p)
end

exports('callback', mt.lib.callback)
