#!/usr/bin/env python3
"""Validate Srcery Light in both editors from this checkout alone."""

import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile


ROOT = Path(__file__).resolve().parents[1]
UI_FIXES = {'Error': 'black', 'ErrorMsg': 'black', 'PmenuBorder': 'bright_black',
            'FloatBorder': 'bright_black', 'TermCursorNC': 'bright_black',
            'NvimPagerFG_black_BG_': 'bright_white', 'NvimPagerFG_black_BG__bold': 'bright_white'}


def validate(output):
    output.mkdir(parents=True, exist_ok=True)
    source = (ROOT / 'colors/srcery-light.vim').read_text()
    palette = json.loads((ROOT / 'tests/light-palette.json').read_text())
    exceptions = dict(UI_FIXES)
    if 'error_red' in palette:
        exceptions.update(Error='bright_white', ErrorMsg='bright_white', PmenuSel='bright_white')
    names = set(re.findall(r"call s:HL\('([^']+)'", source))
    for pair in re.findall(r'^\s*hi! link (\S+) (\S+)', source, re.M):
        names.update(pair)
    groups = output / 'groups.json'
    groups.write_text(json.dumps(sorted(names)))
    for editor in ('vim', 'nvim'):
        executable = shutil.which(editor)
        if not executable:
            raise RuntimeError(f'{editor} is required')
        env = {**os.environ, 'SRCERY_LIGHT_ROOT': str(ROOT),
               'SRCERY_LIGHT_GROUPS': str(groups),
               'SRCERY_LIGHT_DUMP': str(output / f'{editor}-highlights.json'),
               'SRCERY_LIGHT_SELECTION_UNDERLINE': '1' if "call s:HL('PmenuSel', s:bright_white, s:selection_green, s:underline)" in source else '0',
               'SRCERY_LIGHT_UI_FIXES': json.dumps(exceptions)}
        if editor == 'nvim':
            env.pop('VIMRUNTIME', None)
        args = [executable, '-Nu', 'NONE', '-i', 'NONE', '-n']
        args += ['--headless'] if editor == 'nvim' else ['-es']
        args += ['-S', str(ROOT / 'tests/light.vim')]
        result = subprocess.run(args, env=env, text=True, capture_output=True, timeout=40)
        (output / f'{editor}.log').write_text(result.stdout + result.stderr)
        if result.returncode:
            raise RuntimeError(f'{editor} validation failed: {output}')
        print(f'{editor}: passed (GUI and cterm, switching, mappings, overrides, syntax)')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    if args.output:
        validate(args.output.resolve())
    else:
        with tempfile.TemporaryDirectory(prefix='srcery-light-') as directory:
            validate(Path(directory))


if __name__ == '__main__':
    main()
