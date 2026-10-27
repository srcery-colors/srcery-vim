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
160 retain the same palette arguments; eight UI/error definitions change.
Error and ErrorMsg use exact canonical red `#EF2F27` with dark text (4.5861:1).
PmenuSel uses exact canonical bright green `#98BC37` with dark text (8.6076:1),
without inverse and with a dark underline as the selection-state cue.
The green fill alone is only 1.6757:1 against the unselected menu background;
the underline has 8.6076:1 against green. Disabling underline requires a new
selection-state audit. This is a new explicit popup selection choice; the unchanged
dark popup defaults to neutral cream. Border, inactive cursor and pager
foreground fixes remain. Normal syntax families, all links and other inverse
attributes are preserved. Dedicated `g:srcery_light_error_red` and
`g:srcery_light_selection_green` values keep these UI surfaces separate from
the contrast-adjusted syntax foregrounds.

The corrected candidate's audited minimum text contrast is 4.5861:1 in GUI
colors and 4.6714:1 in fixed 256-color approximations. Non-text indicators
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

The generator, all five development iterations, full contrast data, provenance
hashes and side-by-side dark/light specimens live in the companion canonical
`srcery-palette` change under `light/`. See `tests/README.md` for self-contained
headless verification.

Revision 05 retains the parchment background, uses source-dependent foreground
contrast goals to widen regular/bright spacing, and lightens secondary neutral
and diff backgrounds. Hue and saturation stay derived from canonical RGB.
The bright roles become deeper on light surfaces; they retain their syntax
assignments. The complete rationale and comparisons are in the palette PR.
