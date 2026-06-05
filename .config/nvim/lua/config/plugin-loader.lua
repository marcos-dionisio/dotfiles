-- Plugin Loader

local loader = {
    plugins = {},
    specs = {}
}

function loader:github_parser(repository)
    return "https://github.com/" .. repository
end

function loader:pack_plugin(plugin)
    local pack = {}

    if plugin.source then
        pack.src = self:github_parser(plugin.source)
    else
        pack.src = self:github_parser(plugin[1])
    end

    if plugin.name then
        pack.name = plugin.name
    end

    if plugin.version then
        pack.version = plugin.version
    end

    return pack
end

function loader:setup_plugins()
    local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins/"
    local plugins_file = vim.fn.readdir(plugins_path)

    for key, file_name in pairs(plugins_file) do
        local plugin_path = "plugins." .. file_name:sub(0, -5)
        self.plugins[key] = require(plugin_path)
    end
end

function loader:setup_specs_list()
    for _, plugin in pairs(self.plugins) do
        self.specs[#self.specs + 1] = self:pack_plugin(plugin)

        if plugin.dependencies then
            for _, dependencie in pairs(plugin.dependencies) do
                self.specs[#self.specs + 1] = self:pack_plugin({ dependencie })
            end
        end
    end
end

function loader:setup_plugins_config()
    for _, plugin in pairs(self.plugins) do
        plugin:setup()
    end
end

function loader:start()
    self:setup_plugins()
    self:setup_specs_list()
    vim.pack.add(self.specs)
    self:setup_plugins_config()
end

-- Start plugin loader
loader:start()
