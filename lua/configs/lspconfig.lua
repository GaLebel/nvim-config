-- ~/.config/nvim/lua/custom/init.lua (or wherever your custom LSP setup is)

-- This line should still be at the top to load NvChad's defaults
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- Define your servers explicitly. Use 'ts_ls' now.
<<<<<<< HEAD
local servers = { "html", "cssls", "ts_ls", "clangd"} -- <--- CHANGED: Use "ts_ls"
=======
local servers = { "python", "html", "cssls", "ts_ls" } -- <--- CHANGED: Use "ts_ls"
>>>>>>> 41d2dc2e72887c2b5d45bd2c4862738217f99387
vim.lsp.enable(servers)

-- -- Explicitly set up ts_ls with default NvChad attachments
-- -- This addresses the deprecation warning and ensures it's configured
-- lspconfig.ts_ls.setup({ -- <--- CHANGED: Use lspconfig.ts_ls.setup
--     on_attach = on_attach,
--     capabilities = capabilities,
--     -- You can add specific ts_ls settings here if needed, e.g.:
--     settings = {
--         typescript = {
--             inlayHints = {
--                 propertyDeclarationTypeHints = true,
--                 parameterNames = "all", -- "none" | "literals" | "all"
--                 variableTypes = true,
--                 functionLikeReturnTypes = true,
--                 enumMemberValues = true,
--             },
--         },
--         javascript = {
--             inlayHints = {
--                 propertyDeclarationTypeHints = true,
--                 parameterNames = "all",
--                 variableTypes = true,
--                 functionLikeReturnTypes = true,
--                 enumMemberValues = true,
--             },
--             implicitProjectConfig = {
--                 checkJs = true, -- Set to true to get stricter JS checking
--                 jsx = true,
--             },
--         },
--     },
--     -- Optional: Configure root directory detection
--     root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
-- })
