" F3 - Toggle line numbers with
nnoremap <F3> :NumbersToggle<CR>

" \\ - Clear search highlighting
nnoremap \o :noh<CR>

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
nnoremap wo :bd<CR>

" Ctrl-Q - Close nvim
nnoremap <C-Q> :qall<CR>

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


nmap <silent> <C-l> <Plug>(jsdoc)

" Snipe
"map <leader><leader>f <Plug>(snipe-f)
"map <leader><leader>ge <Plug>(snipe-ge)
"nmap <leader><leader>] <Plug>(snipe-f-xp)
"nmap <leader><leader>[ <Plug>(snipe-F-xp)
"nmap <leader><leader>x <Plug>(snipe-f-x)
"nmap <leader><leader>X <Plug>(snipe-F-x)
"nmap <leader><leader>r <Plug>(snipe-f-r)
"nmap <leader><leader>R <Plug>(snipe-F-r)
"nmap <leader><leader>a <Plug>(snipe-f-a)
"nmap <leader><leader>A <Plug>(snipe-F-a)

nmap <silent> <C-H> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-K> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>

"nnoremap 1 A <esc>p
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
inoremap <silent> ii <ESC>

inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>
