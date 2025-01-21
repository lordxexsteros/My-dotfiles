return    {
        'folke/noice.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim', -- Required dependency
            'rcarriga/nvim-notify', -- Optional: for notifications
        },
        config = function()
            require("noice").setup({
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["vim.lsp.handlers.hover"] = true,
                        ["vim.lsp.handlers.signature_help"] = true,
                    },
                },
                presets = {
                    bottom_search = false,
                    command_palette = true,
                    long_message_to_split = true,
                    inc_rename = true,
                },
                views = {
                    -- Define a custom view for notifications
                    cmdline = {
                        position = { row = 10, col = "50%" }, -- Center the command line
                    },
                    notify = {
                        position = { row = "50%", col = "50%" }, -- Center notifications
                        size = { width = "auto", height = "auto" }, -- Auto size
                    },
                },
            })

            -- Optional: Set Noice as the default handler for notifications
            vim.notify = require("notify")
        end
    }
