# Bricks Services Page Element Contract

Use Bricks-native output only.

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`, `image`

## Service Structures

- Service overview: grid or bento `block` cards with heading, description, and fit/outcome details.
- Featured service: split `block` layout with copy on one side and benefits/proof panel on the other.
- Process: numbered blocks or timeline rows.
- Objections: FAQ-like blocks, not unsupported accordion elements in this compiler pass.

## Bricks Rules

- Use generated global classes for all reusable styling.
- Keep BEM names short: `services`, `services__card`, `process__step`, `faq__item`.
- Use Bricks color objects for token colors.
- Do not output unsupported Bricks elements, raw HTML, raw SVG, or empty media shells.
