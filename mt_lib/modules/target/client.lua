local targets = {}

function mt.lib.addTarget(entity, data)
    targets[entity] = data
end

CreateThread(function()
    while true do
        local hit, ent = GetEntityPlayerIsFreeAimingAt(PlayerId())
        if hit and targets[ent] and IsControlJustReleased(0, 38) then
            targets[ent].onSelect(ent)
        end
        Wait(0)
    end
end)

exports('addTarget', mt.lib.addTarget)
