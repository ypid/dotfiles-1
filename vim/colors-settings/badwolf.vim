" call s:HL('DiffDelete', 'taffy', 'deepgravel')
" call s:HL('DiffAdd',    'snow',     'tardis')
" call s:HL('DiffChange', '',     'deepgravel')
" call s:HL('DiffText',   'taffy', 'deepgravel', 'bold')

hi DiffDelete guifg=#ff2c4b ctermfg=196 guibg=#45413b ctermbg=238
hi DiffAdd guifg=#ffffff ctermfg=15 guibg=#0a9dff ctermbg=39
hi DiffChange guibg=#45413b ctermbg=238
hi DiffText guifg=#ff2c4b ctermfg=196 guibg=#45413b ctermbg=238 gui=bold cterm=bold

