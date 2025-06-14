return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
            { -- optional blink completion source for require statements and module annotations
                "saghen/blink.cmp",
                opts = {
                },
            }
        },
        config = function()
            -- require("lspconfig").lua_ls.setup {}
            -- require("lspconfig").rust_analyzer.setup {}
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('my.lsp', {}),
                callback = function(args)
                    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
                    if client:supports_method('textDocument/implementation') then
                        -- Create a keymap for vim.lsp.buf.implementation ...
                    end

                    -- Auto-format ("lint") on save.
                    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
                    if not client:supports_method('textDocument/willSaveWaitUntil')
                        and client:supports_method('textDocument/formatting') then
                        vim.api.nvim_create_autocmd('BufWritePre', {
                            group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
                            end,
                        })
                    end
                end,
            })
        end
    },
    {
        "saghen/blink.cmp",
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'default' },
            sources = {
                default = { "lazydev", "lsp", "path", "snippets", "buffer" },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        -- make lazydev completions top priority (see `:h blink.cmp`)
                        score_offset = 100,
                    },
                },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        }
    }
}
