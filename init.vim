let mapleader=","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    Plug 'jreybert/vimagit'
    Plug 'lukesmithxyz/vimling'
    Plug 'vimwiki/vimwiki'
    Plug 'bling/vim-airline'
    Plug 'tpope/vim-commentary'
    Plug 'kovetskiy/sxhkd-vim'
    Plug 'ap/vim-css-color'
    " git
    Plug 'stsewd/fzf-checkout.vim'
    " add vscode features to vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Elixir plugins
    Plug 'elixir-editors/vim-elixir'
    " Colorscheme
    Plug 'morhetz/gruvbox'
    " go plugin
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " search stuff with ctrl + p
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " git
    Plug 'tpope/vim-fugitive'
    " syntax highlighting
    " Plug 'sheerun/vim-polyglot'
    " javascript
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'maksimr/vim-jsbeautify'
    " Typescript
    Plug 'leafgarland/typescript-vim'
    " html
    " indentation
    " Plug 'Yggdroot/indentLine'
    " yaml
    Plug 'pedrohdz/vim-yaml-folds'
    " flutter
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'thosakwe/vim-flutter'
    " cpp
    Plug 'vim-syntastic/syntastic'
    Plug 'rhysd/vim-clang-format'
call plug#end()

colorscheme gruvbox                     " Best theme ever
let g:gruvbox_contrast_dark = 'hard'    " Obviously we need high contrast

" some sane basic settings
syntax on                              " Enables syntax highlighing
set exrc
set hidden                              " Required to keep multiple buffers open
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set go=a
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4
set softtabstop=0
set expandtab                           " Converts tabs to spaces
set shiftwidth=4
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number relativenumber                      " Line numbers
set cursorline                          " Enable highlighting of the current line
set noswapfile
set background=dark                     " tell vim what the background color looks like
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
nnoremap c "_c
set nocompatible
filetype plugin on
set smartcase
set colorcolumn=80
set wildmode=longest,list,full          " Enable autocompletion:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o      " Disables automatic commenting on newline:
let g:indentLine_char = '┆'             " indentation
set nohlsearch                          " no highlighting when searching with /
set exrc
set scrolloff=8
set foldlevelstart=20
