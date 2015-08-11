set nocompatible
filetype off

" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ggreer/the_silver_searcher'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fireplace'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'guns/vim-clojure-static'
Plugin 'luochen1990/rainbow'
Plugin 'guns/vim-clojure-highlight'
Plugin 'mhumeSF/one-dark.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()
filetype plugin indent on

" Use the Solarized Dark theme
set background=dark
colorscheme sexy-railscasts-256
" colorscheme onedark

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enables matchit.vim - used by rubyblock plugin
runtime macros/matchit.vim
" Make vim reload files on change (useful when swapping branches)
set autoread
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t create backups when editing files in certain directories
set nobackup
set noswapfile
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set relativenumber
set number
" Enable syntax highlighting
syntax on
" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" Show “invisible” characters
set lcs=trail:·,tab:▸\ 
set list
" Highlight searches
set hlsearch
" Ignore case of searches unless a capital letter is detected.
" If capital is detected, it becomes case sensitive
set ignorecase
set smartcase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
" set colorcolumn=101
highlight ColorColumn ctermbg=88
let &colorcolumn=101
" Highlight words past 100 chars
" Don’t show the intro message when starting Vim
" set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Set the diff opt to be vertical because it's more intuitive
set diffopt=vertical

" Set up the status line to show changes, name, readonly, line count
:set statusline=%{fugitive#statusline()}
:set statusline+=%#TODO#
:set statusline+=%m
:set statusline+=%*
:set statusline+=\ %f
:set statusline+=\ %y
:set statusline+=\ %r
:set statusline+=%=
:set statusline+=Current:\ %4l:%c\ Total:\ %4L

" CUSTOM COMMANDS
let mapleader="\<Space>"
command! E e
command! Gca :!git add . && git commit --amend<CR>
command! Gmd :!git merge develop<CR>
command! Gpd :!git stash && git checkout develop && git pull && git checkout -<CR>
command! Gri :!git rebase -i develop<CR>
command! PI :PluginInstall
command! Q q
command! QA qall
command! Qall qall
command! Sl :!git stash list<CR>
command! Sp :!git stash pop<CR>
command! Ss :!git stash<CR>
nnoremap <C-l> :!clear<CR><CR>
nnoremap <leader><leader> <c-^>
nnoremap <leader>a :A<CR>
nnoremap <leader>bp Obinding.pry<ESC>:w<ESC>
nnoremap <leader>c- :!git checkout -<CR><CR>
nnoremap <leader>cb ^<kDIVIDE>do\ \|<CR>cw{<ESC>JA }<ESC>jddk
nnoremap <leader>cd :!git stash && git checkout develop<CR>
nnoremap <leader>ci j^y$k^hpa <ESC>j2ddk
nnoremap <leader>co :!git checkout 
nnoremap <leader>df :/def\ \(self\.\)\?\(<c-r>=expand("<cword>")<cr>\)<CR><ESC>
nnoremap <leader>dg :Ag! def\ \(self\.\)\?\(<c-r>=expand("<cword>")<cr>\)<CR><ESC>
nnoremap <leader>dt :call DiffUseTarget()<CR>
nnoremap <leader>dm :call DiffUseMerge()<CR>
nnoremap <leader>fb :Ag! binding.pry<CR>
nnoremap <leader>ga :!git add .<CR><CR>
nnoremap <leader>gc :!git commit<CR>
nnoremap <leader>gd :!git diff<CR>
nnoremap <leader>gl :!git log --name-only<CR>
nnoremap <leader>gp :!git push
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :!git add . && git commit -m "WIP"<CR><CR>
nnoremap <leader>ja :!java %:r <C-r>a<CR>
nnoremap <leader>jc :!javac %<CR>
nnoremap <leader>jr :!java %:r 
nnoremap <leader>lr :!lein run<CR>
nnoremap <leader>m :Emodel 
nnoremap <leader>na O<C-[>j:w<ESC>
nnoremap <leader>nb o<C-[>k:w<ESC>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>sb :!git stash branch 
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>va :AV<CR>
nnoremap <leader>vo :call OpenAlternateWindowSplit()<CR>
nnoremap <leader>vr :e ~/.vimrc<CR>
nnoremap <silent> <esc> :noh<cr><esc>
noremap <leader>sg :%s/
noremap <leader>sl :s/
noremap <leader>w :w<CR>

" Reload the vimrc every time it is saved
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Script to swap to the alternate file, vertically split, and reopen prev file
function! OpenAlternateWindowSplit()
  :e#
  :vsplit
  :e#
endfunction

" Functions to take the diff from target or merge, respectively
function! DiffUseTarget()
  :diffget //2
  :diffupdate
endfunction

function! DiffUseMerge()
  :diffget //3
  :diffupdate
endfunction

" Use the silver searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  set grepformat=%f:%l:%c%m
  nmap <silent> <RIGHT> :cnext<CR>
  nmap <silent> <LEFT> :cprev<CR>
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap K :Ag!<SPACE><cword><CR>
  nnoremap \ :Ag!<SPACE>

  " Use ag in CtrlP for files
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  let g:ctrlp_use_caching = 0
end

" set up persistent undo so that changes can be undone after saving
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif

" Enable rainbow parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
      \ 'ctermfgs': ['lightgreen', 'lightblue', 'darkred', 'lightcyan',
      \ 'lightyellow'],
      \ }
