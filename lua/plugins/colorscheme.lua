return {
  { "Shatur/neovim-ayu" },
  {
    "love-pengy/lillilac.nvim",
    opts = { lazy = true },
    config = function(opts)
      vim.cmd.colorscheme("lillilac")
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = { colorscheme = "ayu" },
  -- },
}
