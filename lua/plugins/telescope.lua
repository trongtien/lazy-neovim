return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            -- use telescope'
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>pf", builtin.git_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    layout_strategy = "horizontal",
                    layout_config = { prompt_position = "top" },
                    sorting_strategy = "ascending",
                    winblend = 0,
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
