return {
    name = "Nvim Tree",
    source = "nvim-tree/nvim-tree.lua",

    dependencies = { "nvim-tree/nvim-web-devicons" },

    setup = function()
        require("nvim-tree").setup()
    end,
}
