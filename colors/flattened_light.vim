" 'flattened_dark.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" A no-bullshit light Solarized.

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'flattened_light'

if &t_Co >= 256 || has('gui_running')
  hi Normal                                                     cterm=NONE  ctermfg=240  ctermbg=230  guifg=#657b83  guibg=#fdf6e3

  set background=light

  hi ColorColumn                                                cterm=NONE  ctermbg=187  guibg=#eee8d5
  hi Comment                                                    cterm=NONE  ctermfg=245  gui=italic  guifg=#93a1a1
  hi ConId                                                      cterm=NONE  ctermfg=136  guifg=#b58900
  hi Conceal                                                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi Constant                                                   cterm=NONE  ctermfg=37  guifg=#2aa198
  hi Cursor                                                     cterm=NONE  ctermfg=230  ctermbg=240  guifg=#fdf6e3  guibg=#657b83
  hi CursorColumn                                               cterm=NONE  ctermbg=187  guibg=#eee8d5
  hi CursorLine                                                 cterm=NONE  ctermbg=187  guibg=#eee8d5  guisp=#586e75
  hi CursorLineNr                                                   term=bold  ctermfg=130  gui=bold  guifg=Brown
  hi DiffAdd                                                    cterm=NONE  ctermfg=64  ctermbg=187  gui=bold  guifg=#719e07  guibg=#eee8d5  guisp=#719e07
  hi DiffChange                                                 cterm=NONE  ctermfg=136  ctermbg=187  gui=bold  guifg=#b58900  guibg=#eee8d5  guisp=#b58900
  hi DiffDelete                                                 cterm=NONE  ctermfg=124  ctermbg=187  gui=bold  guifg=#dc322f  guibg=#eee8d5
  hi DiffText                                                   cterm=NONE  ctermfg=33  ctermbg=187  gui=bold  guifg=#268bd2  guibg=#eee8d5  guisp=#268bd2
  hi Directory                                                  cterm=NONE  ctermfg=33  guifg=#268bd2
  hi Error                                                          term=bold  cterm=bold  ctermfg=124  gui=bold  guifg=#dc322f
  hi ErrorMsg                                                       term=reverse  cterm=reverse  ctermfg=124  gui=reverse  guifg=#dc322f
  hi FoldColumn                                                 cterm=NONE  ctermfg=240  ctermbg=187  guifg=#657b83  guibg=#eee8d5
  hi Folded                                                         term=bold,underline  cterm=bold,underline  ctermfg=240  ctermbg=187  gui=bold,underline  guifg=#657b83  guibg=#eee8d5  guisp=#fdf6e3
  hi HelpExample                                                cterm=NONE  ctermfg=239  guifg=#586e75
  hi Identifier                                                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi IncSearch                                                      term=standout  cterm=standout  ctermfg=166  gui=standout  guifg=#cb4b16
  hi LineNr                                                     cterm=NONE  ctermfg=245  ctermbg=187  guifg=#93a1a1  guibg=#eee8d5
  hi MatchParen                                                     term=bold  cterm=bold  ctermfg=124  ctermbg=245  gui=bold  guifg=#dc322f  guibg=#93a1a1
  hi ModeMsg                                                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi MoreMsg                                                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi NonText                                                        term=bold  cterm=bold  ctermfg=244  gui=bold  guifg=#839496
  hi Pmenu                                                          term=reverse  cterm=reverse  ctermfg=240  ctermbg=187  gui=reverse  guifg=#657b83  guibg=#eee8d5
  hi PmenuSbar                                                      term=reverse  cterm=reverse  ctermfg=235  ctermbg=240  gui=reverse  guifg=#073642  guibg=#657b83
  hi PmenuSel                                                       term=reverse  cterm=reverse  ctermfg=245  ctermbg=235  gui=reverse  guifg=#93a1a1  guibg=#073642
  hi PmenuThumb                                                     term=reverse  cterm=reverse  ctermfg=240  ctermbg=230  gui=reverse  guifg=#657b83  guibg=#fdf6e3
  hi PreProc                                                    cterm=NONE  ctermfg=166  guifg=#cb4b16
  hi Question                                                       term=bold  cterm=bold  ctermfg=37  gui=bold  guifg=#2aa198
  hi Search                                                         term=reverse  cterm=reverse  ctermfg=136  gui=reverse  guifg=#b58900
  hi SignColumn                                                 cterm=NONE  ctermfg=240  ctermbg=248  guifg=#657b83  guibg=Grey
  hi Special                                                    cterm=NONE  ctermfg=124  guifg=#dc322f
  hi SpecialKey                                                     term=bold  cterm=bold  ctermfg=244  ctermbg=187  gui=bold  guifg=#839496  guibg=#eee8d5
  hi SpellBad                                                       term=undercurl  cterm=undercurl  gui=undercurl  guisp=#dc322f
  hi SpellCap                                                       term=undercurl  cterm=undercurl  gui=undercurl  guisp=#6c71c4
  hi SpellLocal                                                     term=undercurl  cterm=undercurl  gui=undercurl  guisp=#b58900
  hi SpellRare                                                      term=undercurl  cterm=undercurl  gui=undercurl  guisp=#2aa198
  hi Statement                                                  cterm=NONE  ctermfg=64  guifg=#719e07
  hi StatusLine                                                     term=reverse  cterm=reverse  ctermfg=239  ctermbg=187  gui=reverse  guifg=#586e75  guibg=#eee8d5
  hi StatusLineNC                                                   term=reverse  cterm=reverse  ctermfg=244  ctermbg=187  gui=reverse  guifg=#839496  guibg=#eee8d5
  hi TabLine                                                        term=underline  cterm=underline  ctermfg=240  ctermbg=187  gui=underline  guifg=#657b83  guibg=#eee8d5  guisp=#657b83
  hi TabLineFill                                                    term=underline  cterm=underline  ctermfg=240  ctermbg=187  gui=underline  guifg=#657b83  guibg=#eee8d5  guisp=#657b83
  hi TabLineSel                                                     term=underline,reverse  cterm=underline,reverse  ctermfg=245  ctermbg=235  gui=underline,reverse  guifg=#93a1a1  guibg=#073642  guisp=#657b83
  hi Title                                                          term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi Todo                                                           term=bold  cterm=bold  ctermfg=125  gui=bold  guifg=#d33682
  hi Type                                                       cterm=NONE  ctermfg=136  guifg=#b58900
  hi Underlined                                                 cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi VarId                                                      cterm=NONE  ctermfg=33  guifg=#268bd2
  hi VertSplit                                                  cterm=NONE  ctermfg=244  ctermbg=244  guifg=#839496  guibg=#839496
  hi Visual                                                         term=reverse  cterm=reverse  ctermfg=245  ctermbg=230  gui=reverse  guifg=#93a1a1  guibg=#fdf6e3
  hi VisualNOS                                                      term=reverse  cterm=reverse  ctermbg=187  gui=reverse  guibg=#eee8d5
  hi WarningMsg                                                     term=bold  cterm=bold  ctermfg=124  gui=bold  guifg=#dc322f
  hi WildMenu                                                       term=reverse  cterm=reverse  ctermfg=235  ctermbg=187  gui=reverse  guifg=#073642  guibg=#eee8d5
  hi cPreCondit                                                 cterm=NONE  ctermfg=166  guifg=#cb4b16
  hi gitcommitBranch                                                term=bold  cterm=bold  ctermfg=125  gui=bold  guifg=#d33682
  hi gitcommitComment                                           cterm=NONE  ctermfg=245  gui=italic  guifg=#93a1a1
  hi gitcommitDiscardedFile                                         term=bold  cterm=bold  ctermfg=124  gui=bold  guifg=#dc322f
  hi gitcommitDiscardedType                                     cterm=NONE  ctermfg=124  guifg=#dc322f
  hi gitcommitFile                                                  term=bold  cterm=bold  ctermfg=240  gui=bold  guifg=#657b83
  hi gitcommitHeader                                            cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi gitcommitOnBranch                                              term=bold  cterm=bold  ctermfg=245  gui=bold  guifg=#93a1a1
  hi gitcommitSelectedFile                                          term=bold  cterm=bold  ctermfg=64  gui=bold  guifg=#719e07
  hi gitcommitSelectedType                                      cterm=NONE  ctermfg=64  guifg=#719e07
  hi gitcommitUnmerged                                              term=bold  cterm=bold  ctermfg=64  gui=bold  guifg=#719e07
  hi gitcommitUnmergedFile                                          term=bold  cterm=bold  ctermfg=136  gui=bold  guifg=#b58900
  hi gitcommitUntrackedFile                                         term=bold  cterm=bold  ctermfg=37  gui=bold  guifg=#2aa198
  hi helpHyperTextEntry                                         cterm=NONE  ctermfg=64  guifg=#719e07
  hi helpHyperTextJump                                              term=underline  cterm=underline  ctermfg=33  gui=underline  guifg=#268bd2
  hi helpNote                                                   cterm=NONE  ctermfg=125  guifg=#d33682
  hi helpOption                                                 cterm=NONE  ctermfg=37  guifg=#2aa198
  hi helpVim                                                    cterm=NONE  ctermfg=125  guifg=#d33682
  hi hsImport                                                   cterm=NONE  ctermfg=125  guifg=#d33682
  hi hsImportLabel                                              cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hsModuleName                                                   term=underline  cterm=underline  ctermfg=64  gui=underline  guifg=#719e07
  hi hsNiceOperator                                             cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hsStatement                                                cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hsString                                                   cterm=NONE  ctermfg=244  guifg=#839496
  hi hsStructure                                                cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hsType                                                     cterm=NONE  ctermfg=136  guifg=#b58900
  hi hsTypedef                                                  cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hsVarSym                                                   cterm=NONE  ctermfg=37  guifg=#2aa198
  hi hs_DeclareFunction                                         cterm=NONE  ctermfg=166  guifg=#cb4b16
  hi hs_OpFunctionName                                          cterm=NONE  ctermfg=136  guifg=#b58900
  hi hs_hlFunctionName                                          cterm=NONE  ctermfg=33  guifg=#268bd2
  hi htmlArg                                                    cterm=NONE  ctermfg=244  guifg=#839496
  hi htmlEndTag                                                 cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi htmlSpecialTagName                                         cterm=NONE  ctermfg=33  gui=italic  guifg=#268bd2
  hi htmlTag                                                    cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi htmlTagN                                                       term=bold  cterm=bold  ctermfg=239  gui=bold  guifg=#586e75
  hi htmlTagName                                                    term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi javaScript                                                 cterm=NONE  ctermfg=136  guifg=#b58900
  hi pandocBlockQuote                                           cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocBlockQuoteLeader1                                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocBlockQuoteLeader2                                    cterm=NONE  ctermfg=37  guifg=#2aa198
  hi pandocBlockQuoteLeader3                                    cterm=NONE  ctermfg=136  guifg=#b58900
  hi pandocBlockQuoteLeader4                                    cterm=NONE  ctermfg=124  guifg=#dc322f
  hi pandocBlockQuoteLeader5                                    cterm=NONE  ctermfg=240  guifg=#657b83
  hi pandocBlockQuoteLeader6                                    cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi pandocCitation                                             cterm=NONE  ctermfg=125  guifg=#d33682
  hi pandocCitationDelim                                        cterm=NONE  ctermfg=125  guifg=#d33682
  hi pandocCitationID                                               term=underline  cterm=underline  ctermfg=125  gui=underline  guifg=#d33682
  hi pandocCitationRef                                          cterm=NONE  ctermfg=125  guifg=#d33682
  hi pandocComment                                              cterm=NONE  ctermfg=245  gui=italic  guifg=#93a1a1
  hi pandocDefinitionBlock                                      cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocDefinitionIndctr                                         term=bold  cterm=bold  ctermfg=61  gui=bold  guifg=#6c71c4
  hi pandocDefinitionTerm                                           term=standout  cterm=standout  ctermfg=61  gui=standout  guifg=#6c71c4
  hi pandocEmphasis                                             cterm=NONE  ctermfg=240  gui=italic  guifg=#657b83
  hi pandocEmphasisDefinition                                   cterm=NONE  ctermfg=61  gui=italic  guifg=#6c71c4
  hi pandocEmphasisHeading                                          term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocEmphasisNested                                           term=bold  cterm=bold  ctermfg=240  gui=bold  guifg=#657b83
  hi pandocEmphasisNestedDefinition                                 term=bold  cterm=bold  ctermfg=61  gui=bold  guifg=#6c71c4
  hi pandocEmphasisNestedHeading                                    term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocEmphasisNestedTable                                      term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocEmphasisTable                                        cterm=NONE  ctermfg=33  gui=italic  guifg=#268bd2
  hi pandocEscapePair                                               term=bold  cterm=bold  ctermfg=124  gui=bold  guifg=#dc322f
  hi pandocFootnote                                             cterm=NONE  ctermfg=64  guifg=#719e07
  hi pandocFootnoteDefLink                                          term=bold  cterm=bold  ctermfg=64  gui=bold  guifg=#719e07
  hi pandocFootnoteInline                                           term=bold,underline  cterm=bold,underline  ctermfg=64  gui=bold,underline  guifg=#719e07
  hi pandocFootnoteLink                                             term=underline  cterm=underline  ctermfg=64  gui=underline  guifg=#719e07
  hi pandocHeading                                                  term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocHeadingMarker                                            term=bold  cterm=bold  ctermfg=136  gui=bold  guifg=#b58900
  hi pandocImageCaption                                             term=bold,underline  cterm=bold,underline  ctermfg=61  gui=bold,underline  guifg=#6c71c4
  hi pandocLinkDefinition                                           term=underline  cterm=underline  ctermfg=37  gui=underline  guifg=#2aa198  guisp=#839496
  hi pandocLinkDefinitionID                                         term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocLinkDelim                                            cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi pandocLinkLabel                                                term=underline  cterm=underline  ctermfg=33  gui=underline  guifg=#268bd2
  hi pandocLinkText                                                 term=bold,underline  cterm=bold,underline  ctermfg=33  gui=bold,underline  guifg=#268bd2
  hi pandocLinkTitle                                                term=underline  cterm=underline  ctermfg=244  gui=underline  guifg=#839496
  hi pandocLinkTitleDelim                                           term=underline  cterm=underline  ctermfg=245  gui=underline  guifg=#93a1a1  guisp=#839496
  hi pandocLinkURL                                                  term=underline  cterm=underline  ctermfg=244  gui=underline  guifg=#839496
  hi pandocListMarker                                           cterm=NONE  ctermfg=125  guifg=#d33682
  hi pandocListReference                                            term=underline  cterm=underline  ctermfg=125  gui=underline  guifg=#d33682
  hi pandocMetadata                                                 term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocMetadataDelim                                        cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi pandocMetadataKey                                          cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocNonBreakingSpace                                         term=reverse  cterm=reverse  ctermfg=124  gui=reverse  guifg=#dc322f
  hi pandocRule                                                     term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocRuleLine                                                 term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocStrikeout                                                term=reverse  cterm=reverse  ctermfg=245  gui=reverse  guifg=#93a1a1
  hi pandocStrikeoutDefinition                                      term=reverse  cterm=reverse  ctermfg=61  gui=reverse  guifg=#6c71c4
  hi pandocStrikeoutHeading                                         term=reverse  cterm=reverse  ctermfg=166  gui=reverse  guifg=#cb4b16
  hi pandocStrikeoutTable                                           term=reverse  cterm=reverse  ctermfg=33  gui=reverse  guifg=#268bd2
  hi pandocStrongEmphasis                                           term=bold  cterm=bold  ctermfg=240  gui=bold  guifg=#657b83
  hi pandocStrongEmphasisDefinition                                 term=bold  cterm=bold  ctermfg=61  gui=bold  guifg=#6c71c4
  hi pandocStrongEmphasisEmphasis                                   term=bold  cterm=bold  ctermfg=240  gui=bold  guifg=#657b83
  hi pandocStrongEmphasisEmphasisDefinition                         term=bold  cterm=bold  ctermfg=61  gui=bold  guifg=#6c71c4
  hi pandocStrongEmphasisEmphasisHeading                            term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocStrongEmphasisEmphasisTable                              term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocStrongEmphasisHeading                                    term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocStrongEmphasisNested                                     term=bold  cterm=bold  ctermfg=240  gui=bold  guifg=#657b83
  hi pandocStrongEmphasisNestedDefinition                           term=bold  cterm=bold  ctermfg=61  gui=bold  guifg=#6c71c4
  hi pandocStrongEmphasisNestedHeading                              term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocStrongEmphasisNestedTable                                term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocStrongEmphasisTable                                      term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocStyleDelim                                           cterm=NONE  ctermfg=245  guifg=#93a1a1
  hi pandocSubscript                                            cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocSubscriptDefinition                                  cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocSubscriptHeading                                         term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocSubscriptTable                                       cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocSuperscript                                          cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocSuperscriptDefinition                                cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocSuperscriptHeading                                       term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocSuperscriptTable                                     cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocTable                                                cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocTableStructure                                       cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocTableZebraDark                                       cterm=NONE  ctermfg=33  ctermbg=187  guifg=#268bd2  guibg=#eee8d5
  hi pandocTableZebraLight                                      cterm=NONE  ctermfg=33  ctermbg=230  guifg=#268bd2  guibg=#fdf6e3
  hi pandocTitleBlock                                           cterm=NONE  ctermfg=33  guifg=#268bd2
  hi pandocTitleBlockTitle                                          term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocTitleComment                                             term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi pandocVerbatimBlock                                        cterm=NONE  ctermfg=136  guifg=#b58900
  hi pandocVerbatimInline                                       cterm=NONE  ctermfg=136  guifg=#b58900
  hi pandocVerbatimInlineDefinition                             cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi pandocVerbatimInlineHeading                                    term=bold  cterm=bold  ctermfg=166  gui=bold  guifg=#cb4b16
  hi pandocVerbatimInlineTable                                  cterm=NONE  ctermfg=33  guifg=#268bd2
  hi perlHereDoc                                                cterm=NONE  ctermfg=239  ctermbg=230  guifg=#586e75  guibg=#fdf6e3
  hi perlStatementFileDesc                                      cterm=NONE  ctermfg=37  ctermbg=230  guifg=#2aa198  guibg=#fdf6e3
  hi perlVarPlain                                               cterm=NONE  ctermfg=136  ctermbg=230  guifg=#b58900  guibg=#fdf6e3
  hi rubyDefine                                                     term=bold  cterm=bold  ctermfg=239  ctermbg=230  gui=bold  guifg=#586e75  guibg=#fdf6e3
  hi texMathMatcher                                             cterm=NONE  ctermfg=136  ctermbg=230  guifg=#b58900  guibg=#fdf6e3
  hi texMathZoneX                                               cterm=NONE  ctermfg=136  ctermbg=230  guifg=#b58900  guibg=#fdf6e3
  hi texRefLabel                                                cterm=NONE  ctermfg=136  ctermbg=230  guifg=#b58900  guibg=#fdf6e3
  hi texStatement                                               cterm=NONE  ctermfg=37  ctermbg=230  guifg=#2aa198  guibg=#fdf6e3
  hi vimCmdSep                                                      term=bold  cterm=bold  ctermfg=33  gui=bold  guifg=#268bd2
  hi vimCommand                                                 cterm=NONE  ctermfg=136  guifg=#b58900
  hi vimCommentString                                           cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi vimGroup                                                       term=bold,underline  cterm=bold,underline  ctermfg=33  gui=bold,underline  guifg=#268bd2
  hi vimHiGroup                                                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi vimHiLink                                                  cterm=NONE  ctermfg=33  guifg=#268bd2
  hi vimIsCommand                                               cterm=NONE  ctermfg=244  guifg=#839496
  hi vimSynMtchOpt                                              cterm=NONE  ctermfg=136  guifg=#b58900
  hi vimSynType                                                 cterm=NONE  ctermfg=37  guifg=#2aa198

else
  " 16 color terminals
  " ugly without a solarized terminal palette
  hi Normal                                                         cterm=NONE  ctermfg=11  ctermbg=15

  set background=light

  hi ColorColumn                                                    cterm=NONE  ctermbg=7
  hi Comment                                                        cterm=NONE  ctermfg=14
  hi ConId                                                          cterm=NONE  ctermfg=3
  hi Conceal                                                        cterm=NONE  ctermfg=4
  hi Constant                                                       cterm=NONE  ctermfg=6
  hi Cursor                                                         cterm=NONE  ctermfg=15  ctermbg=11
  hi CursorColumn                                                   cterm=NONE  ctermbg=7
  hi CursorLine                                                     cterm=NONE  ctermbg=7
  hi CursorLineNr                                                   term=bold  ctermfg=130
  hi DiffAdd                                                        cterm=NONE  ctermfg=2  ctermbg=7
  hi DiffChange                                                     cterm=NONE  ctermfg=3  ctermbg=7
  hi DiffDelete                                                     cterm=NONE  ctermfg=1  ctermbg=7
  hi DiffText                                                       cterm=NONE  ctermfg=4  ctermbg=7
  hi Directory                                                      cterm=NONE  ctermfg=4
  hi Error                                                          term=bold  cterm=bold  ctermfg=1
  hi ErrorMsg                                                       term=reverse  cterm=reverse  ctermfg=1
  hi FoldColumn                                                     cterm=NONE  ctermfg=11  ctermbg=7
  hi Folded                                                         term=bold,underline  cterm=bold,underline  ctermfg=11  ctermbg=7
  hi HelpExample                                                    cterm=NONE  ctermfg=10
  hi Identifier                                                     cterm=NONE  ctermfg=4
  hi IncSearch                                                      term=standout  cterm=standout  ctermfg=9
  hi LineNr                                                         cterm=NONE  ctermfg=14  ctermbg=7
  hi MatchParen                                                     term=bold  cterm=bold  ctermfg=1  ctermbg=14
  hi ModeMsg                                                        cterm=NONE  ctermfg=4
  hi MoreMsg                                                        cterm=NONE  ctermfg=4
  hi NonText                                                        term=bold  cterm=bold  ctermfg=12
  hi Pmenu                                                          term=reverse  cterm=reverse  ctermfg=11  ctermbg=7
  hi PmenuSbar                                                      term=reverse  cterm=reverse  ctermfg=0  ctermbg=11
  hi PmenuSel                                                       term=reverse  cterm=reverse  ctermfg=14  ctermbg=0
  hi PmenuThumb                                                     term=reverse  cterm=reverse  ctermfg=11  ctermbg=15
  hi PreProc                                                        cterm=NONE  ctermfg=9
  hi Question                                                       term=bold  cterm=bold  ctermfg=6
  hi Search                                                         term=reverse  cterm=reverse  ctermfg=3
  hi SignColumn                                                     cterm=NONE  ctermfg=11  ctermbg=248
  hi Special                                                        cterm=NONE  ctermfg=1
  hi SpecialKey                                                     term=bold  cterm=bold  ctermfg=12  ctermbg=7
  hi SpellBad                                                       term=undercurl  cterm=undercurl
  hi SpellCap                                                       term=undercurl  cterm=undercurl
  hi SpellLocal                                                     term=undercurl  cterm=undercurl
  hi SpellRare                                                      term=undercurl  cterm=undercurl
  hi Statement                                                      cterm=NONE  ctermfg=2
  hi StatusLine                                                     term=reverse  cterm=reverse  ctermfg=10  ctermbg=7
  hi StatusLineNC                                                   term=reverse  cterm=reverse  ctermfg=12  ctermbg=7
  hi TabLine                                                        term=underline  cterm=underline  ctermfg=11  ctermbg=7
  hi TabLineFill                                                    term=underline  cterm=underline  ctermfg=11  ctermbg=7
  hi TabLineSel                                                     term=underline,reverse  cterm=underline,reverse  ctermfg=14  ctermbg=0
  hi Title                                                          term=bold  cterm=bold  ctermfg=9
  hi Todo                                                           term=bold  cterm=bold  ctermfg=5
  hi Type                                                           cterm=NONE  ctermfg=3
  hi Underlined                                                     cterm=NONE  ctermfg=13
  hi VarId                                                          cterm=NONE  ctermfg=4
  hi VertSplit                                                      cterm=NONE  ctermfg=12  ctermbg=12
  hi Visual                                                         term=reverse  cterm=reverse  ctermfg=14  ctermbg=15
  hi VisualNOS                                                      term=reverse  cterm=reverse  ctermbg=7
  hi WarningMsg                                                     term=bold  cterm=bold  ctermfg=1
  hi WildMenu                                                       term=reverse  cterm=reverse  ctermfg=0  ctermbg=7
  hi cPreCondit                                                     cterm=NONE  ctermfg=9
  hi gitcommitBranch                                                term=bold  cterm=bold  ctermfg=5
  hi gitcommitComment                                               cterm=NONE  ctermfg=14
  hi gitcommitDiscardedFile                                         term=bold  cterm=bold  ctermfg=1
  hi gitcommitDiscardedType                                         cterm=NONE  ctermfg=1
  hi gitcommitFile                                                  term=bold  cterm=bold  ctermfg=11
  hi gitcommitHeader                                                cterm=NONE  ctermfg=14
  hi gitcommitOnBranch                                              term=bold  cterm=bold  ctermfg=14
  hi gitcommitSelectedFile                                          term=bold  cterm=bold  ctermfg=2
  hi gitcommitSelectedType                                          cterm=NONE  ctermfg=2
  hi gitcommitUnmerged                                              term=bold  cterm=bold  ctermfg=2
  hi gitcommitUnmergedFile                                          term=bold  cterm=bold  ctermfg=3
  hi gitcommitUntrackedFile                                         term=bold  cterm=bold  ctermfg=6
  hi helpHyperTextEntry                                             cterm=NONE  ctermfg=2
  hi helpHyperTextJump                                              term=underline  cterm=underline  ctermfg=4
  hi helpNote                                                       cterm=NONE  ctermfg=5
  hi helpOption                                                     cterm=NONE  ctermfg=6
  hi helpVim                                                        cterm=NONE  ctermfg=5
  hi hsImport                                                       cterm=NONE  ctermfg=5
  hi hsImportLabel                                                  cterm=NONE  ctermfg=6
  hi hsModuleName                                                   term=underline  cterm=underline  ctermfg=2
  hi hsNiceOperator                                                 cterm=NONE  ctermfg=6
  hi hsStatement                                                    cterm=NONE  ctermfg=6
  hi hsString                                                       cterm=NONE  ctermfg=12
  hi hsStructure                                                    cterm=NONE  ctermfg=6
  hi hsType                                                         cterm=NONE  ctermfg=3
  hi hsTypedef                                                      cterm=NONE  ctermfg=6
  hi hsVarSym                                                       cterm=NONE  ctermfg=6
  hi hs_DeclareFunction                                             cterm=NONE  ctermfg=9
  hi hs_OpFunctionName                                              cterm=NONE  ctermfg=3
  hi hs_hlFunctionName                                              cterm=NONE  ctermfg=4
  hi htmlArg                                                        cterm=NONE  ctermfg=12
  hi htmlEndTag                                                     cterm=NONE  ctermfg=14
  hi htmlSpecialTagName                                             cterm=NONE  ctermfg=4
  hi htmlTag                                                        cterm=NONE  ctermfg=14
  hi htmlTagN                                                       term=bold  cterm=bold  ctermfg=10
  hi htmlTagName                                                    term=bold  cterm=bold  ctermfg=4
  hi javaScript                                                     cterm=NONE  ctermfg=3
  hi pandocBlockQuote                                               cterm=NONE  ctermfg=4
  hi pandocBlockQuoteLeader1                                        cterm=NONE  ctermfg=4
  hi pandocBlockQuoteLeader2                                        cterm=NONE  ctermfg=6
  hi pandocBlockQuoteLeader3                                        cterm=NONE  ctermfg=3
  hi pandocBlockQuoteLeader4                                        cterm=NONE  ctermfg=1
  hi pandocBlockQuoteLeader5                                        cterm=NONE  ctermfg=11
  hi pandocBlockQuoteLeader6                                        cterm=NONE  ctermfg=14
  hi pandocCitation                                                 cterm=NONE  ctermfg=5
  hi pandocCitationDelim                                            cterm=NONE  ctermfg=5
  hi pandocCitationID                                               term=underline  cterm=underline  ctermfg=5
  hi pandocCitationRef                                              cterm=NONE  ctermfg=5
  hi pandocComment                                                  cterm=NONE  ctermfg=14
  hi pandocDefinitionBlock                                          cterm=NONE  ctermfg=13
  hi pandocDefinitionIndctr                                         term=bold  cterm=bold  ctermfg=13
  hi pandocDefinitionTerm                                           term=standout  cterm=standout  ctermfg=13
  hi pandocEmphasis                                                 cterm=NONE  ctermfg=11
  hi pandocEmphasisDefinition                                       cterm=NONE  ctermfg=13
  hi pandocEmphasisHeading                                          term=bold  cterm=bold  ctermfg=9
  hi pandocEmphasisNested                                           term=bold  cterm=bold  ctermfg=11
  hi pandocEmphasisNestedDefinition                                 term=bold  cterm=bold  ctermfg=13
  hi pandocEmphasisNestedHeading                                    term=bold  cterm=bold  ctermfg=9
  hi pandocEmphasisNestedTable                                      term=bold  cterm=bold  ctermfg=4
  hi pandocEmphasisTable                                            cterm=NONE  ctermfg=4
  hi pandocEscapePair                                               term=bold  cterm=bold  ctermfg=1
  hi pandocFootnote                                                 cterm=NONE  ctermfg=2
  hi pandocFootnoteDefLink                                          term=bold  cterm=bold  ctermfg=2
  hi pandocFootnoteInline                                           term=bold,underline  cterm=bold,underline  ctermfg=2
  hi pandocFootnoteLink                                             term=underline  cterm=underline  ctermfg=2
  hi pandocHeading                                                  term=bold  cterm=bold  ctermfg=9
  hi pandocHeadingMarker                                            term=bold  cterm=bold  ctermfg=3
  hi pandocImageCaption                                             term=bold,underline  cterm=bold,underline  ctermfg=13
  hi pandocLinkDefinition                                           term=underline  cterm=underline  ctermfg=6
  hi pandocLinkDefinitionID                                         term=bold  cterm=bold  ctermfg=4
  hi pandocLinkDelim                                                cterm=NONE  ctermfg=14
  hi pandocLinkLabel                                                term=underline  cterm=underline  ctermfg=4
  hi pandocLinkText                                                 term=bold,underline  cterm=bold,underline  ctermfg=4
  hi pandocLinkTitle                                                term=underline  cterm=underline  ctermfg=12
  hi pandocLinkTitleDelim                                           term=underline  cterm=underline  ctermfg=14
  hi pandocLinkURL                                                  term=underline  cterm=underline  ctermfg=12
  hi pandocListMarker                                               cterm=NONE  ctermfg=5
  hi pandocListReference                                            term=underline  cterm=underline  ctermfg=5
  hi pandocMetadata                                                 term=bold  cterm=bold  ctermfg=4
  hi pandocMetadataDelim                                            cterm=NONE  ctermfg=14
  hi pandocMetadataKey                                              cterm=NONE  ctermfg=4
  hi pandocNonBreakingSpace                                         term=reverse  cterm=reverse  ctermfg=1
  hi pandocRule                                                     term=bold  cterm=bold  ctermfg=4
  hi pandocRuleLine                                                 term=bold  cterm=bold  ctermfg=4
  hi pandocStrikeout                                                term=reverse  cterm=reverse  ctermfg=14
  hi pandocStrikeoutDefinition                                      term=reverse  cterm=reverse  ctermfg=13
  hi pandocStrikeoutHeading                                         term=reverse  cterm=reverse  ctermfg=9
  hi pandocStrikeoutTable                                           term=reverse  cterm=reverse  ctermfg=4
  hi pandocStrongEmphasis                                           term=bold  cterm=bold  ctermfg=11
  hi pandocStrongEmphasisDefinition                                 term=bold  cterm=bold  ctermfg=13
  hi pandocStrongEmphasisEmphasis                                   term=bold  cterm=bold  ctermfg=11
  hi pandocStrongEmphasisEmphasisDefinition                         term=bold  cterm=bold  ctermfg=13
  hi pandocStrongEmphasisEmphasisHeading                            term=bold  cterm=bold  ctermfg=9
  hi pandocStrongEmphasisEmphasisTable                              term=bold  cterm=bold  ctermfg=4
  hi pandocStrongEmphasisHeading                                    term=bold  cterm=bold  ctermfg=9
  hi pandocStrongEmphasisNested                                     term=bold  cterm=bold  ctermfg=11
  hi pandocStrongEmphasisNestedDefinition                           term=bold  cterm=bold  ctermfg=13
  hi pandocStrongEmphasisNestedHeading                              term=bold  cterm=bold  ctermfg=9
  hi pandocStrongEmphasisNestedTable                                term=bold  cterm=bold  ctermfg=4
  hi pandocStrongEmphasisTable                                      term=bold  cterm=bold  ctermfg=4
  hi pandocStyleDelim                                               cterm=NONE  ctermfg=14
  hi pandocSubscript                                                cterm=NONE  ctermfg=13
  hi pandocSubscriptDefinition                                      cterm=NONE  ctermfg=13
  hi pandocSubscriptHeading                                         term=bold  cterm=bold  ctermfg=9
  hi pandocSubscriptTable                                           cterm=NONE  ctermfg=4
  hi pandocSuperscript                                              cterm=NONE  ctermfg=13
  hi pandocSuperscriptDefinition                                    cterm=NONE  ctermfg=13
  hi pandocSuperscriptHeading                                       term=bold  cterm=bold  ctermfg=9
  hi pandocSuperscriptTable                                         cterm=NONE  ctermfg=4
  hi pandocTable                                                    cterm=NONE  ctermfg=4
  hi pandocTableStructure                                           cterm=NONE  ctermfg=4
  hi pandocTableZebraDark                                           cterm=NONE  ctermfg=4  ctermbg=7
  hi pandocTableZebraLight                                          cterm=NONE  ctermfg=4  ctermbg=15
  hi pandocTitleBlock                                               cterm=NONE  ctermfg=4
  hi pandocTitleBlockTitle                                          term=bold  cterm=bold  ctermfg=4
  hi pandocTitleComment                                             term=bold  cterm=bold  ctermfg=4
  hi pandocVerbatimBlock                                            cterm=NONE  ctermfg=3
  hi pandocVerbatimInline                                           cterm=NONE  ctermfg=3
  hi pandocVerbatimInlineDefinition                                 cterm=NONE  ctermfg=13
  hi pandocVerbatimInlineHeading                                    term=bold  cterm=bold  ctermfg=9
  hi pandocVerbatimInlineTable                                      cterm=NONE  ctermfg=4
  hi perlHereDoc                                                    cterm=NONE  ctermfg=10  ctermbg=15
  hi perlStatementFileDesc                                          cterm=NONE  ctermfg=6  ctermbg=15
  hi perlVarPlain                                                   cterm=NONE  ctermfg=3  ctermbg=15
  hi rubyDefine                                                     term=bold  cterm=bold  ctermfg=10  ctermbg=15
  hi texMathMatcher                                                 cterm=NONE  ctermfg=3  ctermbg=15
  hi texMathZoneX                                                   cterm=NONE  ctermfg=3  ctermbg=15
  hi texRefLabel                                                    cterm=NONE  ctermfg=3  ctermbg=15
  hi texStatement                                                   cterm=NONE  ctermfg=6  ctermbg=15
  hi vimCmdSep                                                      term=bold  cterm=bold  ctermfg=4
  hi vimCommand                                                     cterm=NONE  ctermfg=3
  hi vimCommentString                                               cterm=NONE  ctermfg=13
  hi vimGroup                                                       term=bold,underline  cterm=bold,underline  ctermfg=4
  hi vimHiGroup                                                     cterm=NONE  ctermfg=4
  hi vimHiLink                                                      cterm=NONE  ctermfg=4
  hi vimIsCommand                                                   cterm=NONE  ctermfg=12
  hi vimSynMtchOpt                                                  cterm=NONE  ctermfg=3
  hi vimSynType                                                     cterm=NONE  ctermfg=6

endif

hi link Boolean                    Constant
hi link Character                  Constant
hi link Conditional                Statement
hi link Debug                      Special
hi link Define                     PreProc
hi link Delimiter                  Special
hi link Exception                  Statement
hi link Float                      Number
hi link Function                   Identifier
hi link HelpCommand                Statement
hi link Include                    PreProc
hi link Keyword                    Statement
hi link Label                      Statement
hi link Macro                      PreProc
hi link Number                     Constant
hi link Operator                   Statement
hi link PreCondit                  PreProc
hi link Repeat                     Statement
hi link SpecialChar                Special
hi link SpecialComment             Special
hi link StorageClass               Type
hi link String                     Constant
hi link Structure                  Type
hi link SyntasticError             SpellBad
hi link SyntasticErrorSign         Error
hi link SyntasticStyleErrorLine    SyntasticErrorLine
hi link SyntasticStyleErrorSign    SyntasticErrorSign
hi link SyntasticStyleWarningLine  SyntasticWarningLine
hi link SyntasticStyleWarningSign  SyntasticWarningSign
hi link SyntasticWarning           SpellCap
hi link SyntasticWarningSign       Todo
hi link Tag                        Special
hi link Typedef                    Type

hi link diffAdded                  Statement
hi link diffBDiffer                WarningMsg
hi link diffCommon                 WarningMsg
hi link diffDiffer                 WarningMsg
hi link diffIdentical              WarningMsg
hi link diffIsA                    WarningMsg
hi link diffLine                   Identifier
hi link diffNoEOL                  WarningMsg
hi link diffOnly                   WarningMsg
hi link diffRemoved                WarningMsg

hi link gitcommitDiscarded         gitcommitComment
hi link gitcommitDiscardedArrow    gitcommitDiscardedFile
hi link gitcommitNoBranch          gitcommitBranch
hi link gitcommitSelected          gitcommitComment
hi link gitcommitSelectedArrow     gitcommitSelectedFile
hi link gitcommitUnmergedArrow     gitcommitUnmergedFile
hi link gitcommitUntracked         gitcommitComment

hi link helpSpecial                Special

hi link hsDelimTypeExport          Delimiter
hi link hsImportParams             Delimiter
hi link hsModuleStartLabel         hsStructure
hi link hsModuleWhereLabel         hsModuleStartLabel
hi link htmlLink                   Function

hi link lCursor                    Cursor

hi link pandocCodeBlock            pandocVerbatimBlock
hi link pandocCodeBlockDelim       pandocVerbatimBlock
hi link pandocEscapedCharacter     pandocEscapePair
hi link pandocLineBreak            pandocEscapePair
hi link pandocMetadataTitle        pandocMetadata
hi link pandocTableStructureEnd    pandocTableStructre
hi link pandocTableStructureTop    pandocTableStructre
hi link pandocVerbatimBlockDeep    pandocVerbatimBlock

hi link vimFunc                    Function
hi link vimSet                     Normal
hi link vimSetEqual                Normal
hi link vimUserFunc                Function
hi link vipmVar                    Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre
