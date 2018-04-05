A BTTextEntry is an editable text display without background.

### Internals
Cursor and selectionBound range from 0 (before first glyph) to `self text size` (behind last glpyh), so there are n+1 possible cursor locations.