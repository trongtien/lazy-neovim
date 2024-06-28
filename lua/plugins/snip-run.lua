return {
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",

    config = function()
      require("sniprun").setup({
        display = {
          "Terminal",
        },
        display_options = {
          terminal_width = 90,
        },
      })
    end,

    keys = function()
      return {
        { "<leader>rr", "<Plug>SnipRun", desc = "Execute SnipRun", mode = "n" },
        { "<leader>rc", "<Plug>SnipClose", desc = "Close SnipRun", mode = "n" },
      }
    end,
  },
}
