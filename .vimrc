set cindent
set ruler
set showmode
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set number
set hls
set nocompatible
set sw=4
set guifontset=8x16,kc15f,-*-16-*-big5-0 
set cursorline
"set fenc=big5 enc=big5 tenc=utf8
set list
set listchars=tab:>-,trail:-
syntax on
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight CursorLine cterm=none ctermbg=0 
set background=dark
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif
imap <C-F11> <C-R>=strftime("%x %H:%M:%S")<BAR><CR>. Owen.<ESC> <C-R>
let b:match_words='\<ifeq\>\|\<ifneq\>:\<else\>:\<endif\>'
