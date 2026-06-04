# Bricks Services Page Style Spec Contract

## Token Rules

- Sections: `background-color: var(--background)`.
- Cards/panels: `background-color: var(--foreground)`.
- Borders: `border-color: var(--border)`.
- Cards/images/surfaces: `border-radius: var(--radius--surface)` and `border-width: var(--border--surface)`.
- Buttons/badges/fields: `border-radius: var(--radius--btn)` and `border-width: var(--border--btn)`.

## Style Rules

- Make the service overview scannable, but avoid identical card grids for every later section.
- Use one stronger visual hierarchy section after the overview.
- Use compact density for FAQ/objection sections and more spacious density for hero/featured sections.

## Style Spec Example

```json
{
  "class_name": "services__card",
  "declarations": [
    { "property": "background-color", "value": "var(--foreground)" },
    { "property": "border", "value": "var(--border--surface) solid var(--border)" },
    { "property": "border-radius", "value": "var(--radius--surface)" },
    { "property": "padding", "value": "var(--space--l)" }
  ]
}
```
