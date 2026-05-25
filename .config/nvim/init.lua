-- Neovim init config

local modules = {
    "config.personal",
    "config.plugin-loader"
}

for _, module in pairs(modules) do
    require(module)
end
