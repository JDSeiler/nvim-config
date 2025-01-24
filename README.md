# Usage Requirements:
1. Neovim 0.9 or greater
2. A version of Neovim with LuaJIT enabled
3. `ripgrep` :: telescope
4. `fd` :: telescope
5. A patched NerdFont :: lualine
6. nvim-web-devicons :: Dependency of lualine but also used by
   which-key.

To set up this config on a new machine:
1. `mkdir ~/.config/nvim`
2. `cd ~/.config/nvim`
3. Clone this repository
4. Launch Neovim -- `lazy` should take care of installing everything automagically

If the Neovim config directory already exists. Save a copy of it, delete the
contents of the directory, and follow the steps above from step 2.

# Local Overrides
Sometimes, you might want to have machine specific customizations of the neovim config.

For example, I might want to switch up my color scheme on my work laptop without having
to reconfigure my personal laptop.

1. Create `lua/config/local.lua`
2. Add whatever config you want in there

For example, to reset themes:
```lua
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup {
    sections = {
        lualine_y = {'searchcount'},
    },
    options = {
        theme = 'gruvbox_dark'
    },
}
```
There doesn't seem to be any issue with calling plugin's 'setup' functions multiple times.
I'm under the assumption that it's "last call wins", or maybe they get merged.
