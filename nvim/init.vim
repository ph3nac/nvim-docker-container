augroup sourcevimrc
	autocmd!
	autocmd BufWritePost *vim nested source $MYVIMRC 
augroup END

if has("autocmd")
	augroup redhat
	" In text files, always limit the width of text to 78 characters
	autocmd BufRead *.txt set tw=78
	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal! g'\"" |
	\ endif
		augroup END
endif

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
