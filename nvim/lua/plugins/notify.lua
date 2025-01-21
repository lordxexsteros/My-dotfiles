return {
        'rcarriga/nvim-notify',
        config = function()
            require("notify").setup({
                -- Configure notify options here
                stages = "fade", -- Animation style
                timeout = 3000, -- Notification duration in milliseconds
                background_colour = "NotifyBackground", -- Background color
            })

            -- Set notify as the default handler for `vim.notify`
            vim.notify = require("notify")
        end
}
