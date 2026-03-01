" midnight.vim — Vim color scheme
" Based on BeanGreen247's Midnight-Blue palette
" Source: https://github.com/BeanGreen247/catppuccin-midnight-gtk
"         https://github.com/BeanGreen247/sway-setup-script
" Maintainer: BeanGreen247
" License: MIT

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "midnight"

" ─── Palette ────────────────────────────────────────────────────────────────
" bg       #0a1628   window background
" bg_deep  #08101e   deep background / inactive areas
" crust    #050a12   darkest layer (statusline bg, tabline bg)
" surface  #1a2a3a   selected / surface
" hover    #1e3d5c   hover / visual highlight
" surface2 #2a5a8a   accent background / line number col
" muted_fg #4a6a8a   muted / comments
" accent   #58a6ff   blue accent / keywords
" fg       #dce8f5   primary text
" subfg    #b0c8e0   subtext / punctuation
"
" Extra syntax palette
" red      #e06c75   errors / delete
" orange   #d19a66   numbers / constants
" yellow   #e5c07b   warnings / booleans
" green    #7ec8a0   strings / add diff
" cyan     #56b6c2   characters / special
" purple   #9d7cd8   types / preprocessor

" ─── Helper ─────────────────────────────────────────────────────────────────
" hi Group  guifg=<fg>  guibg=<bg>  gui=<attr>  ctermfg=<n>  ctermbg=<n>  cterm=<attr>

" ─── Editor UI ──────────────────────────────────────────────────────────────
hi Normal          guifg=#dce8f5   guibg=#0a1628   gui=NONE      ctermfg=253  ctermbg=234  cterm=NONE
hi NormalNC        guifg=#b0c8e0   guibg=#08101e   gui=NONE      ctermfg=250  ctermbg=233  cterm=NONE
hi NormalFloat     guifg=#dce8f5   guibg=#08101e   gui=NONE      ctermfg=253  ctermbg=233  cterm=NONE

hi LineNr          guifg=#4a6a8a   guibg=#0a1628   gui=NONE      ctermfg=60   ctermbg=234  cterm=NONE
hi CursorLine      guifg=NONE      guibg=NONE      gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi CursorLineNr    guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi CursorColumn    guifg=NONE      guibg=#1a2a3a   gui=NONE      ctermfg=NONE ctermbg=236  cterm=NONE

hi SignColumn      guifg=#4a6a8a   guibg=#0a1628   gui=NONE      ctermfg=60   ctermbg=234  cterm=NONE
hi FoldColumn      guifg=#4a6a8a   guibg=#0a1628   gui=NONE      ctermfg=60   ctermbg=234  cterm=NONE
hi Folded          guifg=#b0c8e0   guibg=#1a2a3a   gui=italic    ctermfg=250  ctermbg=236  cterm=NONE
hi ColorColumn     guifg=NONE      guibg=#1a2a3a   gui=NONE      ctermfg=NONE ctermbg=236  cterm=NONE

hi Visual          guifg=NONE      guibg=#1e3d5c   gui=NONE      ctermfg=NONE ctermbg=24   cterm=NONE
hi VisualNOS       guifg=NONE      guibg=#1e3d5c   gui=NONE      ctermfg=NONE ctermbg=24   cterm=NONE

hi Search          guifg=#0a1628   guibg=#58a6ff   gui=NONE      ctermfg=234  ctermbg=75   cterm=NONE
hi IncSearch       guifg=#0a1628   guibg=#e5c07b   gui=bold      ctermfg=234  ctermbg=221  cterm=bold
hi CurSearch       guifg=#0a1628   guibg=#58a6ff   gui=bold      ctermfg=234  ctermbg=75   cterm=bold
hi MatchParen      guifg=#58a6ff   guibg=#1e3d5c   gui=bold      ctermfg=75   ctermbg=24   cterm=bold

" ─── Statusline & Tabline ────────────────────────────────────────────────────
hi StatusLine      guifg=#dce8f5   guibg=#050a12   gui=NONE      ctermfg=253  ctermbg=232  cterm=NONE
hi StatusLineNC    guifg=#4a6a8a   guibg=#050a12   gui=NONE      ctermfg=60   ctermbg=232  cterm=NONE
hi StatusLineTerm  guifg=#dce8f5   guibg=#050a12   gui=NONE      ctermfg=253  ctermbg=232  cterm=NONE
hi StatusLineTermNC guifg=#4a6a8a  guibg=#050a12   gui=NONE      ctermfg=60   ctermbg=232  cterm=NONE

hi TabLine         guifg=#4a6a8a   guibg=#050a12   gui=NONE      ctermfg=60   ctermbg=232  cterm=NONE
hi TabLineFill     guifg=NONE      guibg=#050a12   gui=NONE      ctermfg=NONE ctermbg=232  cterm=NONE
hi TabLineSel      guifg=#58a6ff   guibg=#0a1628   gui=bold      ctermfg=75   ctermbg=234  cterm=bold

hi VertSplit       guifg=#1a2a3a   guibg=#0a1628   gui=NONE      ctermfg=236  ctermbg=234  cterm=NONE
hi WinSeparator    guifg=#1a2a3a   guibg=#0a1628   gui=NONE      ctermfg=236  ctermbg=234  cterm=NONE

" ─── Popup Menu ─────────────────────────────────────────────────────────────
hi Pmenu           guifg=#dce8f5   guibg=#08101e   gui=NONE      ctermfg=253  ctermbg=233  cterm=NONE
hi PmenuSel        guifg=#0a1628   guibg=#58a6ff   gui=NONE      ctermfg=234  ctermbg=75   cterm=NONE
hi PmenuSbar       guifg=NONE      guibg=#1a2a3a   gui=NONE      ctermfg=NONE ctermbg=236  cterm=NONE
hi PmenuThumb      guifg=NONE      guibg=#2a5a8a   gui=NONE      ctermfg=NONE ctermbg=24   cterm=NONE

" ─── Messages & Prompts ──────────────────────────────────────────────────────
hi ModeMsg         guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi MoreMsg         guifg=#7ec8a0   guibg=NONE      gui=bold      ctermfg=115  ctermbg=NONE cterm=bold
hi Question        guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi ErrorMsg        guifg=#e06c75   guibg=NONE      gui=bold      ctermfg=168  ctermbg=NONE cterm=bold
hi WarningMsg      guifg=#e5c07b   guibg=NONE      gui=bold      ctermfg=221  ctermbg=NONE cterm=bold
hi Title           guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold

" ─── Special Characters ──────────────────────────────────────────────────────
hi NonText         guifg=#2a5a8a   guibg=NONE      gui=NONE      ctermfg=24   ctermbg=NONE cterm=NONE
hi SpecialKey      guifg=#2a5a8a   guibg=NONE      gui=NONE      ctermfg=24   ctermbg=NONE cterm=NONE
hi Whitespace      guifg=#1e3d5c   guibg=NONE      gui=NONE      ctermfg=17   ctermbg=NONE cterm=NONE
hi EndOfBuffer     guifg=#1a2a3a   guibg=NONE      gui=NONE      ctermfg=236  ctermbg=NONE cterm=NONE

hi WildMenu        guifg=#0a1628   guibg=#58a6ff   gui=bold      ctermfg=234  ctermbg=75   cterm=bold
hi Directory       guifg=#58a6ff   guibg=NONE      gui=NONE      ctermfg=75   ctermbg=NONE cterm=NONE
hi Conceal         guifg=#4a6a8a   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE cterm=NONE

" ─── Syntax ─────────────────────────────────────────────────────────────────
hi Comment         guifg=#7a9fbe   guibg=NONE      gui=italic    ctermfg=103  ctermbg=NONE cterm=NONE

hi Constant        guifg=#d19a66   guibg=NONE      gui=NONE      ctermfg=179  ctermbg=NONE cterm=NONE
hi String          guifg=#7ec8a0   guibg=NONE      gui=NONE      ctermfg=115  ctermbg=NONE cterm=NONE
hi Character       guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi Number          guifg=#d19a66   guibg=NONE      gui=NONE      ctermfg=179  ctermbg=NONE cterm=NONE
hi Boolean         guifg=#e5c07b   guibg=NONE      gui=NONE      ctermfg=221  ctermbg=NONE cterm=NONE
hi Float           guifg=#d19a66   guibg=NONE      gui=NONE      ctermfg=179  ctermbg=NONE cterm=NONE

hi Identifier      guifg=#dce8f5   guibg=NONE      gui=NONE      ctermfg=253  ctermbg=NONE cterm=NONE
hi Function        guifg=#58a6ff   guibg=NONE      gui=NONE      ctermfg=75   ctermbg=NONE cterm=NONE

hi Statement       guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi Conditional     guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi Repeat          guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi Label           guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi Operator        guifg=#b0c8e0   guibg=NONE      gui=NONE      ctermfg=250  ctermbg=NONE cterm=NONE
hi Keyword         guifg=#58a6ff   guibg=NONE      gui=bold      ctermfg=75   ctermbg=NONE cterm=bold
hi Exception       guifg=#e06c75   guibg=NONE      gui=bold      ctermfg=168  ctermbg=NONE cterm=bold

hi PreProc         guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE
hi Include         guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE
hi Define          guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE
hi Macro           guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE
hi PreCondit       guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE

hi Type            guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi StorageClass    guifg=#9d7cd8   guibg=NONE      gui=NONE      ctermfg=134  ctermbg=NONE cterm=NONE
hi Structure       guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi Typedef         guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE

hi Special         guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi SpecialChar     guifg=#56b6c2   guibg=NONE      gui=NONE      ctermfg=73   ctermbg=NONE cterm=NONE
hi Tag             guifg=#58a6ff   guibg=NONE      gui=NONE      ctermfg=75   ctermbg=NONE cterm=NONE
hi Delimiter       guifg=#b0c8e0   guibg=NONE      gui=NONE      ctermfg=250  ctermbg=NONE cterm=NONE
hi SpecialComment  guifg=#89d4ac   guibg=NONE      gui=italic    ctermfg=115  ctermbg=NONE cterm=NONE
hi Debug           guifg=#e06c75   guibg=NONE      gui=NONE      ctermfg=168  ctermbg=NONE cterm=NONE

hi Underlined      guifg=#58a6ff   guibg=NONE      gui=underline ctermfg=75   ctermbg=NONE cterm=underline
hi Ignore          guifg=#4a6a8a   guibg=NONE      gui=NONE      ctermfg=60   ctermbg=NONE cterm=NONE
hi Error           guifg=#e06c75   guibg=NONE      gui=bold      ctermfg=168  ctermbg=NONE cterm=bold
hi Todo            guifg=#0a1628   guibg=#e5c07b   gui=bold      ctermfg=234  ctermbg=221  cterm=bold

" ─── Diff ────────────────────────────────────────────────────────────────────
hi DiffAdd         guifg=#7ec8a0   guibg=#0d2a1e   gui=NONE      ctermfg=115  ctermbg=22   cterm=NONE
hi DiffChange      guifg=#e5c07b   guibg=#2a2200   gui=NONE      ctermfg=221  ctermbg=52   cterm=NONE
hi DiffDelete      guifg=#e06c75   guibg=#2a0d0d   gui=NONE      ctermfg=168  ctermbg=52   cterm=NONE
hi DiffText        guifg=#e5c07b   guibg=#3a3000   gui=bold      ctermfg=221  ctermbg=58   cterm=bold

" ─── Spelling ────────────────────────────────────────────────────────────────
hi SpellBad        guifg=NONE      guibg=NONE      gui=undercurl guisp=#e06c75 ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellCap        guifg=NONE      guibg=NONE      gui=undercurl guisp=#e5c07b ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare       guifg=NONE      guibg=NONE      gui=undercurl guisp=#9d7cd8 ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellLocal      guifg=NONE      guibg=NONE      gui=undercurl guisp=#56b6c2 ctermfg=NONE ctermbg=NONE cterm=underline

" ─── GitGutter ───────────────────────────────────────────────────────────────
hi GitGutterAdd    guifg=#7ec8a0   guibg=#0a1628   gui=NONE      ctermfg=115  ctermbg=234  cterm=NONE
hi GitGutterChange guifg=#e5c07b   guibg=#0a1628   gui=NONE      ctermfg=221  ctermbg=234  cterm=NONE
hi GitGutterDelete guifg=#e06c75   guibg=#0a1628   gui=NONE      ctermfg=168  ctermbg=234  cterm=NONE
hi GitGutterChangeDelete guifg=#e06c75 guibg=#0a1628 gui=NONE    ctermfg=168  ctermbg=234  cterm=NONE

" ─── ALE ─────────────────────────────────────────────────────────────────────
hi ALEError            guifg=#e06c75   guibg=NONE  gui=undercurl guisp=#e06c75 ctermfg=168  ctermbg=NONE cterm=underline
hi ALEWarning          guifg=#e5c07b   guibg=NONE  gui=undercurl guisp=#e5c07b ctermfg=221  ctermbg=NONE cterm=underline
hi ALEInfo             guifg=#58a6ff   guibg=NONE  gui=undercurl guisp=#58a6ff ctermfg=75   ctermbg=NONE cterm=underline
hi ALEErrorSign        guifg=#e06c75   guibg=#0a1628 gui=bold    ctermfg=168  ctermbg=234  cterm=bold
hi ALEWarningSign      guifg=#e5c07b   guibg=#0a1628 gui=bold    ctermfg=221  ctermbg=234  cterm=bold
hi ALEInfoSign         guifg=#58a6ff   guibg=#0a1628 gui=bold    ctermfg=75   ctermbg=234  cterm=bold

" ─── CoC ─────────────────────────────────────────────────────────────────────
hi CocErrorSign        guifg=#e06c75   guibg=#0a1628 gui=NONE    ctermfg=168  ctermbg=234  cterm=NONE
hi CocWarningSign      guifg=#e5c07b   guibg=#0a1628 gui=NONE    ctermfg=221  ctermbg=234  cterm=NONE
hi CocInfoSign         guifg=#58a6ff   guibg=#0a1628 gui=NONE    ctermfg=75   ctermbg=234  cterm=NONE
hi CocHintSign         guifg=#56b6c2   guibg=#0a1628 gui=NONE    ctermfg=73   ctermbg=234  cterm=NONE
hi CocErrorHighlight   guifg=NONE      guibg=NONE  gui=undercurl guisp=#e06c75 ctermfg=NONE ctermbg=NONE cterm=underline
hi CocWarningHighlight guifg=NONE      guibg=NONE  gui=undercurl guisp=#e5c07b ctermfg=NONE ctermbg=NONE cterm=underline
hi CocInfoHighlight    guifg=NONE      guibg=NONE  gui=undercurl guisp=#58a6ff ctermfg=NONE ctermbg=NONE cterm=underline
hi CocHighlightText    guifg=NONE      guibg=#1a2a3a gui=NONE    ctermfg=NONE ctermbg=236  cterm=NONE
hi CocFloating         guifg=#dce8f5   guibg=#08101e gui=NONE    ctermfg=253  ctermbg=233  cterm=NONE
hi CocMenuSel          guifg=#0a1628   guibg=#58a6ff gui=NONE    ctermfg=234  ctermbg=75   cterm=NONE

" ─── NERDTree ────────────────────────────────────────────────────────────────
hi NERDTreeDir         guifg=#58a6ff   guibg=NONE    gui=NONE    ctermfg=75   ctermbg=NONE cterm=NONE
hi NERDTreeDirSlash    guifg=#2a5a8a   guibg=NONE    gui=NONE    ctermfg=24   ctermbg=NONE cterm=NONE
hi NERDTreeFile        guifg=#dce8f5   guibg=NONE    gui=NONE    ctermfg=253  ctermbg=NONE cterm=NONE
hi NERDTreeExecFile    guifg=#7ec8a0   guibg=NONE    gui=bold    ctermfg=115  ctermbg=NONE cterm=bold
hi NERDTreeOpenable    guifg=#4a6a8a   guibg=NONE    gui=NONE    ctermfg=60   ctermbg=NONE cterm=NONE
hi NERDTreeClosable    guifg=#4a6a8a   guibg=NONE    gui=NONE    ctermfg=60   ctermbg=NONE cterm=NONE
hi NERDTreeCWD         guifg=#9d7cd8   guibg=NONE    gui=bold    ctermfg=134  ctermbg=NONE cterm=bold
hi NERDTreeHelp        guifg=#4a6a8a   guibg=NONE    gui=italic  ctermfg=60   ctermbg=NONE cterm=NONE

" ─── FZF ─────────────────────────────────────────────────────────────────────
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'Visual'],
    \ 'hl+':     ['fg', 'Search'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'VertSplit'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" ─── Airline ─────────────────────────────────────────────────────────────────
" Theme defined in autoload/airline/themes/midnight.vim
