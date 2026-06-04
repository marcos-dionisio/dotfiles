-- Autostart config

local commands = {
    "hyprlock",
    "hyprpaper"
}

hl.on("hyprland.start", function()
    for _, command in pairs(commands) do
        hl.exec_cmd(command)
    end
end)
