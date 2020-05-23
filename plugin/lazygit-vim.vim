if exists("g:loaded_lazygitvim") || &cp
  finish
endif
let g:loaded_lazygitvim = 1

command Lazygit :call LazygitOpen()

function! LazygitOpen()
    execute ":silent ! tmux popup -KER \"lazygit -p '" . getcwd() . "'\" "
endfunction

