return {
    name = "Blink Completion",
    source = "saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets",
        "saghen/blink.lib"
    },

    setup = function()
        local blink = require("blink.cmp")

        blink.build():wait(60000)
        blink.setup()
    end
}
