return {
    name = "Live Server Neovim",
    source = "barrettruth/live-server.nvim",

    options = {
        port = 8080,
        browser = true
    },

    setup = function(self)
        vim.g.live_server = self.options
    end
}
