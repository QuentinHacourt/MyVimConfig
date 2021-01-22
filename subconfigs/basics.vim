" some sane basic settings
syntax on                              " Enables syntax highlighing
" set hidden                              " Required to keep multiple buffers open
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
colorscheme gruvbox                     " Best theme ever
set background=dark                     " tell vim what the background color looks like
let g:gruvbox_contrast_dark = 'hard'    " Obviously we need high contrast
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
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o      " Disables automatic commenting on newline:
let g:indentLine_char = '┆'             " indentation
set nohlsearch                          " no highlighting when searching with /
