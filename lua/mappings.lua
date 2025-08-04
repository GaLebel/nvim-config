require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- unmap tab and remap it to leader + tab
vim.keymap.del("n", "<Tab>")
map("n", "<leader><Tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
-- map("n", "<C-i>", "<cmd>normal! <C-i><CR>", { desc = "Go to newer position in jump list" })
-- map('n', '<C-i>', '<C-i>', { noremap = true })
-- vim.keymap.set("n", "<C-i>", "<C-i>")
-- vim.keymap.set("n", "<Tab>", "<Nop>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
