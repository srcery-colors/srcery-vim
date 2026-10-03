# Srcery Light candidate

Srcery Light adapts the canonical Srcery hue families to a warm parchment
background, `#FCE8C3`, while retaining the existing syntax relationships.
It is an opt-in candidate for visual review.

```vim
set termguicolors
colorscheme srcery-light
```

The colorscheme is standalone. It requires neither Python nor the palette
repository at runtime. `set background=light` alone still selects no automatic
light variant; explicitly load `srcery-light`.

Color overrides and options follow the existing names with a light namespace:
`g:srcery_light_red`, `g:srcery_light_background`, `g:srcery_light_bold`,
`g:srcery_light_italic`, `g:srcery_light_inverse`,
`g:srcery_light_normal_float`, and the other corresponding options.
Set overrides before loading. Custom values need their own contrast check.

The light defaults are isolated from `g:srcery_*`, so ordinary dark/light
switching does not preserve the wrong palette defaults. Terminal ANSI exports
are overwritten by whichever scheme is active, as in the original theme.
Some global rainbow plugin settings also remain shared and may retain user or
previously installed defaults. This is not complete plugin state isolation.

All 232 explicit highlight links are retained. Of 168 direct highlight calls,
161 retain the same palette arguments; seven receive necessary foreground
corrections for error text, borders, the inactive cursor, and black pager text.
All normal syntax families and inverse attributes are preserved.

The corrected candidate's audited minimum text contrast is 4.5519:1 in GUI
colors and 4.5554:1 in fixed 256-color approximations. Non-text indicators
use a 3:1 target. These are measured default color pairs, not a claim that
all possible plugins, terminal applications or custom settings meet WCAG.

Use `termguicolors` for the reviewed RGB colors. Fixed cterm slots 16–255
avoid relying on the terminal's configurable 16 ANSI colors, but reduce hue
fidelity. Terminal black and bright white retain their existing role slots,
now representing a light surface and dark text respectively; applications
assuming black always means a dark foreground can need separate treatment.

Separate airline, lightline, clap and lualine themes are not added by this
initial implementation. Their existing `srcery` themes read dark globals;
do not assume they select the light palette automatically.

The generator, both development iterations, full contrast data, provenance
hashes and side-by-side dark/light specimens live in the companion canonical
`srcery-palette` change under `light/`. See `tests/README.md` for self-contained
headless verification.
