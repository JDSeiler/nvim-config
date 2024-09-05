require('config.lazy')
require('mini.icons').setup()

-- Leader and LocalLeader are SPACE and \\ respectively
-- Both are configured in lazy.lua

-- BASIC CONFIGURATION
vim.opt.background = 'dark' -- or "light" for light mode
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
vim.keymap.set('n', '<leader>ff', ts_builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', ts_builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', ts_builtin.live_grep, {})
-- 'r' for 'recent'
vim.keymap.set('n', '<leader>fr', ts_builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fj', ts_builtin.jumplist, {})
-- 'z' for 'fuzzy'
vim.keymap.set('n', '<leader>fz', ts_builtin.current_buffer_fuzzy_find, {})
-- 's' for 'symbols'
vim.keymap.set('n', '<leader>fs', ts_builtin.treesitter, {})


