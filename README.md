./srcery
================================

Colorscheme inspired by [Gruvbox](https://github.com/morhetz/gruvbox) and [Railscast](https://chriskempson.github.io/base16/#railscasts). Srcery's goal is to look good using a 16 color palette. This is a fork of [Flattened](https://github.com/romainl/flattened), and tries to follow its example of simplicity.

## Requirements

### GUI

You don’t need to do anything for these colorschemes to work in GVim or MacVim.

### TUI

Srcery's only requirement is that you change your terminal emulator’s so-called “ASCII” colors to the ones in the table below.
I've included an Xresource file but the approach might be different for the terminal emulator you use.

```
TERMCOL   HEX       RGB
-------   -------   -------------
black     #1C1B19   28,  27,  25
red       #FF3128   255, 49,  40
green     #519F50   81,  159, 80
yellow    #FBB829   251, 184, 41
blue      #5573A3   85,  115, 163
magenta   #E02C6D   224, 44,  109
cyan      #1693A5   22,  147, 165
white     #FCE8C3   252, 232, 195

brblack   #2D2B28   45,  43,  40
brred     #DA4939   218, 73,  57
brgreen   #98BC37   152, 188, 55
bryellow  #FFC66D   255, 198, 109
brblue    #6D9CBE   109, 156, 190
brmagenta #E35682   227, 86,  130
brcyan    #34BEDA   52,  190, 218
gray      #918175   145, 129, 117
```

## Installation

Put `srcery.vim` in `~/.vim/colors/` (on unix-like systems) or `%userprofile%\vimfiles\colors\` (on Windows).

Using a [plugin manager](https://github.com/junegunn/vim-plug) for vim.
```vimrc
Plug 'roosta/srcery'
```

## Configuration

Configuration is currently a work in progress, but I've included a few due to discrepancies in the various setups possible.

#### g:srcery_bold

Enables bold text.
default: 1

#### g:srcery_italic

Enables italic text.
default: gui 1, term 0

#### g:srcery_underline

Enables underlined text.
default: 1

#### g:srcery_undercurl

Enables undercurled text.
default: 1

#### g:srcery_hls_cursor

Changes cursor background while search is highlighted. Possible values are any of srcery palette.
default: orange

#### g:srcery_italicize_comments

Enables italic for comments.
default: 1

#### g:srcery_italicize_strings

Enables italic for strings.
default: 0

## Usage
```
:color srcery
```

If you like what you see and decide to make srcery your default colorscheme, add the relevant line to your `vimrc`:

    colorscheme srcery

## Screenshots.

![srcery vim](screenshots/scery_vim.png)

![srcery shell](screenshots/scery_shell.png)
