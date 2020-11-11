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
call plug#end()
