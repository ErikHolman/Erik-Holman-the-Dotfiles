" Intro =========================================
"
"	Erik Holman: the .vimrc
"	Last Change: 9/12/2024
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
"	hi				Highlighting
"					-see https://vimhelp.org/options.txt.html#%27highlight%27
"
" ===============================================
set cursorline
set antialias
set termguicolors
hi clear
hi CursorLine guibg=Grey30
hi CursorLineNr term=bold guifg=black guibg=white
hi LineNrAbove guibg=Grey20 guifg=Grey40
hi LineNrBelow guibg=Grey20 guifg=Grey40
hi ModeMsg guifg=black guibg=green
hi ModeMsg guifg=black guibg=green
hi NonText term=bold guibg=black guifg=Orange
hi Normal guibg=black
hi StatusLine guifg=darkblue guibg=white
hi StatusLineNC guifg=black guibg=Grey30

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
