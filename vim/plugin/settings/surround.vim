" via: http://whynotwiki.com/Vim
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

" # Surround a word with #{ruby interpolation}
map ,# ysiw#vmap ,# c#{<C-R>"}<ESC>

" " Surround a word with double quotes
map " ysiw"
vmap " c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
" Without the comma, then it's a jump:
map ,' ysiw'
vmap ' c'<C-R>"'<ESC>

" ) or ( Surround a word with (parens)
" The difference is in whether a space is put in
map ( ysiw(
map ) ysiw)
vmap ( c( <C-R>" )<ESC>
vmap ) c(<C-R>")<ESC>

" [ Surround a [word] with [brackets]
" This one will h[ave] a small delay due unimpaired. You can hit <ESC> or
" <Space> after the bracket to have it instantly.
map ] ysiw]
map [ ysiw[
vmap [ c[ <C-R>" ]<ESC>
vmap ] c[<C-R>"]<ESC>

" { Surround a word with {braces}
map } ysiw}
map { ysiw{
vmap } c{ <C-R>" }<ESC>
vmap { c{<C-R>"}<ESC>

" Change inside various enclosures with Cmd-" and Cmd-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <D-'> f'ci'
nnoremap <D-"> f"ci"
nnoremap <D-(> f(ci(
nnoremap <D-)> f)ci)
nnoremap <D-[> f[ci[
nnoremap <D-]> f]ci]
