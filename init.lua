-- pull lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins and options 
require("option-visual-mode")
require("vim-options")
require("vim-helpers")
require("help-floating")
require("floating-term")
require("lazy").setup({
    spec = "plugins",
    change_detection = { notify = false },
    rocks = {
        enabled = false, -- Tắt hỗ trợ luarocks
        hererocks = true, -- Sử dụng hererocks nếu bạn đã cài đặt
    }
})


