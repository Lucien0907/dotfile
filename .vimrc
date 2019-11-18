" load plugins
call plug#begin('~/.vim/plugged')

" NERDTree for better file navigating
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Enable syntax for i3 config file, recommend add "# vim:filetype=i3" to the
" end of the config file
Plug 'PotatoesMaster/i3-vim-syntax'

" Vim-live-latex-preview for latex development"
Plug 'ying17zi/vim-live-latex-preview'

" Distractionless writing"
Plug 'junegunn/goyo.vim'

" Colorschemes"
Plug 'flazz/awesome-vim-colorschemes'

call plug#end()

:let mapleader = ","

" Colorscheme
"set termguicolors
"set background=dark
"colorscheme deep-space
hi! Normal ctermbg=NONE guibg=White
hi! NonText ctermbg=NONE guibg=White

hi TabLineFill cterm=none ctermfg=none ctermbg=grey
hi TabLineSel cterm=none ctermfg=none ctermbg=none
hi TabLine cterm=none ctermfg=white ctermbg=darkgrey

hi StatusLine cterm=NONE ctermbg=NONE ctermfg=white
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=white


" Some basics:
filetype plugin indent on
syntax on
set encoding=utf-8
set number relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
set softtabstop=4
set mouse=a
set laststatus=2
"set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Enable spell-checking
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us
hi SpellBad cterm=none ctermfg=white ctermbg=Red
hi SpellLocal ctermfg=white ctermbg=Cyan

" Enable autocompletion:
set wildmenu
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd fileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right
set splitbelow splitright

" Shotcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Copy selected text to system clipboard
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-v> "*P

" Automatically delete all trailling whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Ctrl-n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" Ctrl-g to toggle Goyo
map <leader>g :Goyo<CR>

" Remap exit to alt+q
map <leader>q :q<CR>
"map <leader>q1 :q!<CR>
map <leader>w :w<CR>
"map <leader>wq :wq<CR>
map <leader>s :split<CR>
map <leader>vs :vsplit<CR>
map <leader>tn :tabnew<CR>
map <leader>tq :tabclose<CR>
map <leader><tab> :tabnext<CR>

" Remap exit insert mode
"inoremap <C-i> <esc>

nnoremap o o<Esc>
nnoremap O O<Esc>
