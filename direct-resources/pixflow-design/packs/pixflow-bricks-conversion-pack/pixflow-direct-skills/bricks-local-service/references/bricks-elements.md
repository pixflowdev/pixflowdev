# Bricks Local Service Element Contract

Use Bricks-native element names and control shapes.

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`, `image`

## Service Page Structure

- Service cards are `block` elements with heading and text children.
- Process steps are `block` or `div` items inside one timeline/list wrapper.
- Contact panels use `block` wrappers with text and button/link rows.
- Image elements are replaceable media, not decorative wrappers.

## Bricks Rules

- Responsive settings use suffix keys, not nested objects.
- Border, radius, color, and spacing values belong in generated global classes.
- Use `_cssCustom` only for scoped visual details that Bricks settings cannot express.
- No fake form fields unless the user explicitly requests a form mockup; real forms require a later form-specific compiler pass.
