" NeoBundles {{{
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif                                                                               
                                                                                    
" Required:                                                                         
set runtimepath+=/home/david/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/david/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" NeoBundles goes below {{{

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
let g:ycm_autoclose_preview_window_after_completion=1
NeoBundle 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nvie/vim-flake8'
" NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'mattn/emmet-vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'tpope/vim-surround'
NeoBundle 'fatih/vim-go'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-jedi'
NeoBundle 'carlitux/deoplete-ternjs'


" NeoBundles goes above }}}
" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:deoplete#enable_at_startup = 1
" }}}

" Files and Buffers {{{
set hidden
set nobackup
set noswapfile

let NERDTreeQuitOnOpen=1
set diffopt+=vertical
" }}}

" Visuals {{{
syntax enable
set background=dark
colorscheme solarized
if has("gui_running")
    au vimenter * if !argc() | NERDTree | endif
    set lines=35 columns=116
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
    set linespace=5
    hi VertSplit guibg=bg guifg=bg
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
endif
set colorcolumn=80
set number relativenumber
set showcmd
set cursorline
set visualbell
set noerrorbells
" }}}

" Filetypes {{{
set encoding=utf-8
set modeline
set modelines=1
let g:syntastic_javascript_checker = ['eslint']
"}}}

" Tabs {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set smarttab
"}}}

" Search {{{
set wildmenu
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
" }}}

" Mapping {{{
nmap <F8> :TagbarToggle<CR>
nnoremap ,/ :nohlsearch<CR>
nnoremap <space> za
nnoremap j gj
nnoremap k gk
inoremap jj <esc>
nmap <up> <nop>
nmap <down> <nop>
nmap <right> <nop>
nmap <left> <nop>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <F2> :NERDTreeToggle<CR>
set pastetoggle=<F12>
cmap w!! w !sudo tee % >/dev/null
cmap W w
cmap Q q
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gc
vnoremap <A-j> :m '>+1<CR>gv=gv
" }}}

" vim:foldmethod=marker:foldlevel=0
