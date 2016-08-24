colorscheme desert
set nocompatible
set ic
set number
set nobackup
set nowritebackup
set shiftwidth=2
set clipboard=unnamed
set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
map <C-a> <esc>ggVG<CR>
