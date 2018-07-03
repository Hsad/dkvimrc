"%% SiSU Vim color file
" Coop Maintainer: Dash Kieler <dashkieler@gmail.com>
" Mercilessly ripped from Slate
" (originally looked at desert Hans Fugal <hans@fugal.net> http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "coop"
"#0f6316  " DarkGreen
"#ef6b2d  " burntapple
"#13701a  " MalardGreen
"#e57819  " orange
"#935219  " poopy brown
:hi pySelf guifg=#ad9d85
:hi pyPrint guifg=grey70
:hi pyDef guifg=grey50
:hi pyClass guifg=#ef6b2d
:hi MatchParen guibg=#13701a guifg=#e57819
":hi Normal guifg=White guibg=grey15
:hi Normal guifg=grey85 guibg=grey15
":hi Cursor guibg=khaki guifg=slategrey
:hi Cursor guibg=#ef6b2d guifg=Grey15
:hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
:hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7
:hi IncSearch guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
:hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
:hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
:hi Question guifg=springgreen ctermfg=green
:hi Search guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
:hi StatusLine guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
:hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Title guifg=gold gui=bold cterm=bold ctermfg=yellow
:hi Statement guifg=CornflowerBlue ctermfg=lightblue
":hi Statement guifg=#13701a ctermfg=lightblue
":hi Statement guifg=#e57819 ctermfg=lightblue
":hi Statement guifg=#935219 ctermfg=lightblue
:hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg guifg=salmon ctermfg=1
":hi String guifg=SkyBlue ctermfg=darkcyan
:hi String guifg=#6295aa ctermfg=darkcyan
:hi Comment term=bold ctermfg=11 guifg=grey40
:hi Constant guifg=#ffa0a0 ctermfg=brown
:hi Special guifg=darkkhaki ctermfg=brown
:hi Identifier guifg=salmon ctermfg=red
":hi Include guifg=red ctermfg=red
":hi Include guifg=#ce5708 ctermfg=red
:hi Include guifg=#0f6316 ctermfg=red
:hi PreProc guifg=red guibg=white ctermfg=red
:hi Operator guifg=Red ctermfg=Red
:hi Define guifg=gold gui=bold ctermfg=yellow
:hi Type guifg=CornflowerBlue ctermfg=2
":hi Function guifg=navajowhite ctermfg=brown
":hi Function guifg=#e57819 ctermfg=brown
":hi Function guifg=#099915 ctermfg=brown
:hi Function guifg=#6fb775 ctermfg=brown
":hi Structure guifg=green ctermfg=green
:hi Structure guifg=salmon ctermfg=green
:hi LineNr guifg=grey50 ctermfg=3
:hi Ignore guifg=grey40 cterm=bold ctermfg=7
:hi Todo guifg=orangered guibg=yellow2
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=underline ctermfg=5
:hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
