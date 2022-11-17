-- Si no hay LSP, no configures nada y salte.
local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
    return
end


require "adriz.lsp.mason"
require("adriz.lsp.handlers").setup()
require "adriz.lsp.null-ls"
