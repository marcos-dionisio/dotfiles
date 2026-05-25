return {
    name = "Catpuccin Theme",
    source = "catppuccin/nvim",

    options = {
        flavour = "mocha",
        transparent_background = true,
    },

    setup = function(options)
        require("catppuccin").setup(options)
        vim.cmd.colorscheme("catppuccin-nvim")
    end
}
