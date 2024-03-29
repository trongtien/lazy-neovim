-- Enable spell check by default unless in vscode
if not vim.g.vscode then
  vim.o.spell = true
end
-- Set conceal level to 0
vim.o.conceallevel = 0

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.timeoutlen = 250
vim.opt.timeout = true
vim.opt.updatetime = 250

-- Enable python3 provider back for CopilotChat.nvim
-- vim.g.loaded_python3_provider = 0
-- Disable providers
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- Setup options for Neovide
-- Install neovide: ❯ brew install --ignore-dependencies  neovide
if vim.g.neovide then
  vim.o.guifont = "OperatorMonoLig Nerd Font:h20"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_fullscreen = true
end
