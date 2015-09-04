Plugin 'rking/ag.vim'

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
  let g:ag_highlight=1
end
