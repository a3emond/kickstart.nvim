return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<C-\>]],
      direction = 'float', -- or 'horizontal', 'vertical', 'tab'
      float_opts = {
        border = 'curved',
      },
    }
  end,
}
