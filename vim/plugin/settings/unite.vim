call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_mru', 'max_candidates', 5)
call unite#custom#source('file_rec/async', 'max_candidates', 15)

let g:unite_prompt = '» '

nnoremap ,t :Unite -start-insert file_mru file_rec/async file/new<CR>
vnoremap ,t :<C-u>UniteWithCursorWord -start-insert file_mru file_rec/async file/new<CR>

" LustyJuggler-like buffer switching (mnemonic: Unite Buffer)
nnoremap ,ub :Unite -no-start-insert -quick-match buffer<CR>
vnoremap ,ub :<C-u>UniteWithCursorWord -no-start-insert -quick-match buffer<CR>

" TODO Buffer Grep!
" TODO C-j and C-k for navigation C-v C-s for splitting

" Grep like search (mnemonic: Unite Grep)
if executable('ggrep')
    " Use gnu grep in unite grep source.
    let g:unite_source_grep_command = 'ggrep'
elseif executable('ag')
    " Use ag in unite grep source.
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt = ''
endif
nnoremap ,ug :Unite -no-start-insert grep:.<CR>
vnoremap ,ug "zy:<C-u>Unite -no-start-insert grep:.::<C-R>z<CR>
