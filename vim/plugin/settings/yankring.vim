let g:yankring_history_file = '.yankring-history'
nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>

function! YRRunAfterMaps()
    " Make Y behave like C and D (from current column to end of line)
    nnoremap Y   :<C-U>YRYankCount 'y$'<CR>

    " If you visually select something and hit paste that thing gets yanked into your buffer.
    " This generally is annoying when you're copying one item and repeatedly pasting it.
    " This changes the paste command in visual mode so that it doesn't overwrite
    " whatever is in your paste buffer.
    vnoremap p :<C-U>YRPaste 'p', 'v'<CR>gv:YRYankRange 'v'<CR>
endfunction
