mt.framework = { name = 'standalone', core = nil }

CreateThread(function()
    if GetResourceState('es_extended') == 'started' then
        mt.framework.name = 'esx'
        mt.framework.core = exports.es_extended:getSharedObject()
    elseif GetResourceState('qb-core') == 'started' then
        mt.framework.name = 'qb'
        mt.framework.core = exports['qb-core']:GetCoreObject()
    end
end)
