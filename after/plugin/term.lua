vim.api.nvim_create_user_command('Terminal', function()
  vim.cmd 'vsplit'
  vim.cmd 'terminal'
end, {})

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', {}),
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.scrolloff = 0
    vim.bo.filetype = 'terminal'
    vim.cmd 'startinsert'
  end,
})

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>T', ':Terminal<CR>', { desc = 'Open terminal in a vertical split' })
