-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = true, -- Focus the file in the active window when opening Neo-tree
      use_libuv_file_watcher = true, -- Use libuv for file watching
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
},
  -- Automatically open Neo-tree when starting Neovim without any arguments
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      if vim.fn.argv(0) == '' then
        vim.cmd 'Neotree show'
      end
    end,
  })
