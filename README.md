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
    A ritualistic color scheme for (n)vim. Perform your dark magick using
    clearly defined contrasting colors with a pinch of earthly tint for that
    lived-in feel.
</p>

## Screenshots

|  |  |  |
|:--:|:--:|:--:|
| <img alt="C Rust" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/1_c_rs.png"> | <img alt="Python Typescript" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/2_py_ts.png"> | <img alt="Popup" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/3_popup.png"> |
| <img alt="Dignostic" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/4_diag.png"> | <img alt="Diff View" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/5_diff.png"> | <img alt="Markdown Terminal" src="https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/6_md_term.png"> |
## Requirements

Most modern terminal supports 24bit color, and srcery works best with that, but
8bit color is also supported as a fallback.

>[!TIP]
> We maintain a [repository of terminal configurations](https://github.com/srcery-colors/srcery-terminal) if you also want to set
> your terminal color scheme to match vim.

## Installation

<details>
<summary>Manually</summary>

Use [colors/srcery.vim](./colors/srcery.vim) however you want, or use your
favorite plugin manager to install. For some plugin themes to work you need to
clone the entire project, and put it on your `runtimepath`.

</details>

<details>
<summary>Vim 8</summary>

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

```bash
git clone https://github.com/srcery-colors/srcery-vim $XDG_CONFIG_HOME/nvim/pack/themes/opt
```

</details>

<details>
<summary>dein.vim</summary>

[github.com/Shougo/dein.vim](https://github.com/Shougo/dein.vim)
```vim
call dein#add('srcery-colors/srcery-vim')
```

</details>

<details>
<summary>vim-pathogen</summary>

[github.com/tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)

```bash
cd ~/.vim/bundle
git clone https://github.com/srcery-colors/srcery-vim
```

</details>

<details>
<summary>vim-plug</summary>

[github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'srcery-colors/srcery-vim'
```

</details>

<details>
<summary>packer</summary>

[github.com/wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {'srcery-colors/srcery-vim', as = 'srcery'}
```

</details>

<details>
<summary>lazy.nvim</summary>

[github.com/folke/lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "srcery-colors/srcery-vim",
    lazy = false,
    priority = 1000,
}
```
</details>

<details>
<summary>vim.pack</summary>

[Neovim Manual page](https://neovim.io/doc/user/pack/)

```lua
vim.pack.add({
  { src = 'https://github.com/srcery-colors/srcery-vim' },
})
```
</details>

## Usage

```
:colorscheme srcery
```

Add this to your config to make it permanent:

Lua:
```lua
vim.cmd.colorscheme('srcery')
```

vimrc:
```vim
colorscheme srcery
```

## Configuration

Make sure that you set these variables before assigning `colorscheme`.

### Colors

You can customize each of Srcery's colors, to customize say the red color:

vimrc:
```vim
let g:srcery_red = '#FF0000'
```

lua:
```lua
vim.g.srcery_red = '#FF0000'
```

You can also separately set a different background color `g:srcery_background`,
instead of the default `g:srcery_black`

>[!TIP]
> Setting this variable to `'NONE'` will make the background inside vim transparent

### Options

|var|description|default|
|---|-----------|-------|
| `g:srcery_bold`| Enables **bold** text | `1` (enabled) |
| `g:srcery_italic`| Enables *italic* text | `1` (enabled) |
| `g:srcery_underline`| Enables <ins>underlined</ins> text | `1` (enabled) |
| `g:srcery_undercurl` | Enables undercurled text | `1` (enabled) |
| `g:srcery_strikethrough` | Enables ~~strikethrough~~ text | `1` (enabled) |
| `g:srcery_inverse` | Enables inverse highlighting for visual selection, search, etc | `1` (enabled) |
| `g:srcery_guisp_fallback` | Use alternate highlighting where colored underline/undercurl is unsupported. Set to either `'fg'` or `'bg'`, or `'NONE'` | `NONE` |
| `g:srcery_normal_float` | Use srcery colors for floating window background and border | `0` (disabled) |


## Statusline

Srcery supports several statuslines, they all follow the same coloring scheme
with some minor differences.

![statusline preview](https://raw.githubusercontent.com/srcery-colors/srcery-assets/refs/heads/next/vim/statusline.png) 

- [Lualine](https://github.com/nvim-lualine/lualine.nvim) loads automatically.
- [Airline](https://github.com/vim-airline/vim-airline) loads automatically.
- [Lightline](https://github.com/itchyny/lightline.vim). To use it, include
  `srcery` value in your `lightline` configuration:
  ```vim
  let g:lightline = { 'colorscheme': 'srcery' }
  ```
  ```lua
  vim.g.lightline = { colorscheme = 'srcery' }
  ```


## Attribution

This project started as essentially a palette swap of
[Gruvbox](https://github.com/morhetz/gruvbox). Srcery has since taken a life of
its own, but the DNA of Gruvbox is still present. Big thank you to morhetz and
other contributors.

Aside from Gruvbox, these themes have also been an inspiration, and often been
an example on how to write (n)vim color schemes.

- [nordtheme/vim: An arctic, north-bluish clean and elegant Vim theme.](https://github.com/nordtheme/vim)
- [bluz71/vim-moonfly-colors: A dark charcoal theme for modern Neovim & classic Vim](https://github.com/bluz71/vim-moonfly-colors)
- [sjl/badwolf: A Vim color scheme.](https://github.com/sjl/badwolf)
- [nanotech/jellybeans.vim: A colorful, dark color scheme for Vim.](https://github.com/nanotech/jellybeans.vim)
- [tomasr/molokai: Molokai color scheme for Vim](https://github.com/tomasr/molokai)
- [romainl/flattened: Solarized, without the bullshit.](https://github.com/romainl/flattened)
- [romainl/Apprentice: A dark, low-contrast, Vim colorscheme.](https://github.com/romainl/Apprentice)

## License

Copyright (c) 2018 for portions of Srcery are held by morhetz as part of Gruvbox.

All other Copyright (c) 2021 for Srcery are held by Daniel Berg and contributors of Srcery.

[MIT License](./LICENSE)
