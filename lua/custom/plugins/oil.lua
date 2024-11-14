return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      lsp_file_methods = {
        enabled = false,
      },
    }
  end,
}
