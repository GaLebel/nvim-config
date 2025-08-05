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
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- This will run when the plugin is first installed
        config = function()
            require "configs.treesitter"
        end,
    },
    {
        "sphamba/smear-cursor.nvim",
        event = "VeryLazy",
        opts = require "configs.smear-cursor",
    },
}
