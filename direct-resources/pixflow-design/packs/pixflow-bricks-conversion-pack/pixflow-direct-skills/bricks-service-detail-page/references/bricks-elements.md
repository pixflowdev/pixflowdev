# Bricks Service Detail Element Contract

Use Bricks-native JSON and the shared Pixflow Framework operating layer.

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`, `image`

## Structure

- Use `section > container` for every page slice.
- Use `block` for fit panels, inclusion panels, proof, process steps, FAQ items, and CTA bands.
- Use `image` only for supplied or clearly requested service media.

## Bricks Rules

- Keep generated classes short and page-scoped: `hero`, `fit`, `detail`, `process`, `faq`, `cta`.
- Do not use raw HTML, scripts, unsupported SVG, or empty wrappers.
- Use flat responsive overrides such as `_gridTemplateColumns:mobile_landscape`.
