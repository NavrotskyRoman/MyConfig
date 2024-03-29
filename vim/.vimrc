set relativenumber
set autoindent

call plug#begin('~/.vim/plugged')

"System/GUI
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'edkolev/tmuxline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'gregsexton/MatchTag'
Plug 'terryma/vim-multiple-cursors'  "MustInstall
Plug 'preservim/tagbar'  "MustInstall

"Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
"Plug 'sjl/badwolf'

"Language
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'juleswang/css.vim'
Plug 'othree/html5.vim'

"Faster
Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'

"Other
"Plug 'aserebryakov/vim-todo-lists'

call plug#end()


"Some setting for plugins
"let g:indent_guides_enable_on_vim_startup = 1

"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=grey
"set ts=1 sw=2 et

let g:javascript_plugin_jsdoc = 1
"let g:VimTodoListsDatesEnabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:user_emmet_install_global = 1
"autocmd FileType html,css,js,jsx,javascript.jsx EmmetInstall

"Settings VIM
set guifont=Font\ Awesome\ 10
"set guifont=DejaVu\ Sans:s12
set clipboard=unnamedplus
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
set t_Co=256 
set shiftwidth=2
set expandtab
syntax on
"set paste
"set pastetoggle=<F10>

"colorscheme gruvbox
"set background=dark

"VIM Mapping
map <C-n> :NERDTreeToggle<CR> 
nmap <F8> :TagbarToggle<CR>
let mapleader = "\<Space>"
" change clipboard
  map + :set clipboard=unnamedplus<cr>
  map _ :set clipboard=""<cr>
  map = "+
  map - "_

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Reload vimrc
"	nnoremap <leader>rv :source<Space>~/.vimrc<cr>

" Edit vimrc
" nnoremap <leader>ev :tabnew $MYVIMRC<cr>
"

" tab stuff
		nnoremap tn :tabnew<cr>
		nnoremap tk :tabnext<cr>
		nnoremap tj :tabprev<cr>
		nnoremap th :tabfirst<cr>
		nnoremap tl :tablast<cr>

	" space-s to save
  		nnoremap <leader>s :w<cr>

	" space-q to quit (doesn't save, watch out!)
	  	nnoremap <leader>q :q<cr>

" Commenting
   
 " space-1 insert "!" commenting
 "    nnoremap <leader>1 :norm i!<cr>
 "    vnoremap <leader>1 :norm i!<cr>

 " space-' insert """ commenting
 "    nnoremap <leader>' :norm i"<cr>
 "    vnoremap <leader>' :norm i"<cr>

 " space-3 insert "#" commenting
 "    nnoremap <leader>3 :norm i#<cr>
 "    vnoremap <leader>3 :norm i#<cr>

 " space-- insert "--" commenting
 "    nnoremap <leader>- :norm i--<cr>
 "    vnoremap <leader>- :norm i--<cr>

 " space-6 uncomment
 "    nnoremap <leader>6 :norm ^x<cr>
 "    vnoremap <leader>6 :norm ^x<cr>

"Emmet         
"let g:user_emmet_expandabbr_key = '<M-,>'
let g:user_emmet_leader_key=','
"Other themes
filetype plugin indent on

let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

"air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Airline Themes
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
let g:airline_theme='kolor'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'

"Multi
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

set dir=$HOME/.vim/tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif

