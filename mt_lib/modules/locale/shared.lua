local file = LoadResourceFile(GetCurrentResourceName(), ('locales/%s.json'):format(mt.config.locale))
mt.locale = json.decode(file or '{}')

function mt.lib.t(key)
    return mt.locale[key] or key
end
