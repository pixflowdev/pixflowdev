# Bricks Homepage Style Spec Contract

Use Pixflow tokens and Bricks setting shapes.

## Token Placement

- Section backgrounds: `var(--background)`.
- Surface cards and panels: `var(--foreground)`.
- Neutral border color: `var(--border)`.
- Card/image radius: `var(--radius--surface)`.
- Card/image border width: `var(--border--surface)`.
- Button/badge/field radius: `var(--radius--btn)`.
- Button/badge/field border width: `var(--border--btn)`.

## Custom CSS Budget

Use scoped `_cssCustom` only for a purposeful detail:

- one editorial overlap
- one gentle collage transform
- one decorative divider
- one local pseudo-element

Do not add global CSS resets, external URLs, imports, or fixed elements.

## Style Spec Example

```json
{
  "class_name": "overview__feature",
  "declarations": [
    { "property": "background-color", "value": "var(--foreground)" },
    { "property": "border", "value": "var(--border--surface) solid var(--border)" },
    { "property": "border-radius", "value": "var(--radius--surface)" },
    { "property": "padding", "value": "var(--space--xl)" }
  ]
}
```
