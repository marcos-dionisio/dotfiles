-- Hyprland init config

local modules = {
    "monitors",
    "layout",
    "inputs",
    "key-binds",
    "autostart"
}

for _, module in pairs(modules) do
    require("modules." .. module)
end
