Solarized, without the bullshit.
================================

Unlike the original, these Vim colorschemes are guaranteed to give consistent results in the environments listed at the bottom of this document without littering your beautiful `vimrc` with useless crap or paging through hundreds of StackOverflow questions to make sense of the convoluted instructions.

## Requirements

### GUI

You don't need to do anything for these colorschemes to work in GVim or MacVim.

### TUI

Flattened's only requirement is the same as Solarized: that you change your terminal emulator's so-called "ASCII" colors to the one used by Solarized.

The exact method depends on your terminal emulator and can probably be found somewhere in Solarized's bullshit-ridden documentation. I'd suggest simply copying the values from this table and call it a day:

    HEX     TERMCOL   RGB
    ------- -------   -----------
    #002b36 brblack     0  43  54
    #cb4b16 brred     203  75  22
    #586e75 brgreen    88 110 117
    #657b83 bryellow  101 123 131
    #839496 brblue    131 148 150
    #6c71c4 brmagenta 108 113 196
    #93a1a1 brcyan    147 161 161
    #fdf6e3 brwhite   253 246 227
    #073642 black       7  54  66
    #dc322f red       220  50  47
    #859900 green     133 153   0
    #b58900 yellow    181 137   0
    #268bd2 blue       38 139 210
    #d33682 magenta   211  54 130
    #2aa198 cyan       42 161 152
    #eee8d5 white     238 232 213

## Installation

Put `flattened_dark` and/or `flattened_light` in `~/.vim/colors/` (on unix-like systems) or `%userprofile%\vimfiles\colors\` (on Windows).

## Configuration

What do you want to configure? It's a freaking colorscheme, dammit!

## Usage

To enable `flattened_dark`:

    :color flattened_dark

To enable `flattened_light`:

    :color flattened_light

If you like what you see and want to set flattened as your default colorscheme, add the relevant line to your `vimrc`:

    colorscheme flattened_light

or:

    colorscheme flattened_dark
