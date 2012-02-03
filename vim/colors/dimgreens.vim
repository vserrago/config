set background=dark "or light
highlight clear
if exists("syntax_on")
        syntax reset
    endif
    let g:colors_name = "vivify"
    set t_Co=256

    highlight Boolean             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CTagsClass          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CTagsImport         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CTagsMember         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Character           guifg=#7ac5cd ctermfg=116 gui=none cterm=none
    highlight Comment             guifg=#698b69 ctermfg=65  gui=none cterm=none
    highlight Conditional         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Constant            guifg=#6b8e23 ctermfg=64  gui=none cterm=none
    highlight Cursor      guifg=#eeeeee ctermfg=255 guibg=#008b00 ctermbg=28  gui=none cterm=none
    highlight CursorColumn        guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight CursorLine          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Debug               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Define              guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight DefinedName         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Delimiter           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight DiffAdd             guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight DiffChange          guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight DiffDelete          guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight DiffText            guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight Directory           guifg=#6ca6cd ctermfg=74  gui=none cterm=none
    highlight EnumerationName     guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight EnumerationValue    guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Error       guifg=#eeeeee ctermfg=255 guibg=#cd0000 ctermbg=160 gui=none cterm=none
    highlight ErrorMsg            guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Exception           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Float               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight FoldColumn          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Folded      guifg=#000000 ctermfg=0   guibg=#8c8c8c ctermbg=245 gui=none cterm=none
    highlight Function            guifg=#46ad8a ctermfg=79  gui=none cterm=none
    highlight Identifier          guifg=#46ad8a ctermfg=79  gui=none cterm=none
    highlight Ignore              guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight IncSearch   guifg=#ffff00 ctermfg=11  guibg=#8db6cd ctermbg=74  gui=none cterm=none
    highlight Include             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Keyword             guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight Label               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight LineNr              guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight LocalVariable       guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Macro               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight MatchParen          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight ModeMsg             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight MoreMsg             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight NonText     guifg=#99aa99 ctermfg=108 guibg=#000800 ctermbg=22  gui=none cterm=none
    highlight Normal      guifg=#99aa99 ctermfg=108 guibg=#001800 ctermbg=22  gui=none cterm=none
    highlight Number              guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight Operator            guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight PMenu       guifg=#dddddd ctermfg=253 guibg=#747678 ctermbg=67  gui=none cterm=none
    highlight PMenuSbar   guifg=#dddddd ctermfg=253 guibg=#949698 ctermbg=67  gui=none cterm=none
    highlight PMenuSel    guifg=#88dd88 ctermfg=114 guibg=#a4a6a8 ctermbg=67  gui=none cterm=none
    highlight PMenuThumb  guifg=#dddddd ctermfg=253 guibg=#c4c6c8 ctermbg=110 gui=none cterm=none
    highlight PreCondit           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight PreProc             guifg=#8b7e66 ctermfg=179 gui=none cterm=none
    highlight Question            guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Repeat              guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Search      guifg=#000000 ctermfg=0   guibg=#607b8b ctermbg=67  gui=none cterm=none
    highlight SignColumn          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Special             guifg=#7ccd7c ctermfg=114 gui=none cterm=none
    highlight SpecialChar         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight SpecialComment      guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight SpecialKey          guifg=#7ac5cd ctermfg=116 gui=none cterm=none
    highlight SpellBad            guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight SpellCap            guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight SpellLocal          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight SpellRare           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Statement           guifg=#228b22 ctermfg=28  gui=none cterm=none
    highlight StatusLine          guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight StatusLineNC        guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight StorageClass        guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight String              guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight Structure           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight TabLine             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight TabLineFill         guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight TabLineSel          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Tag                 guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Title               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Todo                guifg=#99aa99 ctermfg=108 gui=none cterm=none
    highlight Type                guifg=#bd7550 ctermfg=173 gui=none cterm=none
    highlight Typedef             guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Underlined          guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Union               guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight VertSplit           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight Visual              guifg=#556b2f ctermfg=149 gui=none cterm=none
    highlight VisualNOS           guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight WarningMsg  guifg=#ff0000 ctermfg=196 guibg=#f8f8ff ctermbg=189 gui=none cterm=none
    highlight WildMenu            guifg=#eeeeee ctermfg=255 gui=none cterm=none
    highlight pythonBuiltin       guifg=#99aa99 ctermfg=108 gui=none cterm=none

