vim.g.visual_mode_count = 0

vim.api.nvim_set_keymap('n', '<leader>w', ':lua ToggleVisualSelection()<CR>', { noremap = true, silent = true })

function ToggleVisualSelection()
  vim.g.visual_mode_count = vim.g.visual_mode_count + 1

  if vim.g.visual_mode_count == 1 then
    vim.cmd("normal! viw")
  elseif vim.g.visual_mode_count == 2 then
    vim.cmd("normal! vE")
  elseif vim.g.visual_mode_count == 3 then
    vim.cmd("normal! V%")
  else
    vim.g.visual_mode_count = 0
  end
end

