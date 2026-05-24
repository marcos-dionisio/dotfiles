return {
    name = "Tree Sitter",
    source = "nvim-treesitter/nvim-treesitter",

    options = { install_dir = vim.fn.stdpath("data") .. "/site" },

    setup = function(options)
        require("nvim-treesitter").setup(options)
    end
}
