# Bricks Pricing Page Element Contract

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `button`

## Structure

- Pricing cards use editable `block` elements, headings, text, and buttons.
- Comparison rows use nested `block` rows/cells, not raw tables unless the compiler route supports them.
- FAQ items use editable text blocks.

## Bricks Rules

- Use BEM blocks such as `pricing`, `compare`, `support`, `faq`, and `cta`.
- Do not insert unsupported checkout scripts or payment embeds.
- Do not output raw HTML tables.
