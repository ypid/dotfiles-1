autocmd FileType c,cpp,css,java,javascript,perl,php,jade nmap <silent> ,; :execute "CommaOrSemiColon"<CR>
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ,; <ESC>:execute "CommaOrSemiColon"<CR>a
