" General Vim sanity improvements

" ,yw to yank the entire word even if the cursor is in the middle
nnoremap ,yw yiww

" Make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y  :<C-U>YRYankCount 'y$'<CR>
endfunction

" 0 goes to the first character instead of the beginning of the line
" ^ goes to the beginning of the line
nnoremap 0 ^
nnoremap ^ 0

" ,. goes to the last edit location
nnoremap ,. '.

" ========== NERD Tree ==========
" Ctrl-\ opens the project tree and exposes the current file
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical<CR>

" ,q toggles quickfix window
" ,oq to open it again
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

" ,z to open the previous buffer
" ,x to open the next buffer
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> .x :bn<CR>

" gf (go to file) creates the file if it doesn't already exist
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>

" vv splits the window vertically
" ss splits the window horizontally
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" ,cf copies the (c)urrent (f)ilename into the system clipboard
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>

" // clears the current search highlight
nmap <silent> // :nohlsearch<CR>

" vr (v)im (r)eload
nmap <silent> ,vr :so %<CR>
