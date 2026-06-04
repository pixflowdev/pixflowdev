# Bricks Responsive Breakpoint Syntax

- Responsive overrides are stored in the same flat settings object.
- Use `setting:breakpoint_key`, for example `_padding:tablet_portrait`.
- Default breakpoint keys are `desktop`, `tablet_portrait`, `mobile_landscape`, and `mobile_portrait`.
- Base settings have no suffix.
- Do not nest responsive values under breakpoint objects.
- Any element setting can be suffixed, including spacing, typography, direction, grid columns, and sizing.
- Prefer desktop/base first in the current Direct Generation compiler unless the site has explicitly reported mobile-first breakpoints.
- Common responsive rules:
  - multi-column grids collapse to one column at `mobile_landscape`
  - split layouts change `_direction` from `row` to `column`
  - large section padding steps down at tablet and mobile
  - button rows can become columns on `mobile_portrait`
