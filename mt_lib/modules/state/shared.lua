function mt.lib.setState(key, value)
    GlobalState[key] = value
end

function mt.lib.getState(key)
    return GlobalState[key]
end
