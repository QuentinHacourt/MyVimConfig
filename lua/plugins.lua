return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use "rafamadriz/friendly-snippets"
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require("luasnip/loaders/from_vscode").load({ paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" } })
    end
  }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Nerd tree
  use { 'preservim/nerdtree' }

  -- Goyo
  use { 'junegunn/goyo.vim' }

  use { 'jreybert/vimagit' }
  use { 'lukesmithxyz/vimling' }
  use { 'vimwiki/vimwiki' }


  use { 'bling/vim-airline' }
  use { 'tpope/vim-commentary' }
  use { 'ap/vim-css-color' }

  -- Go plugin
  use { 'fatih/vim-go' }

  -- Javascript
  use { 'pangloss/vim-javascript' }

  -- Jsx
  use { 'maxmellon/vim-jsx-pretty' }
  use { 'maksimr/vim-jsbeautify' }

  -- Typescript
  use { 'leafgarland/typescript-vim' }
  use { 'peitalin/vim-jsx-typescript' }

  -- -- Flutter
  -- use { 'dart-lang/dart-vim-plugin' }
  -- use { 'thosakwe/vim-flutter' }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    "ray-x/lsp_signature.nvim",
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
    end
  }
end)
