require("nvim-treesitter.configs").setup({
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "markdown" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  -- Setting this to true will block Neovim until all parsers are installed.
  -- This is useful for a new setup, but can be disabled for daily use.
  sync_install = false,

  -- Autoinstall missing parsers when you open a file for that language.
  -- This is an alternative to `ensure_installed` but can be slower.
  -- It's a good way to catch languages you might have missed.
  auto_install = true,

  -- Other Treesitter configurations...
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})