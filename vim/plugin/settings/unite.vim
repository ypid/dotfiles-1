call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_mru', 'max_candidates', 5)
call unite#custom#source('file_rec/async', 'max_candidates', 15)

let g:unite_prompt = '» '

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    imap <silent><buffer><expr> <C-s>     unite#do_action('below')
    imap <silent><buffer><expr> <C-v>     unite#do_action('right')
    imap <buffer> <C-j>     <C-n>
    imap <buffer> <C-k>     <C-p>
endfunction

nnoremap ,t :Unite -start-insert file_mru file_rec/async file/new<CR>
vnoremap ,t "zy:<C-u>Unite -input=<C-R>z -start-insert file_mru file_rec/async file/new<CR>

"
" Buffer listing/switching (mnemonic: Unite Buffer)
"
nnoremap ,ub :Unite -no-start-insert -quick-match buffer<CR>
vnoremap ,ub "zy:<C-u>Unite -input=<C-R>z buffer<CR>

"
" Grep buffer search (mnemonic: Unite Grep Buffer)
"
nnoremap ,ugb :Unite grep:$buffers -no-start-insert<CR>
vnoremap ,ugb "zy:<C-u>Unite grep:$buffers -no-start-insert -input=<C-R>z<CR>

"
" Grep file search (mnemonic: Unite Grep File)
"
if executable('ag')
    " Use ag in unite grep source.
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ggrep')
    " Use gnu grep in unite grep source.
    let g:unite_source_grep_command = 'ggrep'
endif
nnoremap ,ugf :Unite -no-start-insert grep:.<CR>
vnoremap ,ugf "zy:<C-u>Unite -no-start-insert grep:.::<C-R>z<CR>
