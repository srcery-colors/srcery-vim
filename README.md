![logo](https://user-images.githubusercontent.com/4509009/34464311-af369b46-ee79-11e7-9000-a008c1af95d3.png)

Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone

## Requirements

### GUI
You don’t need to do anything for this colorscheme to work in GVim or MacVim.

### TUI
To use Srcery in the terminal you need to change your terminal emulator’s
so-called “ASCII” colors to the ones in the table below. I've included
colorscheme files for various terminals in the term_color folder, but since I
haven't tested all of them some issues may arise. If your terminal is different
or the file won't work please let me know so I can add/update/fix the file in
question.

```
TERMCOL   NR  HEX       RGB
-------   --  -------   -------------
black     0   #1C1B19   28,  27,  25
red       1   #EF2F27   239, 47, 39
green     2   #519F50   81,  159, 80
yellow    3   #FBB829   251, 184, 41
blue      4   #2C78BF   44, 120, 191
magenta   5   #E02C6D   224, 44,  109
cyan      6   #0AAEB3   10, 174, 179
white     7   #918175   145, 129, 117

brblack   8   #2D2B28   45,  43,  40
brred     9   #F75341   247, 83, 65
brgreen   10  #98BC37   152, 188, 55
bryellow  11  #FED06E   254, 208, 110
brblue    12  #82B4E3   130, 180, 227
brmagenta 13  #FF5C8F   255, 92, 143
brcyan    14  #53FDE9   83, 253, 233
brWhite   15  #FCE8C3   252, 232, 195
```

If the colors still don't look right, ensure that 256 colors are enabled in vim by setting this option **before** setting the colorscheme.
```viml
set t_Co=256
```

## Installation

Put `srcery.vim` in `~/.vim/colors/` (on unix-like systems) or `%userprofile%\vimfiles\colors\` (on Windows).

Using a [plugin](https://github.com/junegunn/vim-plug) [manager](https://github.com/tpope/vim-pathogen) for vim.
```vim
Plug 'roosta/srcery'
```

## Configuration

I've included a few toggles due to discrepancies in the various setups possible.

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

#### g:srcery_inverse

Enables inverse colors.
default: 1

## Usage
```
:color srcery
```

If you like what you see and decide to make srcery your default colorscheme, add the relevant line to your vimrc:
```vim
colorscheme srcery
```
## Screenshots

Bash script, Viml
![sh-viml](https://cloud.githubusercontent.com/assets/4509009/25771687/967cffec-3258-11e7-90a3-954e3041a4c9.png)

Clojurescript
![cljs](https://cloud.githubusercontent.com/assets/4509009/25771684/967ab6ce-3258-11e7-90b9-25151141012f.png)

C, Python
![c-python](https://cloud.githubusercontent.com/assets/4509009/25771685/967afc10-3258-11e7-95a2-aa51b857896b.png)
Typeface used in screenshots is [PragmataPro](https://www.fsd.it/shop/fonts/pragmatapro/).

## Lightline
![lightline](https://user-images.githubusercontent.com/4509009/29240594-9c36235c-7f68-11e7-81de-7d691c89a224.png)

I've recently added a [Lightline](https://github.com/itchyny/lightline.vim) colorscheme.
To use it, include 'srcery' value in lightline configuration, like so:

```vim
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ }
```

## Xterm colors
Srcery uses some [xterm colors](https://en.wikipedia.org/wiki/Xterm#/media/File:Xterm_256color_chart.svg) to pad out the color selection. Notable colors are:

```
TERMCOL    NR    HEX       RGB
-------    ---   -------   ----------
orange     166   #D75F00   215, 95, 0
brorange   208   #FF8700   255, 135, 0
hard_black 233   #121212   18, 18, 18
xgrey1     235   #262626   38, 38, 38
xgrey2     236   #303030   48, 48, 48
xgrey3     237   #3A3A3A   58, 58, 58
xgrey4     238   #444444   68, 68, 68
xgrey5     239   #4E4E4E   78, 78, 78
```

Now reason I mention this is that this relies on the 256 colors defined by your
terminal, I don't change any of these colors, I just rely on the xterm palette.
This might look different on different environments. They are used sparingly
tho, and shouldn't effect 95% of the visuals.

## Attribution

This project started as essentially a palette swap of [Gruvbox](https://github.com/morhetz/gruvbox) and all credit goes to the maintainers of that fantasic colorscheme. I wanted something a bit sharper, but I loved the syntax color choices of gruvbox. I also tried to make the theme as simple to use as possible, which was inspired by [Flattened](https://github.com/romainl/flattened). Other themes that influenced Srcery:

 * [Base16](http://chriskempson.com/projects/base16/)
 * [Badwolf](https://github.com/sjl/badwolf)
 * [Jellybeans](https://github.com/nanotech/jellybeans.vim)
 * [Molokai](https://github.com/tomasr/molokai)

## Etc
I've adapted this colorscheme to various other formats, and I thought I'd share some of them here:
* [Gimp/Inkscape palette](https://github.com/roosta/colors/blob/master/palettes/srcery.gpl)
* [EDN](https://github.com/roosta/colors/blob/master/edn/srcery.edn)
* [Rofi srcery theme](https://github.com/roosta/etc/blob/master/conf/rofi/.config/rofi/srcery.rasi)
* [Firefox userChrome](https://github.com/roosta/etc/tree/master/conf/firefox)
* [Emacs theme (WIP)](https://github.com/roosta/emacs-srcery)
* [My dotfiles](https://github.com/roosta/etc)
