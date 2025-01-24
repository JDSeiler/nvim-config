require('config.lazy')
require('mini.icons').setup()

-- Leader and LocalLeader are SPACE and \\ respectively
-- Both are configured in lazy.lua

-- BASIC CONFIGURATION
vim.opt.background = "light" -- or "light" for light mode
vim.cmd([[colorscheme ayu-light]])

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'number'

-- Tab = 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Folding
-- -- This causes folds to close on file open? But you can hit `zi` to open them all, so maybe not an issue.
-- -- With which-key I don't get lost trying to figure out how to manage folds
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- ## lualine
require('lualine').setup {
    sections = {
        lualine_y = {'searchcount'},
    },
    options = {
        theme = 'ayu'
    },
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

-- TREESITTER
local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "ruby",
    "markdown",
    "markdown_inline",
    "lua",
    "vim"
  },
  -- auto install above language parsers
  auto_install = true,
})

-- HUNK
hunk = require("hunk")
hunk.setup()

-- LOCAL OVERRIDES
require('config.local')
