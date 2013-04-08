if has("autocmd")
  au  BufNewFile,BufRead *.template set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
endif

