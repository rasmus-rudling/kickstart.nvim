return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
      open_mapping = [[<C-\>]],
    }

    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, close_on_exit = true }

    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _LAZYGIT_TOGGLE()<CR>', { noremap = true, silent = true })

    -- To open files with <e> in lazygit that opens a new buffer inside the current neo-vim process:
    -- /Users/rr/Library/Application Support/lazygit
    -- os:
    -- editPreset: 'nvim-remote'
  end,
}
