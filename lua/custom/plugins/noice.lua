return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  opts = {
    cmdline = {
      enabled = true,
      view = 'cmdline_popup', -- enables floating centered window
      format = {
        cmdline = { icon = ':', title = 'Command' },
        search_down = { icon = '/', title = 'Search ↓' },
        search_up = { icon = '?', title = 'Search ↑' },
      },
    },
    views = {
      cmdline_popup = {
        position = {
          row = '40%',
          col = '50%',
        },
        size = {
          width = 60,
          height = 'auto',
        },
      },
    },
    messages = {
      enabled = true,
      view = 'notify',
    },
    notify = {
      enabled = true,
    },
    presets = {
      bottom_search = false, -- use popup for `/` and `?`
      command_palette = false,
      long_message_to_split = true,
    },
  },
}
