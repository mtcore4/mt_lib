function mt.lib.getPlayer(src)
    return {
        id = src,
        name = GetPlayerName(src),
        identifiers = GetPlayerIdentifiers(src)
    }
end

exports('getPlayer', mt.lib.getPlayer)
