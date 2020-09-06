" MacOS modifier key settings: Ctrl->Opt, Opt->Ctrl, CapsLock->Ctl (avoiding chords)
" Other settings designed to help avoid over-use of left little finger.
"  for some advice, much not followed
"   https://danielmiessler.com/study/vim/  and
"   https://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader
"   Ack plugin installed: git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim

let mapleader = ";"
" make \ act as ; (trial)
nnoremap \ ;
" alias jk to escape key (trial)
inoremap jk <ESC>

" alias SP to : and reverse since : requres shift (a chord) for very common key
nnoremap <space> :
"        │     (nb: '│' != '|')
"        └─── mnemonic: go to "space" along full bottom of screen (or keyboard)
" nnoremap : ;

" nnoremap <leader>, ,
" plugin support
" filetype off		" need filetype off for this next line
" execute pathogen#infect()
" filetype plugin indent on
set nocompatible	" turn off vi compatibility
set modelines=0		" for security

set clipboard=unnamedplus
" nnoremap / /\v
" vnoremap / /\v

set ignorecase
set smartcase
set gdefault		" appends g by default to s///; add g yourself to stop

" set incsearch
set showmatch
set hlsearch
hi Search ctermbg=Brown
" to turn off annoying search highlight
nnoremap <leader><leader> :noh<cr>
" these tab settings seem a wasted opportunity
nnoremap <tab> %
vnoremap <tab> %

syntax on
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set background=dark
set vb t_vb=
set spelllang=en_us
set nojoinspaces
set encoding=utf-8
set wrapmargin=1
set mouse=h
set formatoptions=ltcq1j
set ruler
set ai ic

nnoremap <leader>k i<C-R>=strftime("%Y.%m.%d")<CR><CR>
nnoremap <leader>x "md'm
" nnoremap <leader>f :+,$!msfold''
nnoremap <leader>a :set noai noic
nnoremap <leader>b :set ai ic
nnoremap <leader>d "md'm
nnoremap <leader>x "md'm
" nnoremap <leader>e F<yf>Pls </hhi
" nnoremap <leader>g 70| 
" nnoremap <leader>j 76|F 
" nnoremap <leader>h 71|F 
" nnoremap <leader>n :w:nn
nnoremap <leader>n :w:n
nnoremap <leader>i "mP
" like Cmd V for paste/put
nnoremap <leader>v "mp
nnoremap <leader>y m'"my'm''
nnoremap <leader>r :'m,.
nnoremap <leader>t :e#
" for creating new NAAN registry entries
nnoremap <leader>m !/---vim_naan
nnoremap <leader>q :quit
nnoremap <leader>w :w
nnoremap <leader>z :w:suspend
" nnoremap <leader>v !/---./vim_naan
" xxx
"
" nnoremap <leader>w <C-w>s<C-w>j
" trying out alternates to keep left hand from stretching with control key
"   C-j,k -> C-f,b
" Add aliases <C-j>/C-k> for forward and back, as they're less of a hand stretch and
" unlike <C-f>/<C-b>, <C-d>/<C-u> generally keep cursor position on same screen line.
nnoremap <C-j> <C-d><C-d>
nnoremap <C-k> <C-u><C-u>
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" nnoremap <leader>x :e xG"mp
" nnoremap <leader>l /^........................................................................./
" nnoremap <leader>o :/^Date:/co'z:s/[^0-9]*\([^-+]*\).*/\1/:/^From:/m'z:s/$/,/J:.g/:[^<]*<\([^>]*\)>/s//: \1/
" drop these?
" nnoremap <leader>^ :,$s/^/> /''
" nnoremap <leader>& :,$s/^> \?//''
" nnoremap <leader>1 :pu s1G"spWifyi - oBcc: m/j/^Subject:
