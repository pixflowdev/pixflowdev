# Bricks SaaS Landing Style Spec Contract

Use Bricks global-class settings first. Use scoped `_cssCustom` only for advanced styling that Bricks controls do not expose.

## Bricks Setting First

Map these properties into Bricks settings:

- layout: `display`, `flex-direction`, `grid-template-columns`, `gap`, `row-gap`, `column-gap`, `align-items`, `justify-content`
- sizing: `width`, `max-width`, `min-height`, `aspect-ratio`, `overflow`
- spacing: `padding`, `margin`
- color: `background-color`, `color`, `border-color`
- type: `font-size`, `font-weight`, `line-height`, `letter-spacing`, `text-transform`
- borders: `border`, `border-width`, `border-style`, `border-radius`

## Scoped Custom CSS

Route these to `_cssCustom` with `%root%`:

- browser chrome pseudo-details that need `position`, `inset`, or `transform`
- subtle collage rotations
- clipping or masking
- advanced background gradients
- local custom properties used only by that component

Never use external URLs, script syntax, imports, fixed positioning, or global selectors in `_cssCustom`.

## Pixflow Token Rules

- Sections use `background-color: var(--background)`.
- Cards, panels, mockup frames, form fields, and product UI surfaces use `background-color: var(--foreground)`.
- Neutral borders use `border-color: var(--border)`.
- Buttons, badges, and fields use `border-radius: var(--radius--btn)` and `border-width: var(--border--btn)`.
- Cards, images, mockup frames, and product surfaces use `border-radius: var(--radius--surface)` and `border-width: var(--border--surface)`.
- Visible dividers that must survive flat mode use `max(var(--border--btn), 1px)`.

## Section Style Spec Example

```json
{
  "class_name": "templates__card",
  "declarations": [
    { "property": "background-color", "value": "var(--foreground)" },
    { "property": "border", "value": "var(--border--surface) solid var(--border)" },
    { "property": "border-radius", "value": "var(--radius--surface)" },
    { "property": "padding", "value": "var(--space--m)" }
  ]
}
```
