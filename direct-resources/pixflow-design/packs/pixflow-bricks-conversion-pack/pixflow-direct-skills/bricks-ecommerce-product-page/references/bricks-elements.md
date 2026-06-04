# Bricks Ecommerce Product Element Contract

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`, `image`

## Structure

- Product media uses `image` only for supplied/requested visuals; otherwise use editable labelled blocks.
- Option chips, spec rows, and review items are Bricks blocks/text.
- Purchase buttons are Bricks buttons, not checkout embeds.

## Bricks Rules

- Use BEM blocks such as `product`, `benefits`, `specs`, `proof`, `faq`, and `buy`.
- Do not output raw ecommerce scripts, carts, or checkout HTML.
