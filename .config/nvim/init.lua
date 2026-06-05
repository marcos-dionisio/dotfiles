-- Neovim init config

local modules = {
    "personal",
    "plugin-loader"
}

for _, module in pairs(modules) do
    require("config." .. module)
end
