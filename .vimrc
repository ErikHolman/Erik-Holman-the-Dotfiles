" Intro =========================================
"
"	Erik Holman: the .vimrc
"	Last Change: 9/16/2024
"	
" ===============================================


" Config ========================================
"
"	nocompatible	Removes Vi compatability
"	title			Vim will set title in the terminal
"	number 			Display line numbers
"	relativenumber 	Turns on relative line numbers
"	scrolloff 		Max if there are more than [8] lines above or below cursor
"	tabstop 		Defines a tab as [4] spaces
"	wrap 			Enforce line wrapping
"	linebreak		If a linebreak happens, this will:
"		linebreak		Activate the linebreak
"		breakindent		Force the new line to indent
"		breakindentopt	Shift the indent by [6] columns
"		showbreak		Adds a special character [»] to the beginning of the broken line
"
" ===============================================
set nocompatible
set title
set number
set relativenumber
set scrolloff=8
set tabstop=4
set wrap
if exists('+linebreak')
	set breakindent
	set breakindentopt=sbr,shift:2	
	set linebreak
	set showbreak=\» 
endif


" File handling =================================
"
"	syntax 			Enable syntax highlighting
"	filetype		Vim will detect the filetype
"		plugin		Vim will download filetype support as needed
"		indent		Vim will indend lines based on filetype
"
" ===============================================
syntax on
syntax reset 
filetype on
filetype plugin on			
filetype indent on			


" Status bar ====================================
"
" 	statusline 		Clear staus bar on reload
" 	statusline+=	Modifies status bar
" 	laststatus 		Sets status bar to [2] to last line
"
" ===============================================
set statusline=
set statusline+=\ %F\ %m\ %R
set statusline+=%=
set statusline+=\ %y
set statusline+=\[
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\]
set statusline+=%=
set statusline+=\ %l:%c::%L
set laststatus=2


" Theme =========================================
"
"	cursorline		Visual cue for the current line
"	antialias		Font fix for MacOSX
"	termguicolors	Use my defined highlights
"	colorscheme		Theme is currently: https://github.com/catppuccin/vim
"
" ===============================================
set cursorline
set antialias
set termguicolors
colorscheme catppuccin_mocha

" My Keymapping =================================
" 	
"	[:] mode
" 	[I]nsert mode
" 	[N]ormal mode
" 	[V]isual mode
"
"	[N] [V] K - moves line(s) up 1
"	[N] [V] J - moves line(s) down 1
"
" ===============================================
nnoremap K :m .-2<CR>==
vnoremap K :m '<-2<CR>gv=gv
nnoremap J :m .+1<CR>==
vnoremap J :m '>+1<CR>gv=gv


" Options that are interesting, but not implemented
"
"	set wildmenu
"	set wildchar=<tab>
"	set incsearch
"
" ================================================
