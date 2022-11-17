local nnoremap = require("adriz.keymap").nnoremap
local vnoremap = require("adriz.keymap").vnoremap
local xnoremap = require("adriz.keymap").xnoremap
local inoremap = require("adriz.keymap").inoremap

-- Copy and paste from clipboard.
vnoremap('<leader>c', '"+y')
nnoremap('<leader>v', '"+p')
