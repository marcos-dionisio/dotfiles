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
        local blink = require("blink.cmp")

        for server, config in pairs(options) do
            config.capabilities = blink.get_lsp_capabilities(config.capabilities)

            vim.lsp.config(server, config)
            vim.lsp.enable(server)
        end
    end
}
