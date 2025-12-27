function mt.lib.addItem(src, item, amount)
    if mt.framework.name == 'esx' then
        local x = mt.framework.core.GetPlayerFromId(src)
        if x then x.addInventoryItem(item, amount) end
    elseif mt.framework.name == 'qb' then
        local p = mt.framework.core.Functions.GetPlayer(src)
        if p then p.Functions.AddItem(item, amount) end
    end
end

exports('addItem', mt.lib.addItem)
