-- Layout config

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 0,
        resize_on_border = true,

        layout = "dwindle",

        col = {
            active_border = "rgba(137, 220, 235, 1)",
            inactive_border = "rgba(59, 59, 59, 1)",
        },
    },

    decoration = {
        rounding = 5,
        rounding_power = 2,

        blur = {
            enabled   = true,
            size      = 2,
            passes    = 0,
            vibrancy  = 0.1696,
        },
    },
})

hl.window_rule({
  match = { class = "kitty" },
  border_size = 2,
})
