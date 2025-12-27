local zones = {}

function mt.lib.addZone(id, zone)
    zones[id] = zone
end

CreateThread(function()
    while true do
        local p = PlayerPedId()
        local c = GetEntityCoords(p)
        for _,z in pairs(zones) do
            local d = #(c - z.coords)
            if d < z.radius and not z.inside then
                z.inside = true
                if z.onEnter then z.onEnter() end
            elseif d >= z.radius and z.inside then
                z.inside = false
                if z.onExit then z.onExit() end
            end
        end
        Wait(500)
    end
end)

exports('addZone', mt.lib.addZone)
