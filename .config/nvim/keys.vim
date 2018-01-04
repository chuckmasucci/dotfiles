" F3 - Toggle line numbers with
nnoremap <F3> :NumbersToggle<CR>

" \\ - Clear search highlighting
nnoremap \\ :noh<CR>

" p - Paste
nnoremap p ]p

" \w - Save buffer
nnoremap \w :w<CR>

" - Delete line
noremap - dd

" \ss - Source config
noremap <leader>ss :source ~/.config/nvim/init.vim<CR>

" Ctrl-J - Insert line below current line
nnoremap <C-J> m`o<Esc>``

" Ctrl-K - Insert line above current line
nnoremap <C-K> m`O<Esc>``

" Ctrl-W - Close current buffer
nnoremap <C-W> :bd<CR>

" Ctrl-Q - Close nvim
nnoremap <C-Q> :q<CR>

" Y - Copy current line
nnoremap Y y$

" S - Replace current work with copied word
nnoremap S diw"0P

" Tab - Tab(indent) selected line 
vmap <Tab> >gv

" Shift-Tab - Tab(indent) selected line back
vmap <S-Tab> <gv

" \v - Paste from clipboard
map <leader>v "+gP

" \c - Copy to clipboard
map <leader>c "+y 

" Q - Repeat last macro
nnoremap Q @@

" Ctrl-l insert jsdoc 
nmap <silent> <C-l> <Plug>(jsdoc)
