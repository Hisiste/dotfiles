-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note that most plugin managers will do this automatically.
--filetype plugin indent on
-- THIS IS ON BY DEFAULT.

-- Some of the VimTeX scripts contain UTF-8 characters, and as such, it is
-- necessary to have the 'encoding' option set to utf8. This is not necessary
-- in neovim, only in Vim. Add the following to your vimrc file: >
--vim.opt.encoding = "utf8"

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = "zathura"

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
--vim.g.vimtex_compiler_method = "latexrun"

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
--let maplocalleader = ","
