return {
    name = "Language Server Config",
    source = "neovim/nvim-lspconfig",

    options = {

        -- Lua Language Server
        lua_ls = {
            settings = {
                Lua = {
                    runtime = { version = 'LuaJIT' },
                    workspace = {
                        preloadFileSize = 10000,
                        library = {
                            vim.env.VIMRUNTIME,
                            "/usr/share/hypr/stubs"
                        }
                    }
                }
            }
        }
    },

    setup = function(options)
        vim.lsp.config("lua_ls", options.lua_ls)
        vim.lsp.enable("lua_ls")
    end
}
