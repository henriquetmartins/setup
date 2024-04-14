return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    }

    local wk = require 'which-key'
    vim.keymap.set('t', '<leader>cc', '<C-\\><C-n><cr>')

    wk.register({
      h = { '<C-w>h', 'Move to left split' },
      j = { '<C-w>j', 'Move to split below' },
      k = { '<C-w>k', 'Move to split above' },
      l = { '<C-w>l', 'Move to right split' },
      ['<space>'] = { ':nohlsearch<CR>', 'Clear search' },
    }, { prefix = '<leader>', mode = 'n' })
  end,
}
