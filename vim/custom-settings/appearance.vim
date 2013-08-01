set background=dark
set laststatus=2 "always show the statusline

" Make it beautiful - colors and fonts
let s:myTheme='base16-monokai'
exec 'colorscheme ' . s:myTheme

" If there's a custom airline theme too, load it. Otherwise load the
" solarized one just so it won't look very bad.
let s:airlineCustom="~/.vim/custom-settings/colors/" . s:myTheme . "-airline.vim"
if filereadable(expand(s:airlineCustom))
    exec "au VimEnter * so " . s:airlineCustom
endif

let s:colorSchemeCustom="~/.vim/custom-settings/colors/" . s:myTheme . ".vim"
if filereadable(expand(s:colorSchemeCustom))
    exec "au VimEnter * so " . s:colorSchemeCustom
endif

if has("gui_running")
    " Disable the scrollbars (NERDTree)
    set guioptions-=r
    set guioptions-=L

    " Disable the macvim toolbar
    set guioptions-=T

    " Full screen means FULL screen
    set fuoptions=maxvert,maxhorz
    set lines=999
    set columns=999

    "tell the term has 256 colors
    set t_Co=256

    " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
    " For some reason this doesn't work as a regular set command,
    " (the numbers don't show up) so I made it a VimEnter event
    autocmd VimEnter * set guitablabel=%N:\ %t\ %M

    set guifont=Monaco\ for\ Powerline:h13,Monaco:h13,Inconsolata\ XL:h17,Inconsolata:h20
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

