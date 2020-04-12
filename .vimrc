
" vimrc from Colm MacCárthaigh 

" Tell vim that my terminal background is dark
set bg=dark

" Turn on syntax highlighting
syntax on

" Use UTF-8, since even my name needs this
set encoding=utf-8

" Enabled digraphs, so that ctrl-k a ' produces á
set digraph

" Backups have saved me more than once
set backup

" Highlight matching brackets
set showmatch

" never beep
set visualbell

" Never use real tabs
set expandtab

" Keep indentation reasonable
set tabstop=4

" Automation group for coding
augroup cprog
  " Remove all autocommands
  au! 
 
  " When starting to edit a file: 
  "   For *.c and *.h files set formatting of comments and set C-indenting on. 
  "   For other files switch it off. 
  "   Don't change the order, it's important that the line with * comes first. 
  autocmd BufRead *       set formatoptions=tcql nocindent comments& 
  autocmd BufRead *.c,*.h set formatoptions=croql nocindent comments=sr:/*,mb:**,el:*/,:// number  
 
augroup END
