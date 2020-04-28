" __  ___   _   ____  _____ _   _
" \ \/ / | | | |  _ \| ____| \ | |
"  \  /| | | | | |_) |  _| |  \| |
"  /  \| |_| | |  _ <| |___| |\  |
" /_/\_\\___/  |_| \_\_____|_| \_|
"
" init.vim file
" for NeoVim config

set shell=bash

call plug#begin('~/local/share/nvim/plugged')

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

" fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

" Git integration (status bar and commands like Gblame)
Plug 'tpope/vim-fugitive'
" Add info to sidebar about git
Plug 'airblade/vim-gitgutter'
" Add file-management commands like :Delete, :Move, and :Rename
Plug 'tpope/vim-eunuch'

" Working with text
Plug 'junegunn/goyo.vim'
Plug 'chrisbra/csv.vim'

" Working with indents
Plug 'Yggdroot/indentLine'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy find files
Plug 'ctrlpvim/ctrlp.vim'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Working with tags
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Commenting
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'

" Syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'unblevable/quick-scope'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-gitgutter'

" Languages
Plug 'fatih/vim-go'
Plug 'yuezk/vim-js'
Plug 'derekwyatt/vim-scala'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'vim-syntastic/syntastic'
" let Coc handle python language server
" Plug 'davidhalter/jedi-vim'
" Plug 'python-mode/python-mode'

" Work with csv files
Plug 'chrisbra/csv.vim'


call plug#end()

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

