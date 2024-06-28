vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 50
vim.opt.colorcolumn = "80"
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.formatoptions:append({ "r" })

local float = { focusable = true, style = "minimal", border = "rounded" }

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, float)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, float)

vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#d8bd92" })

vim.filetype.add({
  extension = { mdx = "mdx", analog = "analog" },
})

vim.filetype.add({
  extension = { [".all-contributorsrc"] = ".all-contributorsrc" },
})

-- vim.treesitter.language.register("markdown", "mdx")
vim.treesitter.language.register("angular", "analog")
vim.treesitter.language.register("json", ".all-contributorsrc")
