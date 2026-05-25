-- Key binds config

local binds = {
    Q = hl.dsp.exec_cmd("kitty"),
    E = hl.dsp.exec_cmd("dolphin"),
    R = hl.dsp.exec_cmd("hyprlauncher"),
    F = hl.dsp.exec_cmd("firefox"),

    P = hl.dsp.exec_cmd("hyprshot -m region -o $HOME/Screenshots"),
    O = hl.dsp.exec_cmd("hyprshot -m output -o $HOME/Screenshots"),
    I = hl.dsp.exec_cmd("hyprshot -m window -o $HOME/Screenshots"),

    C = hl.dsp.window.close(),
    V = hl.dsp.window.float({ action = "toggle" }),

    M = hl.dsp.exit(),
    S = hl.dsp.workspace.toggle_special("magic"),

    ["mouse:272"] = hl.dsp.window.drag(),
    ["mouse:273"] = hl.dsp.window.resize(),
    ["SHIFT + S"] = hl.dsp.window.move({ workspace = "special:magic" }),
}

-- Arrow binds
for _, arrow in pairs({ "up", "down", "left", "right" }) do
    binds[arrow] = hl.dsp.focus({ direction = arrow })
end

-- Workspace changing binds
for value = 1, 10 do
    local key = value % 10

    binds[key] = hl.dsp.focus({ workspace = value })
    binds["SHIFT + " .. key] = hl.dsp.window.move({ workspace = value })
end

-- Bind every bind
for key, value in pairs(binds) do
    hl.bind("SUPER + " .. key, value)
end
