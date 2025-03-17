set term=screen-256color " Tmux setup

let g:iswindows = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Judge current process is vim or gvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
	let g:isGUI = 1
else
	let g:isGUI = 0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" set to auto read when a file is changed outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gVim automatically maximize when it open
" http://superuser.com/questions/140419/how-to-start-gvim-maximized
if g:iswindows
	au GUIEnter * simalt ~x
endif

" always show current position
set ruler

" in many terminal emulators the mouse works just fine, thus enable it
if has('mouse')
	set mouse=a
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set paste to ignore format
set paste