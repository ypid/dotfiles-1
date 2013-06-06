" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

" Disable the macvim toolbar
set guioptions-=T

if has("gui_running")
    " Full screen means FULL screen
    set fuoptions=maxvert,maxhorz
endif

