return {
    name = "Blink Completion",
    source = "saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets",
        "saghen/blink.lib"
    },

    setup = function()
        local blink = require("blink.cmp")

        blink.build()
        blink.setup()
    end
}
