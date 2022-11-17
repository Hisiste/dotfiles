-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Color Scheme
    use 'sainnhe/gruvbox-material'

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- NVIM-Surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'


    -- Snippets
    use 'SirVer/ultisnips'
    -- Snippets are separated from the engine. Add this if you want them:
    use 'honza/vim-snippets'
    use 'quangnguyen30192/cmp-nvim-ultisnips'


    -- LSP Server
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'


    -- VimTex
    use 'lervag/vimtex'


    -- Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- -- Lazy loading:
    -- -- Load on specific commands
    -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    -- -- Load on an autocommand event
    -- use {'andymass/vim-matchup', event = 'VimEnter'}

    -- -- Load on a combination of conditions: specific filetypes or commands
    -- -- Also run code after load (see the "config" key)
    -- use {
        --   'w0rp/ale',
        --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
        --   cmd = 'ALEEnable',
        --   config = 'vim.cmd[[ALEEnable]]'
        -- }

        -- -- Plugins can have dependencies on other plugins
        -- use {
            --   'haorenW1025/completion-nvim',
            --   opt = true,
            --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
            -- }

            -- -- Plugins can also depend on rocks from luarocks.org:
            -- use {
                --   'my/supercoolplugin',
                --   rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
                -- }

                -- -- You can specify rocks in isolation
                -- use_rocks 'penlight'
                -- use_rocks {'lua-resty-http', 'lpeg'}

                -- -- Local plugins can be included
                -- use '~/projects/personal/hover.nvim'

                -- -- Plugins can have post-install/update hooks
                -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

                -- -- Post-install/update hook with neovim command
                -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

                -- -- Post-install/update hook with call of vimscript function with argument
                -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

                -- -- Use specific branch, dependency and run lua file after load
                -- use {
                    --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
                    --   requires = {'kyazdani42/nvim-web-devicons'}
                    -- }

                    -- -- Use dependency and run lua function after load
                    -- use {
                        --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
                        --   config = function() require('gitsigns').setup() end
                        -- }

                        -- -- You can specify multiple plugins in a single call
                        -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

                        -- -- You can alias plugin names
                        -- use {'dracula/vim', as = 'dracula'}
                    end)
