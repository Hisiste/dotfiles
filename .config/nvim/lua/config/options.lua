-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Spellcheck for english and spanish.
vim.opt.spelllang = { "en", "es" }

-- Tab of 4 spaces.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Hide highlight search.
vim.opt.hlsearch = false

-- No horizontal scroll.
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.scrolloff = 6
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = "80"

-- > ADVICE:
-- >    - Create a virtualenv specifically for Nvim using pyenv, and set
-- >      `g:python3_host_prog`. This will avoid the need to install the
-- >      pynvim module in each version/virtualenv.
vim.g.python3_host_prog = "$HOME/Desktop/neovim/bin/python3"
