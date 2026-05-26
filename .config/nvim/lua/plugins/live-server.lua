return {
    name = "Live Server Neovim",
    source = "barrettruth/live-server.nvim",

    options = {
        port = 8080,
        browser = true
    },

    setup = function(options)
        vim.g.live_server = options
    end
}
