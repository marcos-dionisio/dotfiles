return {
    name = "Catpuccin Theme",
    source = "catppuccin/nvim",

    options = {
        flavour = "mocha",
        transparent_background = true,
    },

    setup = function(self)
        require("catppuccin").setup(self.options)
        vim.cmd.colorscheme("catppuccin-nvim")
    end
}
