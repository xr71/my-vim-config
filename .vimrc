set shell=bash

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



" Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chrisbra/csv.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'godlygeek/tabular'
Plugin 'morhetz/gruvbox'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tc50cal/vim-terminal'
Plugin 'derekwyatt/vim-scala'
Plugin 'udalov/kotlin-vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'fatih/vim-go'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'kien/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set number
set history=500

" syntax coloring stuff
syntax enable
set background=dark
colorscheme gruvbox

" show vertical column at 80
set colorcolumn=80

" tab stuff
" use spaces instead of tabs
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" turnoff terrible beep sound!
set visualbell

" show current position
set ruler
" command input height is expanded
set cmdheight=1


" IndentGuides options
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=LightGrey   ctermbg=LightGrey
hi IndentGuidesEven guibg=LightGrey   ctermbg=LightGrey
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1

" spacechar guide
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set listchars+=space:•

" highlight all search matches
set hlsearch

" toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" autocmd vimenter * NERDTree

" making the default Explore netrw function like nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 18
" augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

" set default split behaviors
set splitbelow splitright
