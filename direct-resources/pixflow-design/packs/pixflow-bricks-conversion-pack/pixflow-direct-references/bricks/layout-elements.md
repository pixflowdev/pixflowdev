# Bricks Layout Elements

- Use `section` for top-level page slices.
- Use `container` as the constrained inner wrapper inside a section.
- Use `block` for cards, panels, lists, columns, and reusable content groups.
- Use `div` only for lightweight wrappers when semantics do not matter.
- Preferred structure: `section > container > block/content`.
- Avoid unnecessary wrappers; each nestable element creates DOM.
- Use modern flex/grid controls instead of legacy `_columnCount`.
- Flex keys: `_display`, `_direction`, `_flexWrap`, `_alignItems`, `_justifyContent`, `_columnGap`, `_rowGap`.
- Grid keys: `_display: grid`, `_gridTemplateColumns`, `_gridTemplateRows`, `_gridAutoFlow`, `_columnGap`, `_rowGap`.
- Responsive layout changes use flat suffixed keys such as `_gridTemplateColumns:tablet_portrait`.
