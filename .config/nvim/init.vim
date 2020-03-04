" Created by João Pedro da Costa Carvalho

" Appearence
scriptencoding utf-8
set encoding=utf-8
syntax on
set number
set relativenumber
set cursorline
set textwidth=80
set colorcolumn=+1
set visualbell
set title titlestring=
set cmdheight=2
set list listchars=tab:│·,trail:·
set nojoinspaces
set termguicolors

" Settings
set splitbelow splitright
set showmatch
set showcmd
set wildmenu
set wrap			" Wrap lines

" Buffer
set modifiable

" Searching
nnoremap <silent><F3> :set hlsearch!<CR>
set incsearch
set ignorecase
set smartcase
set gdefault

" Tabulation
set tabstop=4		" tab spacing
set shiftwidth=4
set autoindent

" Performance
set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=50

" Syntax Highlight
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json

" vimPlug
source ~/.config/nvim/config/vimPlugs.vim

" Mapping
map			<silent>-			ddp
map			<silent>_			:call feedkeys( line(".")==1 ? '' : 'ddkP')<CR>
map			<silent><C-n>		:NERDTreeToggle<CR>
map			<silent><C-x>		:CocCommand<CR>
map			<silent><C-p>		:FZF<CR>
map			<silent>tn			:tabnew<CR>
map			<silent>tw			:tabclose<CR>
map			<silent>tl			:tabnext<CR>
map			<silent>th			:tabprevious<CR>
nmap		<silent>tb			:TagbarToggle<CR>
nmap		<silent>tt			:call Open_terminal()<CR>
nmap		<silent>vv			:vsplit<CR>
nmap		<silent>ss			:split<CR>
imap		<silent>jk			<ESC>
nnoremap	<silent>zz			:update<CR>
nnoremap	<silent>zq			:exit<CR>

" COC 
set statusline^=%{coc#status()}

" COC-actions
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" COC-vimlsp
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

" FZF
let g:fzf_layout = { 'down': '~40%'}

" GitGutter
let g:gitgutter_grep = 'ag'

" Airline
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_set = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#coc#enabled = 1

set secure	" disables unsafe commands in project specific

" Colourscheme
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_gruvbox_contrast_dark = "hard"
colorscheme gruvbox

autocmd WinEnter,FileType tex,text,markdown set background=light		" Setting light mode

function Open_terminal()
	split
	resize 10
	terminal
endfunction
