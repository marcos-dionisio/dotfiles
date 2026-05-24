-- Hyprland init config

local modules = {
    "monitors",
    "layout",
    "inputs",
    "key-binds",
}

for _, module in pairs(modules) do
    require("modules." .. module)
end
