# Bricks Custom Elements

- Custom elements are a child-theme concern and must not edit the parent Bricks theme.
- A custom element extends `\Bricks\Element`.
- Registration uses `\Bricks\Elements::register_element()` on `init` priority 11.
- Direct Generation should not require new PHP custom elements for normal page output.
- If a requested feature needs a custom element, plan it as a separate implementation task rather than silently emitting unsupported Bricks JSON.
