if !exists('g:vscode')  " Only for neovim, not vscode
    " Spaces & Tabs {{{
    set tabstop=2       " number of visual spaces per TAB
    set softtabstop=2   " number of spaces in tab when editing
    set shiftwidth=2    " number of spaces to use for autoindent
    set expandtab       " tabs are space
    set autoindent
    set copyindent      " copy indent from the previous line
    " }}} Spaces & Tabs

    " Clipboard {{{
    set clipboard+=unnamedplus
    " }}} Clipboard

    " UI Config {{{
    set hidden
    set number                   " show line number
    set showcmd                  " show command in bottom bar
    set cursorline               " highlight current line
    set wildmenu                 " visual autocomplete for command menu
    set showmatch                " highlight matching brace
    set laststatus=2             " window will always have a status line
    set nobackup
    set noswapfile
    let &colorcolumn="80,".join(range(119,999),",")
    " }}} UI Config

    " Search {{{
    set incsearch       " search as characters are entered
    set hlsearch        " highlight matche
    set ignorecase      " ignore case when searching
    set smartcase       " ignore case if search pattern is lower case
                        " case-sensitive otherwise

	""" VARIABLES """


	""" END VARIABLES """

endif

" ALLOW ALL PLUGINS EVERYWHERE VSCODE OR NEOVIM

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'



" Personal Plugins

" Theme
Plug 'joshdick/onedark.vim'

" Latex support
Plug 'lervag/vimtex'

" deoplete (DISABLED)
" Plug 'zchee/deoplete-jedi'

" Use release branch of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python syntax highlighting
Plug 'vim-python/python-syntax'

" Surround Plugin
Plug 'https://github.com/tpope/vim-surround'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
colorscheme onedark " Enable the colour scheme
