-- lua/configs/mini.lua

-- Create the configuration table directly.
local animate_config = {
    -- Cursor movement animation
    cursor = {
        enable = true,
        timing = require('mini.animate').gen_timing.linear({
            duration = 20, -- 100 milliseconds for a quick slide
            unit = 'total',
        }),
    },

    -- Vertical scroll animation (for Ctrl-d, Ctrl-u, gg, G)
    scroll = {
        enable = true,
        timing = require('mini.animate').gen_timing.linear({
            duration = 20, -- 200 milliseconds, as you wanted
            unit = 'total',
        }),
    },

    resize = {
        enable = false,
    },

    open = {
        enable = false,
    },

    close = {
        enable = false,
    },

    -- You can uncomment these to enable and customize them
    -- resize = { enable = true, },
    -- open   = { enable = true, },
    -- close  = { enable = true, },
}

-- This is the crucial part that applies the settings.
require('mini.animate').setup(animate_config)

-- Add a notification to confirm that this file is being loaded and executed.
-- vim.notify('mini.animate has been set up with custom config.', vim.log.levels.INFO)
