"STYLING
syntax on "turn on syntax highlighting
set background=dark "set background to dark
set number relativenumber "set relative number
set cursorline "set row line for cursor
set tabstop=2 "reduce indentation
set shiftwidth=2
set hidden
set nowrap
set list
set listchars=tab:\ \ ,trail:·
:highlight NonText ctermfg=16 guifg=#61E8E1
:highlight EndOfBuffer guifg=bg

"error styling
" CoC: {{{
   hi! CocErrorSign ctermfg=cyan ctermbg=black
   hi! CocInfoSign  ctermfg=yellow ctermbg=black
"  }}}
:hi Comment ctermfg=gray


"FUNCTIONALITY
set path+=** "Search down into subfolders
set wildmenu "display all matching files when tab complete
set wildignore=node_modules/**,.git/**
let mapleader = " " "set leader to space
set scrolloff=4
set sidescrolloff=8
"allow :W to act as :w in vim command line
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
" Quicker switching between windows
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l
" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

"REMAPPINGS
"open vimrc in v-split
nmap <leader>rc :vs ~/.config/nvim/init.vim<cr>
"open searched file in vsplit
"nnoremap <leader>nn :vert sfind<space>
"ignore files in wildmenu
set wildignore+=**/.git/**,**/__pycache__/**,**/venv/**,**/node_modules/**,**/dist/**,**/build/**,*.o,*.pyc,*.swp
"open file under cursor in vertical split
nnoremap <C-w>f <C-w>f<C-w>L
"access system clipboard
nnoremap "" "*
"remove 'v' from entering visual mode
noremap v <Nop>
"enter visual mode using :Visual
"command! Visual normal! v
"change surround from ys to leader s
noremap <leader>s ys 
"turn off relativenumber
nmap <leader>p :set rnu!<cr>


"PLUGINS
call plug#begin(stdpath('data') . '/plugged')
"fucntional plugins 
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'

"Styling plugins
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'lukas-reineke/indent-blankline.nvim'

"Webdev plugins
	Plug 'prettier/vim-prettier', { 'do': 'npm install' }
	Plug 'mattn/emmet-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}


"Testing
Plug 'folke/todo-comments.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'

call plug#end()

"NERDTree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
nnoremap <expr> <leader>t g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'

"Prettier
packloadall
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#tab_width = 1

"emmet
"map emmet leader key to ,
let g:user_emmet_leader_key=','

"Coc
let g:coc_global_extensions = [
			\ 'coc-tsserver'
			\]
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>

"Fzf
nnoremap <leader>n :GFiles<cr>

"Airline
let g:airline_theme = 'base16_dracula'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
set noshowmode

" Fugitive
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Git commit<CR>


"SKELETON
nnoremap <leader>rt :-1read $HOME/.config/nvim/skeleton/react_tsx<cr>7gg0fEciw<C-r>=expand("%:t")<CR><Esc>2b2dw
nnoremap <leader>rj :-1read $HOME/.config/nvim/skeleton/react_jsx<cr>3gg0fEciw<C-r>=expand("%:t")<CR><Esc>2b2dw
nnoremap <leader>ignorevim :-1read $HOME/.config/nvim/skeleton/ignorevim<cr>
nnoremap <leader>tern :-1read $HOME/.config/nvim/skeleton/ternaryoperatorjsx<cr>0atrue<Esc>:Prettier<cr>wciw

"Testing
set termguicolors
set signcolumn=yes:1
highlight SignColumn guibg=#282a36 ctermbg=white
set nojoinspaces
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

highlight IndentColor guifg=#1F5C53
let g:indent_blankline_char_highlight_list = ['IndentColor']

lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
