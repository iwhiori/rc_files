set cindent
set ruler
set showmode
set shiftwidth=4
set tabstop=4
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
set expandtab
syntax on
highlight Comment ctermfg=darkcyan
highlight CursorLine cterm=NONE ctermbg=234 guibg=darkred
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred
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
highlight ERROR_pattern ctermbg=darkred guibg=darkred
match ERROR_pattern /^E:.*/
execute pathogen#infect()
" for ctags Ctrl + ] open in new tab
nmap <c-]> :tab tag <c-r><c-w><cr>
set nowrapscan
