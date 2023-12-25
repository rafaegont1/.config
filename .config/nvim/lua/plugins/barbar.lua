local config = function()
  require('barbar').setup({
    icons = {
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = {enabled = true},
        [vim.diagnostic.severity.WARN] = {enabled = true},
        [vim.diagnostic.severity.INFO] = {enabled = false},
        [vim.diagnostic.severity.HINT] = {enabled = true},
      },

      separator = {left = '▎', right = ''},

      -- Configure the icons on the bufferline when modified
      modified = {button = '●'},
    },
  })

  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- Move to previous/next
  keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
  keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
  -- Re-order to previous/next
  keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
  keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
  -- Goto buffer in position...
  keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
  keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
  keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
  keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
  keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
  keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
  keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
  keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
  keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
  keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
  -- Pin/unpin buffer
  keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
  -- Close buffer
  keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
  -- Magic buffer-picking mode
  keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
  -- Sort automatically by...
  keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
  keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
  keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
  keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
end

return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    config = config,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
