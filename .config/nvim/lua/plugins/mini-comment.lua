return {
    name = "Mini Comment",
    source = "nvim-mini/mini.comment",

    options = {
        mappings = {
            comment_line = '<leader>cl',
            comment_visual = '<leader>c',
            comment = '<leader>c'
        }
    },

    setup = function(self)
        require("mini.comment").setup(self.options)
    end
}
