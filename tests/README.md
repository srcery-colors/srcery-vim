# Srcery Light validation

Run from a checkout with Python 3, Vim and Neovim on `PATH`:

```sh
python3 tests/run-light.py
```

This is self-contained: it does not require an adjacent srcery-palette checkout.
`light-palette.json` is a generated test snapshot of the canonical light candidate;
the companion srcery-palette generator updates it together with the theme.
The production colorscheme does not read this JSON or require Python.

Use `--output /path/to/results` to retain resolved highlight/syntax JSON and logs.
By default, temporary capture files are removed after the test finishes.

`light.vim` checks both GUI and cterm attributes, loading with and without
`termguicolors`, direct foreground mappings including Neovim-only definitions,
language and diagnostic links, dark/light switching, emphasis options, a color
override, float backgrounds, and terminal ANSI exports. The four fixtures are
syntax specimens, not language compiler test cases. `capture.vim` records actual
syntax IDs and resolved groups for rendering comparison reports. `dark.vim`
captures the unchanged dark theme with basic background/foreground assertions.

The existing lint workflow runs Vint and installs both editors to run these
headless assertions. Tree-sitter link targets are checked; a Tree-sitter parser
is not installed or exercised by these tests.
