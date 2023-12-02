<p align="center">
  <img src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/src/logo_border.svg">
</p>

<p align="center">
  <a href="https://srcery.sh">
    <img src="https://img.shields.io/static/v1?label=&message=website&style=flat&color=5B5B5B&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAA7MAAAOzAGxoQZ+AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAAdJJREFUOI1jDAgIYMAFTp8+EcrIyMRqYmK2DJcaJlwS548fV2RjYJnNxsg87fzx44okGbBhwwaWvyyMSzM4dfgrlGz5/7IwLt2wYQML0QZIS0s2mLFIWIZxqDKkyJowuAirWkpLSzYQZcDZsyfthJnYK2p4TBkYGRgYGBkYGXo0PBjE2XgqT58+7oTXgHPnzgky/GNYXMFlwizEyAEXF2bjYujX9GJiYmBedPr0aWGcBvz793teOIeanBWrJIZT7YQUGFJkTaQZGf4v3LBhAyOGAWdPn8hUZxYIyODUweZVBgYGBoYqZXsGQz5Jb1lpiQycYUAqgBtgbGox/ebfDxtmfL+CU3Hb3YMM5z893/r46YsZWF3AxMSatPLHrUfHfj/H0Hzo3QOGOY/PPP3PwBgfEBDwH6sBRkZG7xmYGGI7vp35++7/D7j421/fGAqvb/v3j+FvnKmp6VusXoB7xdj80Nt/Pztavpxm+M/AwPCf4T9DyY0dDC9/fWk3NbXchzMMkMHTp88bTv15cXzVj9sMcx6fYdjz9vbxp0+fN2BTy4grN54/flyRiYX1PCMTI8PfX78MDS0t72NThzMaDS0t7//5/y/z99+/mbg0MzAwMAAAVbWgDHTwVjUAAAAASUVORK5CYII=">
  </a>
  <a href="https://discord.gg/G6vBMmZ">
    <img src="https://img.shields.io/discord/714101903377694741?color=%232C78BF&label=discord&logo=discord">
  </a>
  <a href="https://github.com/orgs/srcery-colors/repositories">
    <img src="https://img.shields.io/github/actions/workflow/status/srcery-colors/srcery-vim/lint.yaml?color=%2398BC37&logo=github">
  </a>

  <a href="https://www.npmjs.com/package/@srcery-colors/srcery-palette">
    <img src="https://img.shields.io/npm/v/@srcery-colors/srcery-palette?color=%23FBB829&label=Palette%20version&logo=npm">
  </a>
</p>

<p align="center">
Srcery is a color scheme with clearly defined contrasting colors and a
slightly earthy tone.
</p>

<details>
<summary><strong>Table of content</strong></summary>

- [Requirements](#requirements)
    - [GUI](#gui)
    - [TUI](#tui)
- [Installation](#installation)
    - [Manually](#manually)
    - [Vim 8](#vim-8)
    - [dein.vim](#deinvim)
    - [vim-pathogen](#vim-pathogen)
    - [vim-plug](#vim-plug)
    - [packer](#packer)
- [Usage](#usage)
- [Configuration](#configuration)
    - [Colors](#colors)
    - [Options](#options)
        - [g:srcery\_bold](#gsrcery_bold)
        - [g:srcery\_italic](#gsrcery_italic)
        - [g:srcery\_underline](#gsrcery_underline)
        - [g:srcery\_undercurl](#gsrcery_undercurl)
        - [g:srcery\_inverse](#gsrcery_inverse)
        - [g:srcery\_inverse\_matches](#gsrcery_inverse_matches)
        - [g:srcery\_inverse\_match\_paren](#gsrcery_inverse_match_paren)
        - [g:srcery\_dim\_lisp\_paren](#gsrcery_dim_lisp_paren)
        - [g:srcery\_guisp\_fallback](#gsrcery_guisp_fallback)
        - [g:srcery\_italic\_types](#gsrcery_italic_types)
        - [g:srcery\_bg](#gsrcery_bg)
        - [g:srcery\_hard\_black\_terminal\_bg](#gsrcery_hard_black_terminal_bg)
- [Screenshots](#screenshots)
- [Plugin support](#plugin-support)
    - [Lightline](#lightline)
    - [Airline](#airline)
    - [Other](#other)
- [Attribution](#attribution)
- [Troubleshooting](#troubleshooting)
    - [Colors don't look right](#colors-dont-look-right)
    - [24-bit color, tmux and Neovim](#24-bit-color-tmux-and-neovim)
- [Extra](#extra)
    - [Emacs](#emacs)


</details>

## Requirements

### GUI

You don’t need to do anything for this colorscheme to work in gVim or MacVim.

### TUI

To use Srcery in the terminal you need to change your terminal emulator’s
so-called “ASCII” colors to the ones in the table below. There's a list of
terminal configurations in the
[srcery-terminal](https://github.com/srcery-colors/srcery-terminal) repository.

| IMG  | TERMCOL | NR | VAR | HEX | RGB  | HSL |
|------|---------|----|-----|-----|------|-----|
| ![black](https://place-hold.it/24x24/1c1b19?text=+) | black | 0 | `g:srcery_black` | #1C1B19 | 28, 27, 25 | 40, 6%, 10% |
| ![red](https://place-hold.it/24x24/ef2f27?text=+) | red | 1 | `g:srcery_red` | #EF2F27 | 239, 47, 39 | 2, 86%, 55% |
| ![green](https://place-hold.it/24x24/519f50?text=+) | green | 2 | `g:srcery_green` | #519F50 | 81, 159, 80 | 119, 33%, 47% |
| ![yellow](https://place-hold.it/24x24/fbb829?text=+) | yellow | 3 | `g:srcery_yellow` | #FBB829 | 251, 184, 41 | 41, 96%, 57% |
| ![blue](https://place-hold.it/24x24/2c78bf?text=+) | blue | 4 | `g:srcery_blue` | #2C78BF | 44, 120, 191 | 209, 63%, 46% |
| ![magenta](https://place-hold.it/24x24/e02c6d?text=+) | magenta | 5 | `g:srcery_magenta` | #E02C6D | 224, 44, 109 | 338, 74%, 53% |
| ![cyan](https://place-hold.it/24x24/0aaeb3?text=+) | cyan | 6 | `g:srcery_cyan` | #0AAEB3 | 10, 174, 179 | 182, 89%, 37% |
| ![white](https://place-hold.it/24x24/baa67f?text=+) | white | 7 | `g:srcery_white` | #BAA67F | 186, 166, 127 | 40, 30%, 61% |
| ![brightblack](https://place-hold.it/24x24/918175?text=+) | brightblack | 8 | `g:srcery_bright_black` | #918175 | 145, 129, 117 | 26, 11%, 51% |
| ![brightred](https://place-hold.it/24x24/f75341?text=+) | brightred | 9 | `g:srcery_bright_red` | #F75341 | 247, 83, 65 | 6, 92%, 61% |
| ![brightgreen](https://place-hold.it/24x24/98bc37?text=+) | brightgreen | 10 | `g:srcery_bright_green` | #98BC37 | 152, 188, 55 | 76, 55%, 48% |
| ![brightyellow](https://place-hold.it/24x24/fed06e?text=+) | brightyellow | 11 | `g:srcery_bright_yellow` | #FED06E | 254, 208, 110 | 41, 99%, 71% |
| ![brightblue](https://place-hold.it/24x24/68a8e4?text=+) | brightblue | 12 | `g:srcery_bright_blue` | #68A8E4 | 104, 168, 228 | 209, 70%, 65% |
| ![brightmagenta](https://place-hold.it/24x24/ff5c8f?text=+) | brightmagenta | 13 | `g:srcery_bright_magenta` | #FF5C8F | 255, 92, 143 | 341, 100%, 68% |
| ![brightcyan](https://place-hold.it/24x24/2be4d0?text=+) | brightcyan | 14 | `g:srcery_bright_cyan` | #2BE4D0 | 43, 228, 208 | 174, 77%, 53% |
| ![brightwhite](https://place-hold.it/24x24/fce8c3?text=+) | brightwhite | 15 | `g:srcery_bright_white` | #FCE8C3 | 252, 232, 195 | 39, 90%, 88% |

Additionally Srcery uses some [xterm 256
colors](https://en.wikipedia.org/wiki/Xterm#/media/File:Xterm_256color_chart.svg)
to pad out the color selection, no extra configuration needed.

| IMG  | NAME | NR | VAR | HEX | RGB  | HSL |
|------|------|----|-----|-----|------|-----|
| ![orange](https://place-hold.it/24x24/ff5f00?text=+) | orange | 202 | `g:srcery_orange`, `g:srcery_orange_cterm` | #FF5F00 | 255, 95, 0 | 22, 100%, 50% |
| ![bright_orange](https://place-hold.it/24x24/ff8700?text=+) | bright_orange | 208 | `g:srcery_bright_orange`, `g:srcery_bright_orange_cterm` | #FF8700 | 255, 135, 0 | 32, 100%, 50% |
| ![hard_black](https://place-hold.it/24x24/121212?text=+) | hard_black | 233 | `g:srcery_hard_black`, `g:srcery_hard_black_cterm`| #121212 | 18, 18, 18 | 0, 0%, 7% |
| ![xgray1](https://place-hold.it/24x24/262626?text=+) | xgray1 | 235 | `g:srcery_xgray1`, `g:srcery_xgray1_cterm` | #262626 | 38, 38, 38 | 0, 0%, 15% |
| ![xgray2](https://place-hold.it/24x24/303030?text=+) | xgray2 | 236 | `g:srcery_xgray2`, `g:srcery_xgray2_cterm` | #303030 | 48, 48, 48 | 0, 0%, 19% |
| ![xgray3](https://place-hold.it/24x24/3a3a3a?text=+) | xgray3 | 237 | `g:srcery_xgray3`, `g:srcery_xgray3_cterm` | #3A3A3A | 58, 58, 58 | 0, 0%, 23% |
| ![xgray4](https://place-hold.it/24x24/444444?text=+) | xgray4 | 238 | `g:srcery_xgray4`, `g:srcery_xgray4_cterm` |#444444 | 68, 68, 68 | 0, 0%, 27% |
| ![xgray5](https://place-hold.it/24x24/4e4e4e?text=+) | xgray5 | 239 | `g:srcery_xgray5`, `g:srcery_xgray5_cterm` | #4E4E4E | 78, 78, 78 | 0, 0%, 31% |
| ![xgray6](https://place-hold.it/24x24/585858?text=+) | xgray6 | 240 | `g:srcery_xgray6`, `g:srcery_xgray6_cterm` | #585858 | 88, 88, 88 | 0, 0%, 35% |
<!-- | ![teal](https://place-hold.it/24x24/008080?text=+) | teal | 30 | N/A* | #008080 | 0, 128, 128 | 180, 100%, 25% | -->
<!-- | ![xgray7](https://place-hold.it/24x24/626262?text=+) | xgray7 | 241 | N/A* | #626262 | 98, 98, 98 | 0, 0%, 38% | -->
<!-- | ![xgray8](https://place-hold.it/24x24/6c6c6c?text=+) | xgray8 | 242 | N/A* | #6C6C6C | 108, 108, 108 | 0, 0%, 42% | -->
<!-- | ![xgray9](https://place-hold.it/24x24/767676?text=+) | xgray9 | 243 | N/A* | #767676 | 118, 118, 118 | 0, 0%, 46% | -->
<!-- | ![xgray10](https://place-hold.it/24x24/808080?text=+) | xgray10 | 244 | N/A* | #808080 | 128, 128, 128 | 0, 0%, 50% | -->
<!-- | ![xgray11](https://place-hold.it/24x24/8a8a8a?text=+) | xgray11 | 245 | N/A* | #8A8A8A | 138, 138, 138 | 0, 0%, 54% | -->
<!-- | ![xgray12](https://place-hold.it/24x24/949494?text=+) | xgray12 | 246 | N/A* | #949494 | 148, 148, 148 | 0, 0%, 58% | -->
<!-- > \* N/A on variables means the color isn't used in the vim theme, but are used in other Srcery derivatives. If there is a need for more colors these can easily be included. -->

## Installation

### Manually

Download or clone srcery's repository to a location of your choosing and set your `runtimepath` correctly, otherwise srcery will not work as it relies on the `autoload` functionality.

You can also install with your favourite plugin manager.

### Vim 8

Vim 8 has native support for loading plugins by using `packages`. All you need to do to, is to clone this repository into `~/.vim/pack/themes/opt`.

    git clone https://github.com/srcery-colors/srcery-vim ~/.vim/pack/themes/opt/srcery-vim

And then set your `.vimrc` accordingly.

```vim
packadd! srcery-vim
colorscheme srcery
```

The same works for Neovim, but you have to clone it into a path where Neovim can
find it.

    git clone https://github.com/srcery-colors/srcery-vim $XDG_CONFIG_HOME/nvim/pack/themes/opt

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

Inside a 256-color terminal emulator, additional colors are configurable
via setting the corresponding variable with the \_cterm suffix, e.g.

```vim
let g:srcery_hard_black_cterm = 232
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

#### g:srcery\_bg

Let's you customize the background color. This var takes a list with two
values, with a quoted HEX in the first position, and a terminal color index for
the second position. This lets you set both a 24-bit color, and a 8bit terminal
color index.

You can specify `'NONE'` as one of the values to make it transparent, as such
`['NONE', 'NONE']` would be the same as the previous option
`g:srcery_bg_passthrough = 1`.

You can specify `'DEFAULT'` as one of the values in order to use that
position's default value.

Default: `[g:srcery_black, 0]`

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
### Lualine

[Lualine](https://github.com/nvim-lualine/lualine.nvim) colorscheme.
It's the same as Lightline's. Enable it in your configuration:

```
require('lualine').setup {
  options = {
    theme = 'srcery',
  },
}
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
* [nerdtree](https://github.com/preservim/nerdtree)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [telescope-nvim](https://github.com/nvim-telescope/telescope.nvim)
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
