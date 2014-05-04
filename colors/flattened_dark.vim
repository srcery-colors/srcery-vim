" 'flattened_dark.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" A no-bullshit dark Solarized.

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'flattened_dark'

if &t_Co >= 256 || has('gui_running')
  hi  Normal                                  cterm=NONE  ctermfg=244  ctermbg=234  guifg=#839496  guibg=#002b36

  set background=dark

  hi  ColorColumn                             cterm=NONE  ctermbg=235  guibg=#073642
  hi  Comment                                 cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  ConId                                   cterm=NONE  ctermfg=136  guifg=#b58900
  hi  Conceal                                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  Constant                                cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  Cursor                                  cterm=NONE  ctermfg=234  ctermbg=244  guifg=#002b36  guibg=#839496
  hi  CursorColumn                            cterm=NONE  ctermbg=235  guibg=#073642
  hi  CursorLine                              cterm=NONE  ctermbg=235  guibg=#073642  guisp=#93a1a1
  hi  CursorLineNr                            term=bold  cterm=bold ctermfg=11  guifg=Yellow   gui=bold
  hi  DiffAdd                                 cterm=NONE  ctermfg=64  ctermbg=235  guifg=#719e07  guibg=#073642  guisp=#719e07  gui=bold
  hi  DiffChange                              cterm=NONE  ctermfg=136  ctermbg=235  guifg=#b58900  guibg=#073642  guisp=#b58900  gui=bold
  hi  DiffDelete                              cterm=NONE  ctermfg=124  ctermbg=235  guifg=#dc322f  guibg=#073642  gui=bold
  hi  DiffText                                cterm=NONE  ctermfg=33  ctermbg=235  guifg=#268bd2  guibg=#073642  guisp=#268bd2  gui=bold
  hi  Directory                               cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  Error                                   term=bold  cterm=bold  ctermfg=124  guifg=#dc322f  gui=bold
  hi  ErrorMsg                                term=reverse  cterm=reverse  ctermfg=124  guifg=#dc322f  gui=reverse
  hi  FoldColumn                              cterm=NONE ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642
  hi  Folded                                  term=bold,underline  cterm=bold,underline  ctermfg=244  ctermbg=235 guifg=#839496  guibg=#073642  guisp=#002b36  gui=bold,underline
  hi  HelpExample                             cterm=NONE ctermfg=245  guifg=#93a1a1
  hi  Identifier                              cterm=NONE ctermfg=33  guifg=#268bd2
  hi  IncSearch                               term=standout  cterm=standout  ctermfg=166  guifg=#cb4b16  gui=standout
  hi  LineNr                                  cterm=NONE ctermfg=239  ctermbg=235  guifg=#586e75  guibg=#073642
  hi  MatchParen                              term=bold  cterm=bold  ctermfg=124  ctermbg=239  guifg=#dc322f  guibg=#586e75  gui=bold
  hi  ModeMsg                                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  MoreMsg                                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  NonText                                 term=bold  cterm=bold  ctermfg=240  guifg=#657b83  gui=bold
  hi  Pmenu                                   term=reverse  cterm=reverse  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  gui=reverse
  hi  PmenuSbar                               term=reverse  cterm=reverse  ctermfg=187  ctermbg=244  guifg=#eee8d5  guibg=#839496  gui=reverse
  hi  PmenuSel                                term=reverse  cterm=reverse  ctermfg=239  ctermbg=187  guifg=#586e75  guibg=#eee8d5  gui=reverse
  hi  PmenuThumb                              term=reverse  cterm=reverse  ctermfg=244  ctermbg=234  guifg=#839496  guibg=#002b36  gui=reverse
  hi  PreProc                                 cterm=NONE  ctermfg=166 guifg=#cb4b16
  hi  Question                                term=bold  cterm=bold  ctermfg=37  guifg=#2aa198  gui=bold
  hi  Search                                  term=reverse  cterm=reverse  ctermfg=136  guifg=#b58900  gui=reverse
  hi  SignColumn                              cterm=NONE  ctermfg=244  ctermbg=242  guifg=#839496  guibg=Grey
  hi  Special                                 cterm=NONE  ctermfg=124  guifg=#dc322f
  hi  SpecialKey                              term=bold  cterm=bold  ctermfg=240  ctermbg=235  guifg=#657b83  guibg=#073642  gui=bold
  hi  SpellBad                                term=undercurl  cterm=undercurl  guisp=#dc322f  gui=undercurl
  hi  SpellCap                                term=undercurl  cterm=undercurl  guisp=#6c71c4  gui=undercurl
  hi  SpellLocal                              term=undercurl  cterm=undercurl  guisp=#b58900  gui=undercurl
  hi  SpellRare                               term=undercurl  cterm=undercurl  guisp=#2aa198  gui=undercurl
  hi  Statement                               cterm=NONE  ctermfg=64  guifg=#719e07
  hi  StatusLine                              term=reverse  cterm=reverse  ctermfg=245  ctermbg=235  guifg=#93a1a1  guibg=#073642  gui=reverse
  hi  StatusLineNC                            term=reverse  cterm=reverse  ctermfg=240  ctermbg=235  guifg=#657b83  guibg=#073642  gui=reverse
  hi  TabLine                                 term=underline  cterm=underline  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
  hi  TabLineFill                             term=underline  cterm=underline  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
  hi  TabLineSel                              term=underline,reverse  cterm=underline,reverse  ctermfg=239  ctermbg=187  guifg=#586e75  guibg=#eee8d5  guisp=#839496  gui=underline,reverse
  hi  Title                                   term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  Todo                                    term=bold  cterm=bold  ctermfg=125  guifg=#d33682  gui=bold
  hi  Type                                    cterm=NONE  ctermfg=136  guifg=#b58900
  hi  Underlined                              cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  VarId                                   cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  VertSplit                               cterm=NONE  ctermfg=240  ctermbg=240  guifg=#657b83  guibg=#657b83
  hi  Visual                                  term=reverse  cterm=reverse  ctermfg=239  ctermbg=234 guifg=#586e75  guibg=#002b36  gui=reverse
  hi  VisualNOS                               term=reverse  cterm=reverse  ctermbg=235  guibg=#073642  gui=reverse
  hi  WarningMsg                              term=bold  cterm=bold  ctermfg=124  guifg=#dc322f  gui=bold
  hi  WildMenu                                term=reverse  cterm=reverse  ctermfg=187  ctermbg=235 guifg=#eee8d5  guibg=#073642 gui=reverse

  hi  cPreCondit                              cterm=NONE  ctermfg=166  guifg=#cb4b16

  hi  gitcommitBranch                         term=bold  cterm=bold  ctermfg=125  guifg=#d33682  gui=bold
  hi  gitcommitComment                        cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  gitcommitDiscardedFile                  term=bold  cterm=bold  ctermfg=124  guifg=#dc322f  gui=bold
  hi  gitcommitDiscardedType                  cterm=NONE  ctermfg=124  guifg=#dc322f
  hi  gitcommitFile                           term=bold  cterm=bold  ctermfg=244  guifg=#839496  gui=bold
  hi  gitcommitHeader                         cterm=NONE  ctermfg=239  guifg=#586e75
  hi  gitcommitOnBranch                       term=bold  cterm=bold  ctermfg=239  guifg=#586e75  gui=bold
  hi  gitcommitSelectedFile                   term=bold  cterm=bold  ctermfg=64  guifg=#719e07  gui=bold
  hi  gitcommitSelectedType                   cterm=NONE  ctermfg=64  guifg=#719e07
  hi  gitcommitUnmerged                       term=bold  cterm=bold  ctermfg=64  guifg=#719e07  gui=bold
  hi  gitcommitUnmergedFile                   term=bold  cterm=bold  ctermfg=136  guifg=#b58900  gui=bold
  hi  gitcommitUntrackedFile                  term=bold  cterm=bold  ctermfg=37  guifg=#2aa198  gui=bold

  hi  helpHyperTextEntry                      cterm=NONE  ctermfg=64  guifg=#719e07
  hi  helpHyperTextJump                       term=underline  cterm=underline  ctermfg=33   guifg=#268bd2  gui=underline
  hi  helpNote                                cterm=NONE  ctermfg=125  guifg=#d33682
  hi  helpOption                              cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  helpVim                                 cterm=NONE  ctermfg=125  guifg=#d33682

  hi  hsImport                                cterm=NONE  ctermfg=125  guifg=#d33682
  hi  hsImportLabel                           cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hsModuleName                            term=underline  cterm=underline  ctermfg=64  guifg=#719e07  gui=underline
  hi  hsNiceOperator                          cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hsStatement                             cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hsString                                cterm=NONE  ctermfg=240  guifg=#657b83
  hi  hsStructure                             cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hsType                                  cterm=NONE  ctermfg=136  guifg=#b58900
  hi  hsTypedef                               cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hsVarSym                                cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  hs_DeclareFunction                      cterm=NONE  ctermfg=166  guifg=#cb4b16
  hi  hs_OpFunctionName                       cterm=NONE  ctermfg=136  guifg=#b58900
  hi  hs_hlFunctionName                       cterm=NONE  ctermfg=33  guifg=#268bd2

  hi  htmlArg                                 cterm=NONE  ctermfg=240  guifg=#657b83
  hi  htmlEndTag                              cterm=NONE  ctermfg=239  guifg=#586e75
  hi  htmlSpecialTagName                      cterm=NONE  ctermfg=33  guifg=#268bd2  gui=italic
  hi  htmlTag                                 cterm=NONE  ctermfg=239  guifg=#586e75
  hi  htmlTagN                                term=bold  cterm=bold  ctermfg=245  guifg=#93a1a1  gui=bold
  hi  htmlTagName                             term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold

  hi  javaScript                              cterm=NONE  ctermfg=136  guifg=#b58900

  hi  pandocBlockQuote                        cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocBlockQuoteLeader1                 cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocBlockQuoteLeader2                 cterm=NONE  ctermfg=37  guifg=#2aa198
  hi  pandocBlockQuoteLeader3                 cterm=NONE  ctermfg=136  guifg=#b58900
  hi  pandocBlockQuoteLeader4                 cterm=NONE  ctermfg=124  guifg=#dc322f
  hi  pandocBlockQuoteLeader5                 cterm=NONE  ctermfg=244  guifg=#839496
  hi  pandocBlockQuoteLeader6                 cterm=NONE  ctermfg=239  guifg=#586e75
  hi  pandocCitation                          cterm=NONE  ctermfg=125  guifg=#d33682
  hi  pandocCitationDelim                     cterm=NONE  ctermfg=125  guifg=#d33682
  hi  pandocCitationID                        term=underline  cterm=underline  ctermfg=125  guifg=#d33682  gui=underline
  hi  pandocCitationRef                       cterm=NONE  ctermfg=125  guifg=#d33682
  hi  pandocComment                           cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  pandocDefinitionBlock                   cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocDefinitionIndctr                  term=bold  cterm=bold  ctermfg=61  guifg=#6c71c4  gui=bold
  hi  pandocDefinitionTerm                    term=standout  cterm=standout  ctermfg=61  guifg=#6c71c4  gui=standout
  hi  pandocEmphasis                          cterm=NONE  ctermfg=244  guifg=#839496  gui=italic
  hi  pandocEmphasisDefinition                cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=italic
  hi  pandocEmphasisHeading                   term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocEmphasisNested                    term=bold  cterm=bold  ctermfg=244  guifg=#839496  gui=bold
  hi  pandocEmphasisNestedDefinition          term=bold  cterm=bold  ctermfg=61  guifg=#6c71c4  gui=bold
  hi  pandocEmphasisNestedHeading             term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocEmphasisNestedTable               term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocEmphasisTable                     cterm=NONE  ctermfg=33  guifg=#268bd2  gui=italic
  hi  pandocEscapePair                        term=bold  cterm=bold  ctermfg=124  guifg=#dc322f  gui=bold
  hi  pandocFootnote                          cterm=NONE  ctermfg=64  guifg=#719e07
  hi  pandocFootnoteDefLink                   term=bold  cterm=bold  ctermfg=64  guifg=#719e07  gui=bold
  hi  pandocFootnoteInline                    term=bold,underline  cterm=bold,underline  ctermfg=64  guifg=#719e07  gui=bold,underline
  hi  pandocFootnoteLink                      term=underline  cterm=underline  ctermfg=64  guifg=#719e07  gui=underline
  hi  pandocHeading                           term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocHeadingMarker                     term=bold  cterm=bold  ctermfg=136  guifg=#b58900  gui=bold
  hi  pandocImageCaption                      term=bold,underline  cterm=bold,underline  ctermfg=61  guifg=#6c71c4  gui=bold,underline
  hi  pandocLinkDefinition                    term=underline  cterm=underline  ctermfg=37  guifg=#2aa198  guisp=#657b83  gui=underline
  hi  pandocLinkDefinitionID                  term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocLinkDelim                         cterm=NONE  ctermfg=239  guifg=#586e75
  hi  pandocLinkLabel                         term=underline  cterm=underline  ctermfg=33  guifg=#268bd2  gui=underline
  hi  pandocLinkText                          term=bold,underline cterm=bold,underline  ctermfg=33  guifg=#268bd2  gui=bold,underline
  hi  pandocLinkTitle                         term=underline  cterm=underline  ctermfg=240  guifg=#657b83  gui=underline
  hi  pandocLinkTitleDelim                    term=underline  cterm=underline  ctermfg=239  guifg=#586e75  guisp=#657b83  gui=underline
  hi  pandocLinkURL                           term=underline  cterm=underline  ctermfg=240  guifg=#657b83  gui=underline
  hi  pandocListMarker                        cterm=NONE  ctermfg=125  guifg=#d33682
  hi  pandocListReference                     term=underline  cterm=underline  ctermfg=125  guifg=#d33682  gui=underline
  hi  pandocMetadata                          term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocMetadataDelim                     cterm=NONE  ctermfg=239  guifg=#586e75
  hi  pandocMetadataKey                       cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocNonBreakingSpace                  term=reverse  cterm=reverse  ctermfg=124  guifg=#dc322f  gui=reverse
  hi  pandocRule                              term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocRuleLine                          term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocStrikeout                         term=reverse  cterm=reverse  ctermfg=239  guifg=#586e75  gui=reverse
  hi  pandocStrikeoutDefinition               term=reverse  cterm=reverse  ctermfg=61  guifg=#6c71c4  gui=reverse
  hi  pandocStrikeoutHeading                  term=reverse  cterm=reverse  ctermfg=166  guifg=#cb4b16  gui=reverse
  hi  pandocStrikeoutTable                    term=reverse  cterm=reverse  ctermfg=33  guifg=#268bd2  gui=reverse
  hi  pandocStrongEmphasis                    term=bold  cterm=bold  ctermfg=244  guifg=#839496  gui=bold
  hi  pandocStrongEmphasisDefinition          term=bold  cterm=bold  ctermfg=61  guifg=#6c71c4  gui=bold
  hi  pandocStrongEmphasisEmphasis            term=bold  cterm=bold  ctermfg=244  guifg=#839496  gui=bold
  hi  pandocStrongEmphasisEmphasisDefinition  term=bold  cterm=bold  ctermfg=61  guifg=#6c71c4  gui=bold
  hi  pandocStrongEmphasisEmphasisHeading     term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocStrongEmphasisEmphasisTable       term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocStrongEmphasisHeading             term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocStrongEmphasisNested              term=bold  cterm=bold  ctermfg=244  guifg=#839496  gui=bold
  hi  pandocStrongEmphasisNestedDefinition    term=bold  cterm=bold  ctermfg=61  guifg=#6c71c4  gui=bold
  hi  pandocStrongEmphasisNestedHeading       term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocStrongEmphasisNestedTable         term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocStrongEmphasisTable               term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocStyleDelim                        cterm=NONE  ctermfg=239  guifg=#586e75
  hi  pandocSubscript                         cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocSubscriptDefinition               cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocSubscriptHeading                  term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocSubscriptTable                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocSuperscript                       cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocSuperscriptDefinition             cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocSuperscriptHeading                term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocSuperscriptTable                  cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocTable                             cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocTableStructure                    cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocTableZebraDark                    cterm=NONE  ctermfg=33  ctermbg=235  guifg=#268bd2  guibg=#073642
  hi  pandocTableZebraLight                   cterm=NONE  ctermfg=33  ctermbg=234  guifg=#268bd2  guibg=#002b36
  hi  pandocTitleBlock                        cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  pandocTitleBlockTitle                   term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocTitleComment                      term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  pandocVerbatimBlock                     cterm=NONE  ctermfg=136  guifg=#b58900
  hi  pandocVerbatimInline                    cterm=NONE  ctermfg=136  guifg=#b58900
  hi  pandocVerbatimInlineDefinition          cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  pandocVerbatimInlineHeading             term=bold  cterm=bold  ctermfg=166  guifg=#cb4b16  gui=bold
  hi  pandocVerbatimInlineTable               cterm=NONE  ctermfg=33  guifg=#268bd2

  hi  perlHereDoc                             cterm=NONE  ctermfg=245  ctermbg=234  guifg=#93a1a1  guibg=#002b36
  hi  perlStatementFileDesc                   cterm=NONE  ctermfg=37  ctermbg=234  guifg=#2aa198  guibg=#002b36
  hi  perlVarPlain                            cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36

  hi  rubyDefine                              term=bold  cterm=bold  ctermfg=245  ctermbg=234  guifg=#93a1a1  guibg=#002b36  gui=bold

  hi  texMathMatcher                          cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36
  hi  texMathZoneX                            cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36
  hi  texRefLabel                             cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36
  hi  texStatement                            cterm=NONE  ctermfg=37  ctermbg=234  guifg=#2aa198  guibg=#002b36

  hi  vimCmdSep                               term=bold  cterm=bold  ctermfg=33  guifg=#268bd2  gui=bold
  hi  vimCommand                              cterm=NONE  ctermfg=136  guifg=#b58900
  hi  vimCommentString                        cterm=NONE  ctermfg=61  guifg=#6c71c4
  hi  vimGroup                                term=bold,underline  cterm=bold,underline  ctermfg=33  guifg=#268bd2  gui=bold,underline
  hi  vimHiGroup                              cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  vimHiLink                               cterm=NONE  ctermfg=33  guifg=#268bd2
  hi  vimIsCommand                            cterm=NONE  ctermfg=240  guifg=#657b83
  hi  vimSynMtchOpt                           cterm=NONE  ctermfg=136  guifg=#b58900
  hi  vimSynType                              cterm=NONE  ctermfg=37  guifg=#2aa198

else
  " 16 color terminals
  " ugly without a solarized terminal palette
  hi  Normal                                  ctermfg=12  ctermbg=8

  set background=dark

  hi  ColorColumn                             ctermbg=0
  hi  Comment                                 ctermfg=10
  hi  ConId                                   ctermfg=3
  hi  Conceal                                 ctermfg=4
  hi  Constant                                ctermfg=6
  hi  Cursor                                  ctermfg=8  ctermbg=12
  hi  CursorColumn                            ctermbg=0
  hi  CursorLine                              cterm=NONE  ctermbg=0
  hi  CursorLineNr                            term=bold  ctermfg=11
  hi  DiffAdd                                 ctermfg=2  ctermbg=0
  hi  DiffChange                              ctermfg=3  ctermbg=0
  hi  DiffDelete                              ctermfg=1  ctermbg=0
  hi  DiffText                                ctermfg=4  ctermbg=0
  hi  Directory                               ctermfg=4
  hi  Error                                   term=bold  cterm=bold  ctermfg=1
  hi  ErrorMsg                                term=reverse  cterm=reverse  ctermfg=1
  hi  FoldColumn                              ctermfg=12  ctermbg=0
  hi  Folded                                  term=bold,underline  cterm=bold,underline  ctermfg=12  ctermbg=0
  hi  HelpExample                             ctermfg=14
  hi  Identifier                              ctermfg=4
  hi  IncSearch                               term=standout  cterm=standout  ctermfg=9
  hi  LineNr                                  ctermfg=10  ctermbg=0
  hi  MatchParen                              term=bold  cterm=bold  ctermfg=1  ctermbg=10
  hi  ModeMsg                                 ctermfg=4
  hi  MoreMsg                                 ctermfg=4
  hi  NonText                                 term=bold  cterm=bold  ctermfg=11
  hi  Pmenu                                   term=reverse  cterm=reverse  ctermfg=12  ctermbg=0
  hi  PmenuSbar                               term=reverse  cterm=reverse  ctermfg=7  ctermbg=12
  hi  PmenuSel                                term=reverse  cterm=reverse  ctermfg=10  ctermbg=7
  hi  PmenuThumb                              term=reverse  cterm=reverse  ctermfg=12  ctermbg=8
  hi  PreProc                                 cterm=bold  ctermfg=1
  hi  Question                                term=bold  cterm=bold  ctermfg=6
  hi  Search                                  term=reverse  cterm=reverse  ctermfg=3
  hi  SignColumn                              ctermfg=12  ctermbg=242
  hi  Special                                 ctermfg=1
  hi  SpecialKey                              term=bold  cterm=bold  ctermfg=11  ctermbg=0
  hi  SpellBad                                term=undercurl  cterm=undercurl
  hi  SpellCap                                term=undercurl  cterm=undercurl
  hi  SpellLocal                              term=undercurl  cterm=undercurl
  hi  SpellRare                               term=undercurl  cterm=undercurl
  hi  Statement                               ctermfg=2
  hi  StatusLine                              term=reverse  cterm=reverse  ctermfg=14  ctermbg=0
  hi  StatusLineNC                            term=reverse  cterm=reverse  ctermfg=11  ctermbg=0
  hi  TabLine                                 term=underline  cterm=underline  ctermfg=12  ctermbg=0
  hi  TabLineFill                             term=underline  cterm=underline  ctermfg=12  ctermbg=0
  hi  TabLineSel                              term=underline,reverse  cterm=underline,reverse  ctermfg=10  ctermbg=7
  hi  Title                                   term=bold  cterm=bold  ctermfg=9
  hi  Todo                                    term=bold  cterm=bold  ctermfg=5
  hi  Type                                    ctermfg=3
  hi  Underlined                              ctermfg=13
  hi  VarId                                   ctermfg=4
  hi  VertSplit                               ctermfg=11  ctermbg=11
  hi  Visual                                  term=reverse  cterm=reverse  ctermfg=10  ctermbg=8
  hi  VisualNOS                               term=reverse  cterm=reverse  ctermbg=0
  hi  WarningMsg                              term=bold  cterm=bold  ctermfg=1
  hi  WildMenu                                term=reverse  cterm=reverse  ctermfg=7  ctermbg=0

  hi  cPreCondit                              ctermfg=9

  hi  gitcommitBranch                         term=bold  cterm=bold  ctermfg=5
  hi  gitcommitComment                        ctermfg=10
  hi  gitcommitDiscardedFile                  term=bold  cterm=bold  ctermfg=1
  hi  gitcommitDiscardedType                  ctermfg=1
  hi  gitcommitFile                           term=bold  cterm=bold  ctermfg=12
  hi  gitcommitHeader                         ctermfg=10
  hi  gitcommitOnBranch                       term=bold  cterm=bold  ctermfg=10
  hi  gitcommitSelectedFile                   term=bold  cterm=bold  ctermfg=2
  hi  gitcommitSelectedType                   ctermfg=2
  hi  gitcommitUnmerged                       term=bold  cterm=bold  ctermfg=2
  hi  gitcommitUnmergedFile                   term=bold  cterm=bold  ctermfg=3
  hi  gitcommitUntrackedFile                  term=bold  cterm=bold  ctermfg=6

  hi  helpHyperTextEntry                      ctermfg=2
  hi  helpHyperTextJump                       term=underline  cterm=underline  ctermfg=4
  hi  helpNote                                ctermfg=5
  hi  helpOption                              ctermfg=6
  hi  helpVim                                 ctermfg=5

  hi  hsImport                                ctermfg=5
  hi  hsImportLabel                           ctermfg=6
  hi  hsModuleName                            term=underline  cterm=underline  ctermfg=2
  hi  hsNiceOperator                          ctermfg=6
  hi  hsStatement                             ctermfg=6
  hi  hsString                                ctermfg=11
  hi  hsStructure                             ctermfg=6
  hi  hsType                                  ctermfg=3
  hi  hsTypedef                               ctermfg=6
  hi  hsVarSym                                ctermfg=6
  hi  hs_DeclareFunction                      ctermfg=9
  hi  hs_OpFunctionName                       ctermfg=3
  hi  hs_hlFunctionName                       ctermfg=4

  hi  htmlArg                                 ctermfg=11
  hi  htmlEndTag                              ctermfg=10
  hi  htmlSpecialTagName                      ctermfg=4
  hi  htmlTag                                 ctermfg=10
  hi  htmlTagN                                term=bold  cterm=bold  ctermfg=14
  hi  htmlTagName                             term=bold  cterm=bold  ctermfg=4

  hi  javaScript                              ctermfg=3

  hi  pandocBlockQuote                        ctermfg=4
  hi  pandocBlockQuoteLeader1                 ctermfg=4
  hi  pandocBlockQuoteLeader2                 ctermfg=6
  hi  pandocBlockQuoteLeader3                 ctermfg=3
  hi  pandocBlockQuoteLeader4                 ctermfg=1
  hi  pandocBlockQuoteLeader5                 ctermfg=12
  hi  pandocBlockQuoteLeader6                 ctermfg=10
  hi  pandocCitation                          ctermfg=5
  hi  pandocCitationDelim                     ctermfg=5
  hi  pandocCitationID                        term=underline  cterm=underline  ctermfg=5
  hi  pandocCitationRef                       ctermfg=5
  hi  pandocComment                           ctermfg=10
  hi  pandocDefinitionBlock                   ctermfg=13
  hi  pandocDefinitionIndctr                  term=bold  cterm=bold  ctermfg=13
  hi  pandocDefinitionTerm                    term=standout  cterm=standout  ctermfg=13
  hi  pandocEmphasis                          ctermfg=12
  hi  pandocEmphasisDefinition                ctermfg=13
  hi  pandocEmphasisHeading                   term=bold  cterm=bold  ctermfg=9
  hi  pandocEmphasisNested                    term=bold  cterm=bold  ctermfg=12
  hi  pandocEmphasisNestedDefinition          term=bold  cterm=bold  ctermfg=13
  hi  pandocEmphasisNestedHeading             term=bold  cterm=bold  ctermfg=9
  hi  pandocEmphasisNestedTable               term=bold  cterm=bold  ctermfg=4
  hi  pandocEmphasisTable                     ctermfg=4
  hi  pandocEscapePair                        term=bold  cterm=bold  ctermfg=1
  hi  pandocFootnote                          ctermfg=2
  hi  pandocFootnoteDefLink                   term=bold  cterm=bold  ctermfg=2
  hi  pandocFootnoteInline                    term=bold,underline  cterm=bold,underline  ctermfg=2
  hi  pandocFootnoteLink                      term=underline  cterm=underline  ctermfg=2
  hi  pandocHeading                           term=bold  cterm=bold  ctermfg=9
  hi  pandocHeadingMarker                     term=bold  cterm=bold  ctermfg=3
  hi  pandocImageCaption                      term=bold,underline  cterm=bold,underline  ctermfg=13
  hi  pandocLinkDefinition                    term=underline  cterm=underline  ctermfg=6
  hi  pandocLinkDefinitionID                  term=bold  cterm=bold  ctermfg=4
  hi  pandocLinkDelim                         ctermfg=10
  hi  pandocLinkLabel                         term=underline  cterm=underline  ctermfg=4
  hi  pandocLinkText                          term=bold,underline  cterm=bold,underline  ctermfg=4
  hi  pandocLinkTitle                         term=underline  cterm=underline  ctermfg=11
  hi  pandocLinkTitleDelim                    term=underline  cterm=underline  ctermfg=10
  hi  pandocLinkURL                           term=underline  cterm=underline  ctermfg=11
  hi  pandocListMarker                        ctermfg=5
  hi  pandocListReference                     term=underline  cterm=underline  ctermfg=5
  hi  pandocMetadata                          term=bold  cterm=bold  ctermfg=4
  hi  pandocMetadataDelim                     ctermfg=10
  hi  pandocMetadataKey                       ctermfg=4
  hi  pandocNonBreakingSpace                  term=reverse  cterm=reverse  ctermfg=1
  hi  pandocRule                              term=bold  cterm=bold  ctermfg=4
  hi  pandocRuleLine                          term=bold  cterm=bold  ctermfg=4
  hi  pandocStrikeout                         term=reverse  cterm=reverse  ctermfg=10
  hi  pandocStrikeoutDefinition               term=reverse  cterm=reverse  ctermfg=13
  hi  pandocStrikeoutHeading                  term=reverse  cterm=reverse  ctermfg=9
  hi  pandocStrikeoutTable                    term=reverse  cterm=reverse  ctermfg=4
  hi  pandocStrongEmphasis                    term=bold  cterm=bold  ctermfg=12
  hi  pandocStrongEmphasisDefinition          term=bold  cterm=bold  ctermfg=13
  hi  pandocStrongEmphasisEmphasis            term=bold  cterm=bold  ctermfg=12
  hi  pandocStrongEmphasisEmphasisDefinition  term=bold  cterm=bold  ctermfg=13
  hi  pandocStrongEmphasisEmphasisHeading     term=bold  cterm=bold  ctermfg=9
  hi  pandocStrongEmphasisEmphasisTable       term=bold  cterm=bold  ctermfg=4
  hi  pandocStrongEmphasisHeading             term=bold  cterm=bold  ctermfg=9
  hi  pandocStrongEmphasisNested              term=bold  cterm=bold  ctermfg=12
  hi  pandocStrongEmphasisNestedDefinition    term=bold  cterm=bold  ctermfg=13
  hi  pandocStrongEmphasisNestedHeading       term=bold  cterm=bold  ctermfg=9
  hi  pandocStrongEmphasisNestedTable         term=bold  cterm=bold  ctermfg=4
  hi  pandocStrongEmphasisTable               term=bold  cterm=bold  ctermfg=4
  hi  pandocStyleDelim                        ctermfg=10
  hi  pandocSubscript                         ctermfg=13
  hi  pandocSubscriptDefinition               ctermfg=13
  hi  pandocSubscriptHeading                  term=bold  cterm=bold  ctermfg=9
  hi  pandocSubscriptTable                    ctermfg=4
  hi  pandocSuperscript                       ctermfg=13
  hi  pandocSuperscriptDefinition             ctermfg=13
  hi  pandocSuperscriptHeading                term=bold  cterm=bold  ctermfg=9
  hi  pandocSuperscriptTable                  ctermfg=4
  hi  pandocTable                             ctermfg=4
  hi  pandocTableStructure                    ctermfg=4
  hi  pandocTableZebraDark                    ctermfg=4  ctermbg=0
  hi  pandocTableZebraLight                   ctermfg=4  ctermbg=8
  hi  pandocTitleBlock                        ctermfg=4
  hi  pandocTitleBlockTitle                   term=bold  cterm=bold  ctermfg=4
  hi  pandocTitleComment                      term=bold  cterm=bold  ctermfg=4
  hi  pandocVerbatimBlock                     ctermfg=3
  hi  pandocVerbatimInline                    ctermfg=3
  hi  pandocVerbatimInlineDefinition          ctermfg=13
  hi  pandocVerbatimInlineHeading             term=bold  cterm=bold  ctermfg=9
  hi  pandocVerbatimInlineTable               ctermfg=4

  hi  perlHereDoc                             ctermfg=14  ctermbg=8
  hi  perlStatementFileDesc                   ctermfg=6  ctermbg=8
  hi  perlVarPlain                            ctermfg=3  ctermbg=8

  hi  rubyDefine                              term=bold  cterm=bold  ctermfg=14  ctermbg=8

  hi  texMathMatcher                          ctermfg=3  ctermbg=8
  hi  texMathZoneX                            ctermfg=3  ctermbg=8
  hi  texRefLabel                             ctermfg=3  ctermbg=8
  hi  texStatement                            ctermfg=6  ctermbg=8

  hi  vimCmdSep                               term=bold  cterm=bold  ctermfg=4
  hi  vimCommand                              ctermfg=3
  hi  vimCommentString                        ctermfg=13
  hi  vimGroup                                term=bold,underline  cterm=bold,underline  ctermfg=4
  hi  vimHiGroup                              ctermfg=4
  hi  vimHiLink                               ctermfg=4
  hi  vimIsCommand                            ctermfg=11
  hi  vimSynMtchOpt                           ctermfg=3
  hi  vimSynType                              ctermfg=6

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
