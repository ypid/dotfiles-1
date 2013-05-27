if has("autocmd")
  au BufNewFile,BufRead *.template set filetype=mustache syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
  au FileType mustache runtime! ftplugin/html/sparkup.vim
endif

