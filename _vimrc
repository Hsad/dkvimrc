set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
"did it work? and once more?

"for vim wiki, allows running of plugins based on file type
filetype plugin on
" syntax is on
syntax on


if has('gui_running')
	colorscheme slate "slate for gvim
	set lines=30 columns=86 "+5 for the line numbering space and foldcolumn
else
	colorscheme pablo "pablo for termvim
	if hostname() == "raspberrypi"
		colorscheme industry
	endif
endif

set diffexpr=MyDiff()
set tabstop=4
set shiftwidth=4
set autoindent
set number
set showcmd
set history=700

set guifont=consolas:h9:b

set encoding=utf-8
set fileencoding=utf-8
" stops the cursor from going all the way to the top or bottom
set so=7

"make search ignore case unless its used in the search
set smartcase

"the golden child.  jk to exit insert mode
inoremap jk <Esc>
"quick {} auto indents and magic
inoremap {} {<Enter>}<Esc>ko 

"TAKE ME TO YOUR LEADER
map <space> <leader>
map <leader>w :w<cr>
"nnoremap <leader>h ^
"nnoremap <leader>l $
"insert a space at the cursor while in normal mode with a double tap of space
nnoremap <leader><space> i<space><esc>
"window switchining without the awkward ctrl-w
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
"fold based on closing brackets
nnoremap <leader>z Va{zf
"bufferswap left and right
nnoremap <leader>b :bN<cr>
nnoremap <leader>n :bn<cr>

"auto folds. not sure if I need it
set foldmethod=indent
"turn on foldcolumn so shit makes sense
set foldcolumn=1

autocmd BufWinLeave *.* mkview
"autocmd BufWinLeave * mkview "there seems to be confilicting instructions
autocmd BufWinEnter *.* silent loadview 
"autocmd BufWinEnter * silent loadview "floating around out on the web

"make enter, in normal mode, add a new line below.  Uses h as a mark
nnoremap <CR> mho<ESC>`h
nnoremap <S-Enter> mhO<ESC>`h

"so normally J joins lines, its pretty easy to brake a line down,
""but moving a comment above its current line is a pain in the ass
"ctrl-shift-J to move comment up
nnoremap <c-J> i<cr><esc>ddkP

"body the arrow keys to force myself to learn
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"later body the hjkl keys to really learn vim
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>

" stop vim from overwiting the paste buffer with what was pasted over
vnoremap p "_dp
vnoremap P "_dP

" python debugging
nnoremap <leader>d o<cr>import ptpdb<esc>optpdb.set_trace()<esc>o<esc>kk


"Stops backup files from cluttering Directories
set nobackup
"puts backups in an isolated directory
set swapfile
if hostname() == "DASHX-PC"
  set dir=E:/tools/Dropbox/Text/Swap
elseif hostname() == "DASHLAP-PC"
  set dir=C:/Users/DashLap/Dropbox/Text/Swap
elseif hostname() == "MADEINSPACE-030"
  set dir=C:/Users/dash/vimfiles
  set undodir=C:/Users/dash/vimfiles/undo
elseif hostname() == "MADEINSPACE-M33"
  set dir=C:/Users/dash/vimfiles
  set undodir=C:/Users/dash/vimfiles/undo
endif

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
":set dictionary="/usr/dict/words"

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif
" map <leader>ss :setlocal spell!<cr> , not ready for this yet
