-- Plugin Loader

local function github_parser(repository)
    return "https://github.com/" .. repository
end

local function get_plugins()
    local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins/"
    local plugins_file = vim.fn.readdir(plugins_path)
    local plugins = {}

    for key, file_name in pairs(plugins_file) do
        local plugin_path = "plugins." .. file_name:sub(0, -5)
        plugins[key] = require(plugin_path)
    end

    return plugins
end

local function pack_plugin(plugin)
    local pack = {}

    if plugin.source then
        pack.src = github_parser(plugin.source)
    else
        pack.src = github_parser(plugin[1])
    end

    if plugin.name then
        pack.name = plugin.name
    end

    if plugin.version then
        pack.version = plugin.version
    end

    return pack
end

local function get_specs_list()
    local plugins = get_plugins()
    local specs = {}

    for _, plugin in pairs(plugins) do
        specs[#specs + 1] = pack_plugin(plugin)

        if plugin.dependencies then
            for _, dependencie in pairs(plugin.dependencies) do
                specs[#specs + 1] = pack_plugin({ dependencie })
            end
        end
    end

    return specs
end

local function loader()
    vim.pack.add(get_specs_list())

    for _, plugin in pairs(get_plugins()) do
        plugin:setup()
    end
end

-- Start plugin loader
loader()
