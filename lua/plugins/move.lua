return {
  {
    "echasnovski/mini.move",
    event = "VeryLazy",
    config = function(_, opts)
      vim.schedule(function()
        require("mini.move").setup({
          -- Module mappings. Use `''` (empty string) to disable one.
          mappings = {
            -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
            left = "H",
            right = "L",
            down = "J",
            up = "K",
          },

          -- Options which control moving behavior
          options = {
            -- Automatically reindent selection during linewise vertical move
            reindent_linewise = true,
          },
        })
      end)
    end,
  },
}
