" .vimrc


" Dependencies

" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git" ~/.vim/bundle/Vundle.vim
" vim
" :PluginInstall

" Hybrid color scheme
" git clone https://github.com/w0ng/vim-hybrid.git ~/vim-hybrid
" ln -s ~/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim


" No compatibility
set nocompatible
set encoding=utf-8



" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours
set t_Co=256
" Dark solarized scheme
set background=dark



" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
autocmd BufNewFile,BufRead *.py set filetype=python



" Tabs, indentation and lines

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
set formatoptions+=t



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Underscores denote words
set iskeyword-=_
set wildmenu
set wildmode=longest,list


" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Set relative line numbers if we can...
if exists("+relativenumber")
    " Due to a problem with relative line numbers not persisting across new
    " tabs and splits, set no line numbers at all...
    set nonumber
    " ..then set relative ones.
    set relativenumber
" ...otherwise let’s just have regular ones.
else
    set number
endif
" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif
" Highlight current line
set cursorline
" Don’t keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase



" Key mappings

" jj to throw you into normal mode from insert mode
inoremap jj <esc>
" jk to throw you into normal mode from insert mode
inoremap jk <esc>
" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>
"Create blank line without entering insert mode
" blank line below
map <Enter> o<ESC>
" blank line above
map <S-Enter> O<ESC>
:let mapleader = ";"
" Easier buffer navigation
map <Leader>l :ls<CR>:b
map <Leader>j :bn<CR>
map <Leader>k :bp<CR>
" Easier .vimrc sourcing
map <Leader>s :source $MYVIMRC<CR>
" Easter file write
map <Leader>w :w<CR>
" Easier close buffer without closing window
map <Leader>c :Bclose<CR>

map <Leader>v :%s/\s\+$//e<CR>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elmcast/elm-vim'
Plugin 'elzr/vim-json'
Plugin 'JulesWang/css.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'tpope/vim-commentary'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'wlangstroth/vim-racket'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'FrigoEU/psc-ide-vim'
"Plugin 'morhetz/gruvbox'
"Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()

"purescript-vim indentation rules
let purescript_indent_if = 0
let purescript_indent_case = 2
let purescript_indent_let = 2
let purescript_indent_where = 2
let purescript_indent_do = 2
let purescript_indent_in = 2
filetype plugin indent on

color solarized

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1

let g:airline_theme='solarized'

"let g:gruvbox_contrast_light='medium'

" highlight jsx in .js files
let g:jsx_ext_required = 0

au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" fzf fuzzy search
" https://github.com/junegunn/fzf#as-vim-plugin
set rtp+=~/.fzf

" Toggle fzf
map <Leader>n :Files<CR>

nm <buffer> <silent> <leader>i :PimportModule 

" https://parceljs.org/hmr.html#safe-write
set backupcopy=yes
