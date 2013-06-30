call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_prompt = '» '
let g:unite_enable_start_insert = 1
nnoremap ,t :Unite buffer file_mru file_rec/async file/new<CR>
vnoremap ,t :<C-u>UniteWithCursorWord buffer file_mru file_rec/async file/new<CR>
