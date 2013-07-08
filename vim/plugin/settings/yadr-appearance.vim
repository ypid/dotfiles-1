" Make it beautiful - colors and fonts
let s:myTheme='base16-monokai'
" let s:myTheme='molokai'
exec 'colorscheme ' . s:myTheme

" If there's a custom powerline theme too, load it. Otherwise load the
" solarized one just so it won't look very bad.
let s:powerlineCustom="~/.vim/colors-settings/" . s:myTheme . "-powerline.vim"
if filereadable(expand(s:powerlineCustom))
  exec "au VimEnter * so " . s:powerlineCustom
else
  exec "au VimEnter * so ~/.vim/colors-settings/solarized-powerline.vim"
endif

let s:colorSchemeCustom="~/.vim/colors-settings/" . s:myTheme . ".vim"
if filereadable(expand(s:colorSchemeCustom))
    exec "au VimEnter * so " . s:colorSchemeCustom
endif

set background=dark

set tabstop=4
set softtabstop=4
set shiftwidth=4

set splitright " Vertical split on right
set splitbelow " Horizontal split on below

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  set guifont=Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Resize splits when the window is resized
au VimResized * :wincmd =

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

