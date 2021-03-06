" Sets the color scheme
colorscheme elflord
" Disables compatibility mode
set nocompatible
" Highlights search results as typing
set incsearch
" Ignore case when searching
set ic
" Enables line numbering
set number
" Enable line highlighting
set cursorline
" Removes automatically created backup files
set nobackup
set nowritebackup
" Sets tabwidth to 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab
" Enables ruler
set ruler
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
set omnifunc=syntaxcomplete#Complete
syntax on
" Maps enter to insert a new line
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" Removes keymappings for the arrow keys
map <Up> <>
map <Down> <>
map <Left> <>
map <Right> <> 
" Fix pasting
set paste
" Sets syntax for Cisco config files.
" http://www.vim.org/scripts/script.php?script_id=4624
au BufReadPost *.config set syntax=cisco

set swapfile
set dir=C:\temp
" set guifont=Fixedsys:h16:cANSI:qDRAFT
set guifont=Ubuntu_Mono:h18:cANSI:qDRAFT
" Aliases
cnoreabbrev W w
cnoreabbrev uniq sort u
