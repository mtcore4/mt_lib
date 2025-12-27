function mt.lib.hasPermission(src, perm)
    return IsPlayerAceAllowed(src, perm)
end

exports('hasPermission', mt.lib.hasPermission)
