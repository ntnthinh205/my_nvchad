return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "python",
                "cpp",
                "javascript",
                "typescript",
                "go",
                "rust",
                "c",
                "tsx",
                "json",
                "bash",
                "jsx",
                "regex",
                "markdown",
                "xml",
            },
        },
        {
            "Pocco81/auto-save.nvim",
            config = function()
                require("auto-save").setup {
                    enabled = true,
                    execution_message = {
                        message = function()
                            return "AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S"
                        end,
                    },
                    trigger_events = { "InsertLeave", "TextChanged" },
                }
            end,
        },
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            local cmp = require "cmp"

            opts.window = {
                completion = cmp.config.window.bordered {
                    border = "rounded",
                },
                documentation = cmp.config.window.bordered {
                    border = "rounded",
                },
            }

            return opts
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        opts = function(_, opts)
            local actions = require "telescope.actions"

            opts.defaults = {
                border = true,
                layout_strategy = "horizontal",
                layout_config = {
                    prompt_position = "top",
                    preview_width = 0.55,
                },

                borderchars = {
                    prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                    results = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
                    preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                },

                sorting_strategy = "ascending",

                mappings = {
                    i = {
                        ["<Esc>"] = actions.close,
                    },
                },
            }

            return opts
        end,
    },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)",
            },
        },
    },
    {
        "linux-cultist/venv-selector.nvim",
        branch = "regexp", -- Chuyển sang nhánh mới để sửa lỗi layout
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
        opts = {
            settings = {
                options = {
                    notify_user_on_venv_activation = true,
                },
            },
        },
        keys = {
            { "<leader>vs", "<cmd>VenvSelect<cr>" },
        },
    },
}
