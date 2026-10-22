#!/usr/bin/env python3
"""Srcery: warm accents on parchment."""
from dataclasses import dataclass

# Keep canonical hue families and syntax relationships.
@dataclass(frozen=True)
class Color:
    name: str
    channels: tuple[int, int, int]

def luminance(color: Color) -> float:
    weights = (0.2126, 0.7152, 0.0722)
    return sum(c * w for c, w in zip(color.channels, weights))

if __name__ == "__main__":
    print(f"Background: {'#FCE8C3'}")
    enabled = True
    missing = None
    # TODO: visually review before committing.
