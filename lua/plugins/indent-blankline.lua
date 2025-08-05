-- This file defines the configuration for the 'indent-blankline.nvim' plugin
-- within a plugin manager's specification (e.g., for lazy.nvim).

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- Specifies the main module to load for the plugin
    ---@module "ibl"
    ---@type ibl.config
    -- 'opts' contains the options that will be passed directly to require("ibl").setup()
    opts = {}, -- We'll define the 'indent' options within the 'config' function below.

    -- The 'config' function runs after the plugin has been loaded.
    -- This is the ideal place to put setup logic that involves calling plugin functions
    -- or registering hooks, as it ensures the plugin is available.
    config = function()
        -- Define a table of highlight group names for the rainbow indentation.
        -- These names will be used to create the actual highlight groups.
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        -- Require the hooks module from the indent-blankline plugin.
        -- Hooks allow you to run custom functions at specific points in the plugin's lifecycle.
        local hooks = require("ibl.hooks")

        -- Register a hook to set up the highlight groups.
        -- The HIGHLIGHT_SETUP hook ensures that these highlight groups are created
        -- or reset every time the Neovim colorscheme changes, maintaining consistency.
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            -- Set foreground colors for each defined highlight group.
            -- These colors are chosen to create a rainbow effect.
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })    -- Red
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" }) -- Yellow
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })   -- Blue
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })  -- Orange
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })   -- Green
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" }) -- Violet
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })    -- Cyan
        end)

        -- Initialize and set up the indent-blankline plugin.
        -- We pass a configuration table to the setup function.
        -- Here, we specify that the 'highlight' option for indentation lines
        -- should use the 'highlight' table we defined earlier, enabling the rainbow effect.
        require("ibl").setup {
            indent = {
                highlight = highlight -- Assigns the rainbow highlight groups to the indentation lines
            }
        }
    end,
}
