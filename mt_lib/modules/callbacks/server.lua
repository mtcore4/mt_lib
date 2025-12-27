local callbacks = {}

RegisterNetEvent('mt_lib:cb:req', function(name, id, ...)
    local src = source
    if callbacks[name] then
        local res = callbacks[name](src, ...)
        TriggerClientEvent('mt_lib:cb:res', src, id, res)
    end
end)

function mt.lib.registerCallback(name, fn)
    callbacks[name] = fn
end

exports('registerCallback', mt.lib.registerCallback)
