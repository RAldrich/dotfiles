" Mac specific keybindings

" cmd-k | cmd-d inserts an underscore
" shift-cmd-k | shift-cmd-d inserts a dash
imap <silent> <D-k> _
imap <silent> <D-d> _
imap <silent> <D-K> -
imap <silent> <D-D> -

" ===== NERDTree
" cmd-shift-N for nerd tree
nmap <D-N> :NERDTreeToggle<CR>

" cmd-/ toggles comments
map <D-/> :TComment<CR>
imap <D-/> <Esc>:TComment<CR>i

" cmd-(number) switches to that tab
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

" cmd-(arrow) resizes the window
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>
