local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- Chezmoi must be run first
        use 'alker0/chezmoi.vim'

        -- UI
        use 'MunifTanjim/nui.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'rcarriga/nvim-notify'
        use 'folke/noice.nvim'
        -- use 'vigoux/notifier.nvim'

        -- Search
        use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake -- build build -- config Release && cmake -- install build -- prefix build'}
        use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}

        -- Status information
        -- use 'romgrk/barbar.nvim' -- status bar
        use {'akinsho/bufferline.nvim', tag = 'v3.*', requires = {'RRethy/nvim-base16'}}
        use 'tiagovla/scope.nvim'
        use 'nvim-lualine/lualine.nvim'
        -- use 'wfxr/minimap.vim'

        use 'mbbill/undotree' -- undo history
        use 'christoomey/vim-tmux-navigator' -- tmux shortcuts
        use 'folke/which-key.nvim'
        -- use 'nhooyr/neoman.vim' -- use neovim to read man pages

        -- LSP
        use 'folke/trouble.nvim'
        use {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
        use 'ray-x/navigator.lua'
        -- use 'glepnir/lspsaga.nvim', { 'branch': 'main' }
        use 'folke/lsp-colors.nvim'
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
        use 'jose-elias-alvarez/null-ls.nvim'

        -- Colorschemes
        use 'RRethy/nvim-base16'

        -- Completion
        -- nvim-cmp
        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'
        use 'petertriho/cmp-git'
        use 'jalvesaq/cmp-nvim-r'
        use 'onsails/lspkind.nvim'
        -- use 'andersevenrud/cmp-tmux'

        -- File Management
        use 'nvim-tree/nvim-tree.lua'
        -- use 'nvim-neo-tree/neo-tree.nvim'
        -- use {'ms-jpq/chadtree', branch = 'chad', 'do': 'python3 -m chadtree deps'}
        use 'kevinhwang91/rnvimr'
        use 'goolord/alpha-nvim'

        -- Icons
        use 'nvim-tree/nvim-web-devicons' --  Recommended (for coloured icons)

        -- Indent - set up correctly
        use 'Vonr/align.nvim'
        -- use 'nathanaelkane/vim-indent-guides'
        use 'Yggdroot/indentLine'
        use 'lukas-reineke/indent-blankline.nvim'

        -- Miscellaneous
        use 'windwp/nvim-autopairs'
        use 'Iron-E/nvim-libmodal'
        use 'Iron-E/nvim-bufmode'
        use 'Iron-E/nvim-tabmode'
        use 'chrisbra/NrrwRgn'
        -- use 'folke/zen-mode.nvim'

        -- Movement
        use 'phaazon/hop.nvim' -- use letters to jump to words

        -- REPL
        use {'jalvesaq/Nvim-R', branch = 'master'} -- R plugin
        use 'hkupty/iron.nvim'

        -- Snippets
        use 'hrsh7th/cmp-vsnip'
        use 'hrsh7th/vim-vsnip'
        use 'rafamadriz/friendly-snippets'

        -- Surround
        use 'kylechui/nvim-surround' -- to add quotes etc. around word

        -- Tags - redundant?
        use 'simrat39/symbols-outline.nvim'

        -- Vimscript plugins
        -- Try to find Lua ports of these
        use 'chrisbra/csv.vim' -- display CSV

        use 'tpope/vim-repeat' -- repeat complex actions (make sure it works)
        use 'christoomey/vim-system-copy' -- use system clipboard

        -- Comments
        use 'preservim/nerdcommenter' -- shortcuts to comment out
        use 'tpope/vim-commentary'

        -- File Management
        use 'tpope/vim-eunuch' -- POSIX file commands

        -- Icons
        use 'ryanoasis/vim-devicons' -- unicode icons everywhere

        -- Indent
        use 'michaeljsmith/vim-indent-object'
        use 'godlygeek/tabular' -- align to specific characters

        -- Kana plugins
        use 'kana/vim-smartchr' -- replace characters
        use 'kana/vim-niceblock' -- better visual block mode
        use 'kana/vim-fakeclip' -- better clipboard
        use 'kana/vim-altercmd' -- alter existing command
        use 'kana/vim-advice' -- alter commands?

        -- LaTeX
        use 'lervag/vimtex' -- LaTeX continuous compile

        -- Markdown
        

        -- Movement
        use 'mg979/vim-visual-multi' -- sublime text multiple cursor
        use 'kana/vim-smartword' -- better word movement
        use 'kana/vim-better-tag-jump' -- tag jump
        use 'kana/vim-exjumplist' -- jumplist motions

        -- Operators
        use 'kana/vim-operator-user' -- define own operator
        use 'kana/vim-operator-replace' -- replace existing operator
        use 'kana/vim-operator-siege'

        -- Text objects - can tree-sitter replace these?
        use 'kana/vim-textobj-user' -- whole buffer text object
        use 'kana/vim-textobj-entire' -- whole buffer text object
        use 'kana/vim-textobj-function' -- function text object
        use 'kana/vim-textobj-line' -- line text object
        use 'kana/vim-textobj-help' -- help text object
        use 'kana/vim-textobj-syntax' -- syntax text object
        use 'kana/vim-textobj-lastpat' -- lastpattern text object
        use 'kana/vim-textobj-indent' -- indent text object
        use 'kana/vim-textobj-fold' -- fold text object
        use 'tpope/vim-unimpaired' -- miscellaneous paired mappings
        use 'tpope/vim-abolish' -- act on word variants
        use 'wellle/targets.vim' -- more text targets (i.e. parentheses)

        -- VCS
        use 'tpope/vim-fugitive' -- git plugin
        if packer_bootstrap then
            require('packer').sync()
        end
    end
)
