autocmd BufNewFile *.tests.js execute "0r".jasmine#templates_directory()."/Spec.js"
autocmd BufNewFile,BufRead,BufWritePost *.[Tt]ests.js set filetype=jasmine.javascript syntax=jasmine.javascript
