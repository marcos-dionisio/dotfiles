return {
    name = "Blink Completion",
    source = "saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets",
        "saghen/blink.lib"
    },

    options = {
        keymap = { preset = "default" },
        appearance = { nerd_font_variant = "mono" },

        sources = {
            default = {
                "lsp",
                "path",
                "snippets",
                "buffer"
            }
        }
    },

    setup = function(options)
        local blink = require("blink.cmp")

        blink.build():wait(60000)
        blink.setup(options)
    end
}
