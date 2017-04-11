set number
set history=1000
set hlsearch
set backspace=indent,eol,start
set shiftwidth=3
set tabstop=3
set softtabstop=3
set expandtab
syntax on
set mouse=a
set showmatch
set wildmenu
set background=dark
colorscheme evening
hi Normal ctermbg=none
set viminfo='20,f1,\"50,h,:20,/20
set guifont=Courier\ New\ 46
set gfn=Courier\ New\ 46
map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

augroup gzip
	" Remove all gzip autocommands
	au!

	" Enable editing of gzipped files
	"	  read: set binary mode before reading the file
	"	        uncompress text in buffer after reading
	"	 write: compress file after writing
	"	append: uncompress file, append, compress file
	autocmd BufReadPre,FileReadPre		*.gz set bin
	autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
	autocmd BufReadPost,FileReadPost	*.gz set nobin
	autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")
	
	autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
	autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r

	autocmd FileAppendPre			*.gz !gunzip <afile>
	autocmd FileAppendPre			*.gz !mv <afile>:r <afile>
	autocmd FileAppendPost			*.gz !mv <afile> <afile>:r
	autocmd FileAppendPost			*.gz !gzip <afile>:r
augroup END
