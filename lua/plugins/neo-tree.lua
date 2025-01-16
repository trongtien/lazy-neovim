return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                visible = false, -- hide filtered items on open
                hide_gitignored = true,
                hide_dotfiles = false,
                hide_by_name = {
                ".github",
                ".changeset",
                },
                never_show = { ".git" },
            },
        },
    },
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- key map for neo tree
        vim.keymap.set("n", "<leader>v", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<leader>xx", ":Neotree filesystem close <CR>", {})
    end,
    
}
