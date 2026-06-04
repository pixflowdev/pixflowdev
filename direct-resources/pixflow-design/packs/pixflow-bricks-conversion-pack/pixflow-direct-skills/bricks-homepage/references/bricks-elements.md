# Bricks Homepage Element Contract

Use Bricks-native JSON and the Bricks Builder skill guidance.

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`, `image`

## Structure

- Use `section > container` for every page slice.
- Use `block` for cards, proof panels, visual frames, and repeated items.
- Use `div` for lightweight rows, chips, icon placeholders, and small UI detail groups.
- Use `image` only when the user supplied or requested a replaceable visual.

## Bricks Rules

- All responsive overrides stay flat: `_padding:tablet_portrait`, `_gridTemplateColumns:mobile_landscape`.
- Global classes are referenced by generated IDs in `_cssGlobalClasses`.
- Use short BEM names based on the section, such as `hero`, `hero__visual`, `overview__card`.
- No raw HTML sections, scripts, unsupported SVG elements, or empty wrappers.
