# Bricks Local Service Style Spec Contract

## Token Rules

- Section backgrounds use `var(--background)`.
- Panels, service cards, quote cards, and form mockups use `var(--foreground)`.
- Borders use `var(--border)`.
- Images and cards use `var(--radius--surface)` and `var(--border--surface)`.
- Buttons, badges, and form-like fields use `var(--radius--btn)` and `var(--border--btn)`.
- Required visible dividers use `max(var(--border--btn), 1px)`.

## Layout Style Rules

- Keep local service pages calm and practical.
- Use accent for CTAs, small dividers, or one proof cue, not every card heading.
- Contact sections should be mobile-first with clear stacking.

## Style Spec Example

```json
{
  "class_name": "process__step",
  "declarations": [
    { "property": "background-color", "value": "var(--foreground)" },
    { "property": "border", "value": "max(var(--border--btn), 1px) solid var(--border)" },
    { "property": "border-radius", "value": "var(--radius--surface)" },
    { "property": "padding", "value": "var(--space--l)" }
  ]
}
```
