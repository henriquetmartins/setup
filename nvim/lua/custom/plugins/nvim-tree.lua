return {
  -- Nvim files tree config
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      filters = {
        dotfiles = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      git = { enable = true },
      renderer = {
        icons = {
          glyphs = {
            git = {
              unstaged = '✗',
              staged = '✓',
              unmerged = '',
              renamed = '➜',
              untracked = '★',
              deleted = '',
              ignored = '◌',
            },
          },
        },
      },
    }

    vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<CR>')
  end,
}
