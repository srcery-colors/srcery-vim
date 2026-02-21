<p align="center">
  <img src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/master/src/logo_border.svg">
</p>

<p align="center">
  <a href="https://srcery.sh">
    <img alt="Website" src="https://img.shields.io/website?url=https%3A%2F%2Fsrcery.sh&up_color=%23519f50&down_color=%23ef2f27&style=flat-square&labelColor=%23312f2c&link=https%3A%2F%2Fsrcery.sh">
  </a>
  <a href="https://discord.gg/G6vBMmZ">
    <img src="https://img.shields.io/discord/714101903377694741?style=flat-square&logo=discord&logoColor=%23fce8c3&label=Discord&labelColor=%23312f2c&color=%232c78bf&link=https%3A%2F%2Fdiscord.gg%2FG6vBMmZ">
  </a>
  <a href="https://github.com/orgs/srcery-colors/repositories">
    <img src="https://img.shields.io/github/actions/workflow/status/srcery-colors/srcery-vim/lint.yaml?color=%23519f50&logo=github&style=flat-square&labelColor=%23312f2c">
  </a>
  <a href="https://www.npmjs.com/package/@srcery-colors/srcery-palette">
    <img src="https://img.shields.io/npm/v/@srcery-colors/srcery-palette?color=%23FBB829&label=Palette%20version&logo=npm&logoColor=%23fce8c3&style=flat-square&labelColor=%23312f2c">
  </a>
</p>
<p align="center">
    A ritualistic colorscheme for (n)vim. Perform your dark magick using
    clearly defined contrasting colors with a pinch of earthly tint to for that
    homely feel.
</p>


## Requirements

Most modern terminal supports 24bit color, and srcery works best with that, but
8bit color is also supported as a fallback.

We maintain a [repository of terminal configurations](https://github.com/srcery-colors/srcery-terminal) if you also want to set
your terminalm colorscheme to match vim.

## Installation

### Manually

Use [colors/srcery.vim](./colors/srcery.vim) however you want, or use your
favorite plugin manager to install. For some plugin themes to work you need to
clone the entire project, and put it on your `runtimepath`.

### Vim 8

Vim 8 has native support for loading plugins by using `packages`. All you need
to do to, is to clone this repository into `~/.vim/pack/themes/opt`.

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

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "srcery-colors/srcery-vim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.srcery_normal_float = 1
        vim.cmd([[colorscheme srcery]])
    end,
}
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

Make sure that you set these variables before assigning `colorscheme`.

### Colors

You can customize each of Srcery's colors, to customize say the red color:

```vim
let g:srcery_red = '#FF0000'
```

You can also separately set a different background color `g:srcery_background`,
instead of the default `g:srcery_black`

### Options

|var|description|default|
|---|-----------|-------|
| `g:srcery_bold`| Enables bold text | `1` (enabled) |
| `g:srcery_italic`| Enables italic text | Enabled if available |
| `g:srcery_underline`| Enables underlined text | `1` (enabled) |
| `g:srcery_undercurl` | Enables undercurled text | `1` (enabled) |
| `g:srcery_strikethrough` | Enables strikethrough text | `1` (enabled) |
| `g:srcery_inverse` | Enables inverse highlighting for visual selection, search, etc | `1` (enabled) |
| `g:srcery_guisp_fallback` | Use alternate highlighting for for colored underline/undercurl. Set to either `fd` or `bg`, or `NONE` | `NONE` |


## Screenshots

TBD
<!-- Typeface used in screenshots is [Iosevka](https://github.com/be5invis/Iosevka) -->
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


## Attribution

This project started as essentially a palette swap of
[Gruvbox](https://github.com/morhetz/gruvbox) and all credit goes to the
maintainers of that fantastic color scheme.

These themes have also been an inspiration

- [Nord](https://www.nordtheme.com/)
- [moonfly](https://github.com/bluz71/vim-moonfly-colors)
- [Base16](http://chriskempson.com/projects/base16/)
- [Badwolf](https://github.com/sjl/badwolf)
- [Jellybeans](https://github.com/nanotech/jellybeans.vim)
- [Molokai](https://github.com/tomasr/molokai)

## License

Copyright (c) 2018 for portions of Srcery are held by morhetz <morhetz@gmail.com> as part of Gruvbox.
All other Copyright (c) 2021 for Srcery are held by Daniel Berg <mail@roosta.sh> and contributers of Srcery.

- [MIT License](./LICENSE)
