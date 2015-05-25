" 'flattened_dark.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" A no-bullshit dark Solarized.

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'flattened_dark'

if &t_Co >= 256 || has('gui_running')
  hi  Normal                                  cterm=NONE  ctermfg=244  ctermbg=234  guifg=#839496  guibg=#002b36  gui=NONE

  set background=dark

  hi  ColorColumn                             cterm=NONE  ctermbg=235  guibg=#073642  gui=NONE
  hi  Comment                                 cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  ConId                                   cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  Conceal                                 cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  Constant                                cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  Cursor                                  cterm=NONE  ctermfg=234  ctermbg=244  guifg=#002b36  guibg=#839496  gui=NONE
  hi  CursorColumn                            cterm=NONE  ctermbg=235  guibg=#073642  gui=NONE
  hi  CursorLine                              cterm=NONE  ctermbg=235  guibg=#073642  guisp=#93a1a1  gui=NONE
  hi  CursorLineNr                            term=bold  cterm=NONE ctermfg=11  guifg=Yellow   gui=NONE
  hi  DiffAdd                                 cterm=NONE  ctermfg=64  ctermbg=235  guifg=#719e07  guibg=#073642  guisp=#719e07  gui=NONE
  hi  DiffChange                              cterm=NONE  ctermfg=136  ctermbg=235  guifg=#b58900  guibg=#073642  guisp=#b58900  gui=NONE
  hi  DiffDelete                              cterm=NONE  ctermfg=124  ctermbg=235  guifg=#dc322f  guibg=#073642  gui=NONE
  hi  DiffText                                cterm=NONE  ctermfg=33  ctermbg=235  guifg=#268bd2  guibg=#073642  guisp=#268bd2  gui=NONE
  hi  Directory                               cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  Error                                   term=bold  cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  ErrorMsg                                term=reverse  cterm=reverse  ctermfg=124  ctermbg=NONE guifg=#dc322f  guibg=NONE gui=reverse
  hi  FoldColumn                              cterm=NONE ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  gui=NONE
  hi  Folded                                  term=bold,underline  cterm=NONE,underline  ctermfg=244  ctermbg=235 guifg=#839496  guibg=#073642  guisp=#002b36  gui=NONE,underline
  hi  HelpExample                             cterm=NONE ctermfg=245  guifg=#93a1a1  gui=NONE
  hi  Identifier                              cterm=NONE ctermfg=33  guifg=#268bd2  gui=NONE
  hi  IncSearch                               term=standout  cterm=standout  ctermfg=166  guifg=#cb4b16  gui=standout
  hi  LineNr                                  cterm=NONE ctermfg=239  ctermbg=235  guifg=#586e75  guibg=#073642  gui=NONE
  hi  MatchParen                              term=bold  cterm=NONE  ctermfg=124  ctermbg=239  guifg=#dc322f  guibg=#586e75  gui=NONE
  hi  ModeMsg                                 cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  MoreMsg                                 cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  NonText                                 term=bold  cterm=NONE  ctermfg=240  guifg=#657b83  gui=NONE
  hi  Pmenu                                   term=reverse  cterm=reverse  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  gui=reverse
  hi  PmenuSbar                               term=reverse  cterm=reverse  ctermfg=187  ctermbg=244  guifg=#eee8d5  guibg=#839496  gui=reverse
  hi  PmenuSel                                term=reverse  cterm=reverse  ctermfg=239  ctermbg=187  guifg=#586e75  guibg=#eee8d5  gui=reverse
  hi  PmenuThumb                              term=reverse  cterm=reverse  ctermfg=244  ctermbg=234  guifg=#839496  guibg=#002b36  gui=reverse
  hi  PreProc                                 cterm=NONE  ctermfg=166 guifg=#cb4b16  gui=NONE
  hi  Question                                term=bold  cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  Search                                  term=reverse  cterm=reverse  ctermfg=136 ctermbg=NONE  guifg=#b58900  guibg=NONE  gui=reverse
  hi  SignColumn                              cterm=NONE  ctermfg=244  ctermbg=242  guifg=#839496  guibg=Grey  gui=NONE
  hi  Special                                 cterm=NONE  ctermfg=124  guifg=#dc322f gui=NONE
  hi  SpecialKey                              term=bold  cterm=NONE  ctermfg=240  ctermbg=235  guifg=#657b83  guibg=#073642  gui=NONE
  hi  SpellBad                                term=undercurl  cterm=undercurl  guisp=#dc322f  gui=undercurl
  hi  SpellCap                                term=undercurl  cterm=undercurl  guisp=#6c71c4  gui=undercurl
  hi  SpellLocal                              term=undercurl  cterm=undercurl  guisp=#b58900  gui=undercurl
  hi  SpellRare                               term=undercurl  cterm=undercurl  guisp=#2aa198  gui=undercurl
  hi  Statement                               cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  StatusLine                              term=reverse  cterm=reverse  ctermfg=245  ctermbg=235  guifg=#93a1a1  guibg=#073642  gui=reverse
  hi  StatusLineNC                            term=reverse  cterm=reverse  ctermfg=240  ctermbg=235  guifg=#657b83  guibg=#073642  gui=reverse
  hi  TabLine                                 term=underline  cterm=underline  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
  hi  TabLineFill                             term=underline  cterm=underline  ctermfg=244  ctermbg=235  guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
  hi  TabLineSel                              term=underline,reverse  cterm=underline,reverse  ctermfg=239  ctermbg=187  guifg=#586e75  guibg=#eee8d5  guisp=#839496  gui=underline,reverse
  hi  Title                                   term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  Todo                                    term=bold  cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  Type                                    cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  Underlined                              cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  VarId                                   cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  VertSplit                               cterm=NONE  ctermfg=240  ctermbg=240  guifg=#657b83  guibg=#657b83  gui=NONE
  hi  Visual                                  term=reverse  cterm=reverse  ctermfg=239  ctermbg=234 guifg=#586e75  guibg=#002b36  gui=reverse
  hi  VisualNOS                               term=reverse  cterm=reverse  ctermbg=235  ctermfg=NONE  guibg=#073642  guifg=NONE  gui=reverse
  hi  WarningMsg                              term=bold  cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  WildMenu                                term=reverse  cterm=reverse  ctermfg=187  ctermbg=235 guifg=#eee8d5  guibg=#073642 gui=reverse

  hi  cPreCondit                              cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE

  hi  gitcommitBranch                         term=bold  cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  gitcommitComment                        cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  gitcommitDiscardedFile                  term=bold  cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  gitcommitDiscardedType                  cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  gitcommitFile                           term=bold  cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  gitcommitHeader                         cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  gitcommitOnBranch                       term=bold  cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  gitcommitSelectedFile                   term=bold  cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  gitcommitSelectedType                   cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  gitcommitUnmerged                       term=bold  cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  gitcommitUnmergedFile                   term=bold  cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  gitcommitUntrackedFile                  term=bold  cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE

  hi  helpHyperTextEntry                      cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  helpHyperTextJump                       term=underline  cterm=underline  ctermfg=33   guifg=#268bd2  gui=underline
  hi  helpNote                                cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  helpOption                              cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  helpVim                                 cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE

  hi  hsImport                                cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  hsImportLabel                           cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hsModuleName                            term=underline  cterm=underline  ctermfg=64  guifg=#719e07  gui=underline
  hi  hsNiceOperator                          cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hsStatement                             cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hsString                                cterm=NONE  ctermfg=240  guifg=#657b83  gui=NONE
  hi  hsStructure                             cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hsType                                  cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  hsTypedef                               cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hsVarSym                                cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  hs_DeclareFunction                      cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  hs_OpFunctionName                       cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  hs_hlFunctionName                       cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE

  hi  htmlArg                                 cterm=NONE  ctermfg=240  guifg=#657b83  gui=NONE
  hi  htmlEndTag                              cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  htmlSpecialTagName                      cterm=NONE  ctermfg=33  guifg=#268bd2  gui=italic
  hi  htmlTag                                 cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  htmlTagN                                term=bold  cterm=NONE  ctermfg=245  guifg=#93a1a1  gui=NONE
  hi  htmlTagName                             term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE

  hi  javaScript                              cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE

  hi  pandocBlockQuote                        cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocBlockQuoteLeader1                 cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocBlockQuoteLeader2                 cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE
  hi  pandocBlockQuoteLeader3                 cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  pandocBlockQuoteLeader4                 cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  pandocBlockQuoteLeader5                 cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  pandocBlockQuoteLeader6                 cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  pandocCitation                          cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  pandocCitationDelim                     cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  pandocCitationID                        term=underline  cterm=underline  ctermfg=125  guifg=#d33682  gui=underline
  hi  pandocCitationRef                       cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  pandocComment                           cterm=NONE  ctermfg=239  guifg=#586e75  gui=italic
  hi  pandocDefinitionBlock                   cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocDefinitionIndctr                  term=bold  cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocDefinitionTerm                    term=standout  cterm=standout  ctermfg=61  guifg=#6c71c4  gui=standout
  hi  pandocEmphasis                          cterm=NONE  ctermfg=244  guifg=#839496  gui=italic
  hi  pandocEmphasisDefinition                cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=italic
  hi  pandocEmphasisHeading                   term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocEmphasisNested                    term=bold  cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  pandocEmphasisNestedDefinition          term=bold  cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocEmphasisNestedHeading             term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocEmphasisNestedTable               term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocEmphasisTable                     cterm=NONE  ctermfg=33  guifg=#268bd2  gui=italic
  hi  pandocEscapePair                        term=bold  cterm=NONE  ctermfg=124  guifg=#dc322f  gui=NONE
  hi  pandocFootnote                          cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  pandocFootnoteDefLink                   term=bold  cterm=NONE  ctermfg=64  guifg=#719e07  gui=NONE
  hi  pandocFootnoteInline                    term=bold,underline  cterm=NONE,underline  ctermfg=64  guifg=#719e07  gui=NONE,underline
  hi  pandocFootnoteLink                      term=underline  cterm=underline  ctermfg=64  guifg=#719e07  gui=underline
  hi  pandocHeading                           term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocHeadingMarker                     term=bold  cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  pandocImageCaption                      term=bold,underline  cterm=NONE,underline  ctermfg=61  guifg=#6c71c4  gui=NONE,underline
  hi  pandocLinkDefinition                    term=underline  cterm=underline  ctermfg=37  guifg=#2aa198  guisp=#657b83  gui=underline
  hi  pandocLinkDefinitionID                  term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocLinkDelim                         cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  pandocLinkLabel                         term=underline  cterm=underline  ctermfg=33  guifg=#268bd2  gui=underline
  hi  pandocLinkText                          term=bold,underline cterm=NONE,underline  ctermfg=33  guifg=#268bd2  gui=NONE,underline
  hi  pandocLinkTitle                         term=underline  cterm=underline  ctermfg=240  guifg=#657b83  gui=underline
  hi  pandocLinkTitleDelim                    term=underline  cterm=underline  ctermfg=239  guifg=#586e75  guisp=#657b83  gui=underline
  hi  pandocLinkURL                           term=underline  cterm=underline  ctermfg=240  guifg=#657b83  gui=underline
  hi  pandocListMarker                        cterm=NONE  ctermfg=125  guifg=#d33682  gui=NONE
  hi  pandocListReference                     term=underline  cterm=underline  ctermfg=125  guifg=#d33682  gui=underline
  hi  pandocMetadata                          term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocMetadataDelim                     cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  pandocMetadataKey                       cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocNonBreakingSpace                  term=reverse  cterm=reverse  ctermfg=124  ctermbg=NONE  guifg=#dc322f guibg=NONE  gui=reverse
  hi  pandocRule                              term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocRuleLine                          term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocStrikeout                         term=reverse  cterm=reverse  ctermbg=NONE  ctermfg=239  guibg=NONE  guifg=#586e75  gui=reverse
  hi  pandocStrikeoutDefinition               term=reverse  cterm=reverse  ctermbg=NONE  ctermfg=61  guibg=NONE  guifg=#6c71c4  gui=reverse
  hi  pandocStrikeoutHeading                  term=reverse  cterm=reverse  ctermbg=NONE  ctermfg=166  guibg=NONE  guifg=#cb4b16  gui=reverse
  hi  pandocStrikeoutTable                    term=reverse  cterm=reverse  ctermbg=NONE  ctermfg=33  guibg=NONE  guifg=#268bd2  gui=reverse
  hi  pandocStrongEmphasis                    term=bold  cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  pandocStrongEmphasisDefinition          term=bold  cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocStrongEmphasisEmphasis            term=bold  cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  pandocStrongEmphasisEmphasisDefinition  term=bold  cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocStrongEmphasisEmphasisHeading     term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocStrongEmphasisEmphasisTable       term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocStrongEmphasisHeading             term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocStrongEmphasisNested              term=bold  cterm=NONE  ctermfg=244  guifg=#839496  gui=NONE
  hi  pandocStrongEmphasisNestedDefinition    term=bold  cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocStrongEmphasisNestedHeading       term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocStrongEmphasisNestedTable         term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocStrongEmphasisTable               term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocStyleDelim                        cterm=NONE  ctermfg=239  guifg=#586e75  gui=NONE
  hi  pandocSubscript                         cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocSubscriptDefinition               cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocSubscriptHeading                  term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocSubscriptTable                    cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocSuperscript                       cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocSuperscriptDefinition             cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocSuperscriptHeading                term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocSuperscriptTable                  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocTable                             cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocTableStructure                    cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocTableZebraDark                    cterm=NONE  ctermfg=33  ctermbg=235  guifg=#268bd2  guibg=#073642  gui=NONE
  hi  pandocTableZebraLight                   cterm=NONE  ctermfg=33  ctermbg=234  guifg=#268bd2  guibg=#002b36  gui=NONE
  hi  pandocTitleBlock                        cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocTitleBlockTitle                   term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocTitleComment                      term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  pandocVerbatimBlock                     cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  pandocVerbatimInline                    cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  pandocVerbatimInlineDefinition          cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  pandocVerbatimInlineHeading             term=bold  cterm=NONE  ctermfg=166  guifg=#cb4b16  gui=NONE
  hi  pandocVerbatimInlineTable               cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE

  hi  perlHereDoc                             cterm=NONE  ctermfg=245  ctermbg=234  guifg=#93a1a1  guibg=#002b36  gui=NONE
  hi  perlStatementFileDesc                   cterm=NONE  ctermfg=37  ctermbg=234  guifg=#2aa198  guibg=#002b36  gui=NONE
  hi  perlVarPlain                            cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36  gui=NONE

  hi  rubyDefine                              term=bold  cterm=NONE  ctermfg=245  ctermbg=234  guifg=#93a1a1  guibg=#002b36  gui=NONE

  hi  texMathMatcher                          cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36  gui=NONE
  hi  texMathZoneX                            cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36  gui=NONE
  hi  texRefLabel                             cterm=NONE  ctermfg=136  ctermbg=234  guifg=#b58900  guibg=#002b36  gui=NONE
  hi  texStatement                            cterm=NONE  ctermfg=37  ctermbg=234  guifg=#2aa198  guibg=#002b36  gui=NONE

  hi  vimCmdSep                               term=bold  cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  vimCommand                              cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  vimCommentString                        cterm=NONE  ctermfg=61  guifg=#6c71c4  gui=NONE
  hi  vimGroup                                term=bold,underline  cterm=NONE,underline  ctermfg=33  guifg=#268bd2  gui=NONE,underline
  hi  vimHiGroup                              cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  vimHiLink                               cterm=NONE  ctermfg=33  guifg=#268bd2  gui=NONE
  hi  vimIsCommand                            cterm=NONE  ctermfg=240  guifg=#657b83  gui=NONE
  hi  vimSynMtchOpt                           cterm=NONE  ctermfg=136  guifg=#b58900  gui=NONE
  hi  vimSynType                              cterm=NONE  ctermfg=37  guifg=#2aa198  gui=NONE

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
  hi  Error                                   term=bold  cterm=NONE  ctermfg=1  ctermbg=NONE
  hi  ErrorMsg                                term=reverse  cterm=reverse  ctermfg=1  ctermbg=NONE
  hi  FoldColumn                              ctermfg=12  ctermbg=0
  hi  Folded                                  term=bold,underline  cterm=NONE,underline  ctermfg=12  ctermbg=0
  hi  HelpExample                             ctermfg=14
  hi  Identifier                              ctermfg=4
  hi  IncSearch                               term=standout  cterm=standout  ctermfg=9
  hi  LineNr                                  ctermfg=10  ctermbg=0
  hi  MatchParen                              term=bold  cterm=NONE  ctermfg=1  ctermbg=10
  hi  ModeMsg                                 ctermfg=4
  hi  MoreMsg                                 ctermfg=4
  hi  NonText                                 term=bold  cterm=NONE  ctermfg=11
  hi  Pmenu                                   term=reverse  cterm=reverse  ctermfg=12  ctermbg=0
  hi  PmenuSbar                               term=reverse  cterm=reverse  ctermfg=7  ctermbg=12
  hi  PmenuSel                                term=reverse  cterm=reverse  ctermfg=10  ctermbg=7
  hi  PmenuThumb                              term=reverse  cterm=reverse  ctermfg=12  ctermbg=8
  hi  PreProc                                 cterm=NONE  ctermfg=1
  hi  Question                                term=bold  cterm=NONE  ctermfg=6
  hi  Search                                  term=reverse  cterm=reverse  ctermfg=3 ctermbg=NONE
  hi  SignColumn                              ctermfg=12  ctermbg=242
  hi  Special                                 ctermfg=1
  hi  SpecialKey                              term=bold  cterm=NONE  ctermfg=11  ctermbg=0
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
  hi  Title                                   term=bold  cterm=NONE  ctermfg=9
  hi  Todo                                    term=bold  cterm=NONE  ctermfg=5
  hi  Type                                    ctermfg=3
  hi  Underlined                              ctermfg=13
  hi  VarId                                   ctermfg=4
  hi  VertSplit                               ctermfg=11  ctermbg=11
  hi  Visual                                  term=reverse  cterm=reverse  ctermfg=10  ctermbg=8
  hi  VisualNOS                               term=reverse  cterm=reverse  ctermbg=0  ctermbg=NONE
  hi  WarningMsg                              term=bold  cterm=NONE  ctermfg=1
  hi  WildMenu                                term=reverse  cterm=reverse  ctermfg=7  ctermbg=0

  hi  cPreCondit                              ctermfg=9

  hi  gitcommitBranch                         term=bold  cterm=NONE  ctermfg=5
  hi  gitcommitComment                        ctermfg=10
  hi  gitcommitDiscardedFile                  term=bold  cterm=NONE  ctermfg=1
  hi  gitcommitDiscardedType                  ctermfg=1
  hi  gitcommitFile                           term=bold  cterm=NONE  ctermfg=12
  hi  gitcommitHeader                         ctermfg=10
  hi  gitcommitOnBranch                       term=bold  cterm=NONE  ctermfg=10
  hi  gitcommitSelectedFile                   term=bold  cterm=NONE  ctermfg=2
  hi  gitcommitSelectedType                   ctermfg=2
  hi  gitcommitUnmerged                       term=bold  cterm=NONE  ctermfg=2
  hi  gitcommitUnmergedFile                   term=bold  cterm=NONE  ctermfg=3
  hi  gitcommitUntrackedFile                  term=bold  cterm=NONE  ctermfg=6

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
  hi  htmlTagN                                term=bold  cterm=NONE  ctermfg=14
  hi  htmlTagName                             term=bold  cterm=NONE  ctermfg=4

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
  hi  pandocDefinitionIndctr                  term=bold  cterm=NONE  ctermfg=13
  hi  pandocDefinitionTerm                    term=standout  cterm=standout  ctermfg=13
  hi  pandocEmphasis                          ctermfg=12
  hi  pandocEmphasisDefinition                ctermfg=13
  hi  pandocEmphasisHeading                   term=bold  cterm=NONE  ctermfg=9
  hi  pandocEmphasisNested                    term=bold  cterm=NONE  ctermfg=12
  hi  pandocEmphasisNestedDefinition          term=bold  cterm=NONE  ctermfg=13
  hi  pandocEmphasisNestedHeading             term=bold  cterm=NONE  ctermfg=9
  hi  pandocEmphasisNestedTable               term=bold  cterm=NONE  ctermfg=4
  hi  pandocEmphasisTable                     ctermfg=4
  hi  pandocEscapePair                        term=bold  cterm=NONE  ctermfg=1
  hi  pandocFootnote                          ctermfg=2
  hi  pandocFootnoteDefLink                   term=bold  cterm=NONE  ctermfg=2
  hi  pandocFootnoteInline                    term=bold,underline  cterm=NONE,underline  ctermfg=2
  hi  pandocFootnoteLink                      term=underline  cterm=underline  ctermfg=2
  hi  pandocHeading                           term=bold  cterm=NONE  ctermfg=9
  hi  pandocHeadingMarker                     term=bold  cterm=NONE  ctermfg=3
  hi  pandocImageCaption                      term=bold,underline  cterm=NONE,underline  ctermfg=13
  hi  pandocLinkDefinition                    term=underline  cterm=underline  ctermfg=6
  hi  pandocLinkDefinitionID                  term=bold  cterm=NONE  ctermfg=4
  hi  pandocLinkDelim                         ctermfg=10
  hi  pandocLinkLabel                         term=underline  cterm=underline  ctermfg=4
  hi  pandocLinkText                          term=bold,underline  cterm=NONE,underline  ctermfg=4
  hi  pandocLinkTitle                         term=underline  cterm=underline  ctermfg=11
  hi  pandocLinkTitleDelim                    term=underline  cterm=underline  ctermfg=10
  hi  pandocLinkURL                           term=underline  cterm=underline  ctermfg=11
  hi  pandocListMarker                        ctermfg=5
  hi  pandocListReference                     term=underline  cterm=underline  ctermfg=5
  hi  pandocMetadata                          term=bold  cterm=NONE  ctermfg=4
  hi  pandocMetadataDelim                     ctermfg=10
  hi  pandocMetadataKey                       ctermfg=4
  hi  pandocNonBreakingSpace                  term=reverse  cterm=reverse  ctermfg=1  ctermbg=NONE
  hi  pandocRule                              term=bold  cterm=NONE  ctermfg=4
  hi  pandocRuleLine                          term=bold  cterm=NONE  ctermfg=4
  hi  pandocStrikeout                         term=reverse  cterm=reverse  ctermfg=10  ctermbg=NONE
  hi  pandocStrikeoutDefinition               term=reverse  cterm=reverse  ctermfg=13  ctermbg=NONE
  hi  pandocStrikeoutHeading                  term=reverse  cterm=reverse  ctermfg=9  ctermbg=NONE
  hi  pandocStrikeoutTable                    term=reverse  cterm=reverse  ctermfg=4  ctermbg=NONE
  hi  pandocStrongEmphasis                    term=bold  cterm=NONE  ctermfg=12
  hi  pandocStrongEmphasisDefinition          term=bold  cterm=NONE  ctermfg=13
  hi  pandocStrongEmphasisEmphasis            term=bold  cterm=NONE  ctermfg=12
  hi  pandocStrongEmphasisEmphasisDefinition  term=bold  cterm=NONE  ctermfg=13
  hi  pandocStrongEmphasisEmphasisHeading     term=bold  cterm=NONE  ctermfg=9
  hi  pandocStrongEmphasisEmphasisTable       term=bold  cterm=NONE  ctermfg=4
  hi  pandocStrongEmphasisHeading             term=bold  cterm=NONE  ctermfg=9
  hi  pandocStrongEmphasisNested              term=bold  cterm=NONE  ctermfg=12
  hi  pandocStrongEmphasisNestedDefinition    term=bold  cterm=NONE  ctermfg=13
  hi  pandocStrongEmphasisNestedHeading       term=bold  cterm=NONE  ctermfg=9
  hi  pandocStrongEmphasisNestedTable         term=bold  cterm=NONE  ctermfg=4
  hi  pandocStrongEmphasisTable               term=bold  cterm=NONE  ctermfg=4
  hi  pandocStyleDelim                        ctermfg=10
  hi  pandocSubscript                         ctermfg=13
  hi  pandocSubscriptDefinition               ctermfg=13
  hi  pandocSubscriptHeading                  term=bold  cterm=NONE  ctermfg=9
  hi  pandocSubscriptTable                    ctermfg=4
  hi  pandocSuperscript                       ctermfg=13
  hi  pandocSuperscriptDefinition             ctermfg=13
  hi  pandocSuperscriptHeading                term=bold  cterm=NONE  ctermfg=9
  hi  pandocSuperscriptTable                  ctermfg=4
  hi  pandocTable                             ctermfg=4
  hi  pandocTableStructure                    ctermfg=4
  hi  pandocTableZebraDark                    ctermfg=4  ctermbg=0
  hi  pandocTableZebraLight                   ctermfg=4  ctermbg=8
  hi  pandocTitleBlock                        ctermfg=4
  hi  pandocTitleBlockTitle                   term=bold  cterm=NONE  ctermfg=4
  hi  pandocTitleComment                      term=bold  cterm=NONE  ctermfg=4
  hi  pandocVerbatimBlock                     ctermfg=3
  hi  pandocVerbatimInline                    ctermfg=3
  hi  pandocVerbatimInlineDefinition          ctermfg=13
  hi  pandocVerbatimInlineHeading             term=bold  cterm=NONE  ctermfg=9
  hi  pandocVerbatimInlineTable               ctermfg=4

  hi  perlHereDoc                             ctermfg=14  ctermbg=8
  hi  perlStatementFileDesc                   ctermfg=6  ctermbg=8
  hi  perlVarPlain                            ctermfg=3  ctermbg=8

  hi  rubyDefine                              term=bold  cterm=NONE  ctermfg=14  ctermbg=8

  hi  texMathMatcher                          ctermfg=3  ctermbg=8
  hi  texMathZoneX                            ctermfg=3  ctermbg=8
  hi  texRefLabel                             ctermfg=3  ctermbg=8
  hi  texStatement                            ctermfg=6  ctermbg=8

  hi  vimCmdSep                               term=bold  cterm=NONE  ctermfg=4
  hi  vimCommand                              ctermfg=3
  hi  vimCommentString                        ctermfg=13
  hi  vimGroup                                term=bold,underline  cterm=NONE,underline  ctermfg=4
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
