return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- auto install
            auto_install = true,

            -- add language you want to highlight in code
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "scss",
                "go",
                "gomod",
                "gowork",
                "gosum",
                "json",
                "zig",
            },
            highlight = { enable = true },
            indent = { enable = true },
            rainbow = {
                enable = true,
                disable = { 'bash' }
            },
        })
    end,
}
