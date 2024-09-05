require('config.lazy')
require('mini.icons').setup()

-- Leader and LocalLeader are SPACE and \\ respectively
-- Both are configured in lazy.lua

-- BASIC CONFIGURATION
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'number'

-- Tab = 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- ## lualine
require('lualine').setup {
    sections = {
        lualine_y = {'searchcount'},
    } 
}

-- TELESCOPE BINDINGS
local ts_builtin = require('telescope.builtin')
-- Set bindings with which-key so that they appear in the fancy menu
local wk = require('which-key')
wk.add({
  mode = { 'n' },
  { '<leader>ff', ts_builtin.find_files, desc = 'Find File' },
  { '<leader>fb', ts_builtin.buffers, desc = 'Find Buffer', group = 'buffers' },
  { '<leader>fg', ts_builtin.live_grep, desc = 'Grep in Project' },
  { '<leader>fr', ts_builtin.oldfiles, desc = 'Recent Files' },
  { '<leader>fj', ts_builtin.jumplist, desc = 'Jump List' },
  { '<leader>fz', ts_builtin.current_buffer_fuzzy_find, desc = 'Current Buffer Fuzzy-Find' },
  { '<leader>fs', ts_builtin.treesitter, desc = 'Treesitter Symbols' }
})

