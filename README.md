![logo](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/title.png)

[![Check Them Vim Files](https://github.com/srcery-colors/srcery-vim/workflows/Check%20Them%20Vim%20Files/badge.svg)](https://github.com/srcery-colors/srcery-vim/actions)

Color scheme with clearly defined contrasting colors and a slightly earthy tone.

## Requirements

### GUI

You don’t need to do anything for this colorscheme to work in gVim or MacVim.

### TUI

To use Srcery in the terminal you need to change your terminal emulator’s
so-called “ASCII” colors to the ones in the table below. There's a list of
terminal configurations in the
[srcery-terminal](https://github.com/srcery-colors/srcery-terminal) repository.

| TERMCOL       | NR | VAR                       | HEX     | RGB           | IMG                                                            |
|---------------|----|---------------------------|---------|---------------|----------------------------------------------------------------|
| black         | 0  | `g:srcery_black`          | #1C1B19 | 28,  27,  25  | ![black](https://place-hold.it/100x24/1C1B19?text=+)           |
| red           | 1  | `g:srcery_red`            | #EF2F27 | 239, 47, 39   | ![red](https://place-hold.it/100x24/EF2F27?text=+)             |
| green         | 2  | `g:srcery_green`          | #519F50 | 81,  159, 80  | ![green](https://place-hold.it/100x24/519F50?text=+)           |
| yellow        | 3  | `g:srcery_yellow`         | #FBB829 | 251, 184, 41  | ![yellow](https://place-hold.it/100x24/FBB829?text=+)          |
| blue          | 4  | `g:srcery_blue`           | #2C78BF | 44, 120, 191  | ![blue](https://place-hold.it/100x24/2C78BF?text=+)            |
| magenta       | 5  | `g:srcery_magenta`        | #E02C6D | 224, 44,  109 | ![magenta](https://place-hold.it/100x24/E02C6D?text=+)         |
| cyan          | 6  | `g:srcery_cyan`           | #0AAEB3 | 10, 174, 179  | ![cyan](https://place-hold.it/100x24/0AAEB3?text=+)            |
| white         | 7  | `g:srcery_white`          | #BAA67F | 186, 166, 127 | ![white](https://place-hold.it/100x24/BAA67F?text=+)           |
| brightblack   | 8  | `g:srcery_bright_black`   | #918175 | 145, 129, 117 | ![bright\_black](https://place-hold.it/100x24/918175?text=+)   |
| brightred     | 9  | `g:srcery_bright_red`     | #F75341 | 247, 83, 65   | ![bright\_red](https://place-hold.it/100x24/F75341?text=+)     |
| brightgreen   | 10 | `g:srcery_bright_green`   | #98BC37 | 152, 188, 55  | ![bright\_green](https://place-hold.it/100x24/98BC37?text=+)   |
| brightyellow  | 11 | `g:srcery_bright_yellow`  | #FED06E | 254, 208, 110 | ![bright\_yellow](https://place-hold.it/100x24/FED06E?text=+)  |
| brightblue    | 12 | `g:srcery_bright_blue`    | #68A8E4 | 104, 168, 228 | ![bright\_blue](https://place-hold.it/100x24/68A8E4?text=+)    |
| brightmagenta | 13 | `g:srcery_bright_magenta` | #FF5C8F | 255, 92, 143  | ![bright\_magenta](https://place-hold.it/100x24/FF5C8F?text=+) |
| brightcyan    | 14 | `g:srcery_bright_cyan`    | #2BE4D0 | 43, 228, 208  | ![bright\_cyan](https://place-hold.it/100x24/2BE4D0?text=+)    |
| brightwhite   | 15 | `g:srcery_bright_white`   | #FCE8C3 | 252, 232, 195 | ![bright\_white](https://place-hold.it/100x24/FCE8C3?text=+)   |

Additionally Srcery uses some [xterm 256
colors](https://en.wikipedia.org/wiki/Xterm#/media/File:Xterm_256color_chart.svg)
to pad out the color selection, no extra configuration needed.

| NAME           | NR  | VAR                      | HEX     | RGB         | IMG                                                           |
|----------------|-----|--------------------------|---------|-------------|---------------------------------------------------------------|
| orange         | 202 | `g:srcery_orange`        | #FF5F00 | 255, 95, 0  | ![orange](https://place-hold.it/100x24/FF5F00?text=+)         |
| bright\_orange | 208 | `g:srcery_bright_orange` | #FF8700 | 255, 135, 0 | ![bright\_orange](https://place-hold.it/100x24/FF8700?text=+) |
| hard\_black    | 233 | `g:srcery_hard_black`    | #121212 | 18, 18, 18  | ![hard\_black](https://place-hold.it/100x24/121212?text=+)    |
| xgray1         | 235 | `g:srcery_xgray1`        | #262626 | 38, 38, 38  | ![xgray1](https://place-hold.it/100x24/262626?text=+)         |
| xgray2         | 236 | `g:srcery_xgray2`        | #303030 | 48, 48, 48  | ![xgray2](https://place-hold.it/100x24/303030?text=+)         |
| xgray3         | 237 | `g:srcery_xgray3`        | #3A3A3A | 58, 58, 58  | ![xgray3](https://place-hold.it/100x24/3A3A3A?text=+)         |
| xgray4         | 238 | `g:srcery_xgray4`        | #444444 | 68, 68, 68  | ![xgray4](https://place-hold.it/100x24/444444?text=+)         |
| xgray5         | 239 | `g:srcery_xgray5`        | #4E4E4E | 78, 78, 78  | ![xgray5](https://place-hold.it/100x24/4E4E4E?text=+)         |
| xgray6         | 240 | `g:srcery_xgray6`        | #585858 | 88, 88, 88  | ![xgray6](https://place-hold.it/100x24/585858?text=+)         |

## Installation

### Manually

Put `srcery.vim` in `~/.vim/colors/` (on unix-like systems) or `%userprofile%\vimfiles\colors\` (on Windows).

### Vim 8

Vim 8 has native support for loading plugins. All you need to do to is to clone
this repository into `~/.vim/pack/default/opt`.

    git clone https://github.com/srcery-colors/srcery-vim ~/.vim/pack/default/opt/srcery-vim

The same works for Neovim, but you have to clone it into a path where Neovim can
find it.

    git clone https://github.com/srcery-colors/srcery-vim ~/.config/nvim/plug/default/opt/srcery-vim

### [dein.vim](https://github.com/Shougo/dein.vim)

```vim
call dein#add('srcery-colors/srcery-vim')
```

### [vim-pathogen](https://github.com/tpope/vim-pathogen)

```shell
cd ~/.vim/bundle
git clone https://github.com/srcery-colors/srcery-vim
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'srcery-colors/srcery-vim'
```
### [packer](https://github.com/wbthomason/packer.nvim)
```lua
  use {'srcery-colors/srcery-vim', as = 'srcery'}
```

## Usage

```
:color srcery
```

If you like what you see and decide to make srcery your default colorscheme, add the relevant line to your `.vimrc`:

```vim
colorscheme srcery
```

## Configuration

Srcery includes a few toggles due to discrepancies in the various setups possible.
To change any of these you'd put something like this in your `.vimrc`

```vim
let g:srcery_italic = 1
```

Make sure that you set these variables before assigning `colorscheme`.

### Colors

You can customize each of Srcery's colors, to customize say the red color:

```vim
let g:srcery_red = '#FF0000'
```

Refer to the [table](#TUI) for a full list of color variables, hexes and more.

This will only work on `set termguicolors` and in gVim, to override terminal
colors, do so in your [terminal
configuration](https://github.com/srcery-colors/srcery-terminal).

### Options

#### g:srcery\_bold

Enables bold text.

Default: 1

#### g:srcery\_italic

Enables italic text.

Default: gui 1, term 0

#### g:srcery\_underline

Enables underlined text.

Default: 1

#### g:srcery\_undercurl

Enables undercurled text.

Default: 1

#### g:srcery\_inverse

Enable or disable inverse highlighting (foreground becomes background,
vice versa). This is used for visual selection, search highlights and
some other things.

Srcery will fall back to other methods of highlighting if this is
disabled.

Default: 1

#### g:srcery\_inverse\_matches

Highlight search matches using inverse colors.

Default: 0

#### g:srcery\_inverse\_match\_paren

When enabled will highlight matching delimiters using inverse colors.
(`:DoMatchParen`)

Works best with [Rainbow parenthesis](https://github.com/kien/rainbow_parentheses.vim).

Default: 0

#### g:srcery\_dim\_lisp\_paren

Dims lisp dialects delimiters to a fairly dark gray (xgray5 specifically).

Default: 0

#### g:srcery\_bg\_passthrough

Lets the terminal control the background color in Vim by setting the background to `NONE`.

A possible use case for this could be you want to manipulate the background
color in the terminal, and let the results bubble up to Vim, like [this](https://github.com/roosta/tmux-pop).

This is a bit of an experimental option, and can cause issues in certain
terminals.

Default: 0

#### g:srcery\_guisp\_fallback

Sets up alternate highlighting for colored underline/undercurl. Some
environments are unable to color underline, so this setting will set either the
background or foreground to whatever color the underline is supposed to be.

This comes in handy if colored underline doesn't work, or underline is disabled
entirely.

Default: 'NONE'

Possible Values: 'fg', 'bg'

#### g:srcery\_italic\_types

Italicize types if italic is enabled.

Default: 0

#### g:srcery\_hard\_black\_terminal\_bg

If enabled, will set the terminal background in vim to hard black.
Note that this currently only works in Vim, not Neovim.

Default: 1

## Screenshots

viml, bash
![viml\_bash](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/viml_bash.png)

clojure, elisp
![lisp](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/lisp.png)

c, rust
![c\_rust](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/c_rust.png)

python, js
![py\_js](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/py_js.png)

git, terminal
![git\_term](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/git_term.png)

Typeface used in screenshots is [Iosevka](https://github.com/be5invis/Iosevka)

## Plugin support

### Lightline

![lightline](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/lightline.png)

[Lightline](https://github.com/itchyny/lightline.vim) colorscheme.
To use it, include 'srcery' value in lightline configuration, like so:

```vim
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ }
```

### Airline

![airline](https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/vim/airline.png)

Thanks to [MindTooth](https://github.com/MindTooth), Srcery now includes an [Airline](https://github.com/vim-airline/vim-airline) theme.

### Other

These don't require any additional configuration.

* [ale](https://github.com/w0rp/ale)
* [coc.nvim](https://github.com/neoclide/coc.nvim)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [fzf.vim](https://github.com/junegunn/fzf.vim)
* [vim-clap](https://github.com/liuchengxu/vim-clap)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [vim-sneak](https://github.com/justinmk/vim-sneak)
* [vim-startify](https://github.com/mhinz/vim-startify)

Plugin support is still a work in progress and more will come, if there is
anything missing that you'd like to add please open an issue and let me know.

## Attribution

This project started as essentially a palette swap of
[Gruvbox](https://github.com/morhetz/gruvbox) and all credit goes to the
maintainers of that fantastic color scheme. I wanted something a bit sharper, but
I loved the syntax color choices of Gruvbox. I also tried to make the theme as
simple to use as possible, which was inspired by
[Flattened](https://github.com/romainl/flattened). Other themes that influenced
Srcery:

 * [Base16](http://chriskempson.com/projects/base16/)
 * [Badwolf](https://github.com/sjl/badwolf)
 * [Jellybeans](https://github.com/nanotech/jellybeans.vim)
 * [Molokai](https://github.com/tomasr/molokai)

## Troubleshooting

### Colors don't look right

Ensure that 256 colors are enabled in vim by setting this option **before** setting the colorscheme.

```viml
set t_Co=256
```

### 24-bit color, tmux and Neovim

If you want to use GUI colors in terminal make sure that tmux pass
through 24-bit color codes. For example, if you use
[Termite](https://github.com/thestinger/termite) add it to the
terminal overrides setting:

```tmux
set -ga terminal-overrides ",xterm-termite:Tc"
```

For other terminals, replace `xterm-termite` with the relevant
terminal type. (stored in `$TERM`).

See [Arch wiki](https://wiki.archlinux.org/index.php/Tmux#24-bit_color)
and this [issue](https://github.com/srcery-colors/srcery-vim/issues/36).

## Extra

### Emacs

 Check out [srcery-emacs](https://github.com/srcery-colors/srcery-emacs)
