" Mapping

" Move up & down lines
map			<silent>-			ddp
map			<silent>_			:call feedkeys( line(".")==1 ? '' : 'ddkP')<CR>

" NERDTree
map			<silent><C-n>		:NERDTreeToggle<CR>

" COC
map			<silent><C-x>		  :CocCommand<CR>
  " Moves using TAB when popup menu is visible 
inoremap	<silent><expr>	<Tab>
	\ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap	<silent><expr>	<S-Tab>
	\ pumvisible() ? "\<C-p>" : "\<S-TAB>"
  " Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" FZF
map			<silent><C-p>		:FZF<CR>

" Tabs
map			<silent>tn			:tabnew<CR>
map			<silent>tw			:tabclose<CR>
map			<silent>tl			:tabnext<CR>
map			<silent>th			:tabprevious<CR>

" Tagbar
nmap		<silent>tb			:TagbarToggle<CR>
nmap		<silent>tt			:terminal<CR>

" Splits
nmap		<silent>vv			:vsplit<CR>
nmap		<silent>ss			:split<CR>
imap		<silent>jk			<ESC>

" Save and Exit
nnoremap	<silent>zz			:update<CR>
nnoremap	<silent>zq			:exit<CR>

" toUPPERCASE a word
map			<silent><c-u>		bveUl
imap		<silent><c-u>		<ESC>bveUli
