return {
  --core plugin
  { 'tpope/vim-dadbod' },
  -- dependencies
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      'tpope/vim-dadbod',
      'kristijanhusak/vim-dadbod-completion',
    },
    cmd = { 'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer' },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = '~/.config/nvim/dbui'
      vim.g.db_ui_auto_execute_table_helpers = 0
      vim.g.db_ui_table_helpers = {
        { name = 'Select', query = 'SELECT * FROM %s' },
        { name = 'Insert', query = 'INSERT INTO %s VALUES ()' },
        { name = 'Update', query = 'UPDATE %s SET ' },
        { name = 'Delete', query = 'DELETE FROM %s WHERE ' },
      }
    end,
  },
}
