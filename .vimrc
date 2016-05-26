" Want to set this before any others
let mapleader = "\<Space>"

set shell=/bin/bash\ -i

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
  	if filereadable(config_file)
  		execute 'source' config_file
  	endif
  endfor
endfunction

" Setup Vundle to manage my bundles
"-----------------------------------
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Plugins are each listed in their own file. Loop and
" source ftw
"----------------------------------------------------------------
call s:SourceConfigFilesIn('rcplugins')

call vundle#end()
filetype plugin indent on " required!
syntax on

" Vimrc is split accross multiple files, so loop over
" and source each
"---------------------------------------------------------------------
call s:SourceConfigFilesIn('rcfiles')
