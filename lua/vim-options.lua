vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = ' '
vim.cmd("set number")
vim.cmd("set lazyredraw")
vim.cmd("set nowrap")
vim.cmd("set nobackup")
vim.cmd("set noswapfile")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })
vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.hlsearch = true
vim.opt.incsearch = true


-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste over highlight word
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.opt.colorcolumn = "94"

-- copy current file path (absolute) into clipboard
vim.keymap.set("n", "<leader>cp", function()
	local filepath = vim.fn.expand("%:p")
	vim.fn.setreg("+", filepath) -- Copy to Neovim clipboard
	vim.fn.system("echo '" .. filepath .. "' | pbcopy") -- Copy to macOS clipboard
	print("Copied: " .. filepath)
end, { desc = "Copy absolute path to clipboard" })



vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

