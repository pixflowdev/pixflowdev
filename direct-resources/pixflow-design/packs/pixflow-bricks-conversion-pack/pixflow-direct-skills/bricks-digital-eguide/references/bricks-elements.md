# Bricks Digital Eguide Element Contract

- Use `section`, `container`, `block`, `heading`, `text-basic`, `button`, and `image` only when each element has editable content or a clear layout role.
- Build guide covers, preview sheets, checklists, tables, matrices, caveat panels, and action panels as editable Bricks blocks, not raw HTML tables or static screenshots.
- Keep dense rows as labelled `block` groups with `text-basic` label, value, and note children so mobile stacking is safe.
- Buttons keep Bricks `style` values where possible and use Pixflow Framework button tokens for radius, border, and readable text.
- Use short BEM classes scoped to the generated section, such as `guide-hero__surface`, `guide-hero__row`, and `guide-hero__note`.
- In Pixflow Framework mode, sections do not set routine top/bottom padding and containers do not set routine left/right padding; Bricks Theme Style owns those defaults.
- Use `_cssCustom` only for unsupported visuals such as pseudo-elements, document-page accents, or layered cover effects.
- Never invent author names, download counts, proof, testimonials, certifications, or guide statistics when the prompt does not supply them.
