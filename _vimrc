" Sets the color scheme
colorscheme desert
" Disables compatibility mode
set nocompatible
" Ignore case when searching
set ic
" Enables line numbering
set number
" Removes automatically created backup files
set nobackup
set nowritebackup
" Sets tabwidth to 2 spaces
set shiftwidth=2
set tabstop=2
" Enables auto-indent
set autoindent
" Shares clipboard with the system
set clipboard=unnamed
" Makes line numbering relative to the cursor position
set relativenumber
" Enables search highligts
set hlsearch
" Allows us to remove lines with backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" This function and noremap binds Ctrl+N to toggle relative number mode
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
" Binds Ctrl+A to highlight all text
map <C-a> <esc>ggVG<CR>
" Enables syntax highlighting
filetype plugin on
syntax on
