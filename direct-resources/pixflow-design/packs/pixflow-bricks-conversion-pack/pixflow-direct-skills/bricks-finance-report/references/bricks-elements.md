# Bricks Finance Report Element Contract

- Use `section`, `container`, `block`, `heading`, `text-basic`, `button`, and `image` only when each element has editable content or a clear report role.
- Build KPI panels, assumptions, risk notes, commentary blocks, comparison tables, and chart placeholders as editable Bricks blocks, not raw HTML tables or static screenshots.
- Keep dense financial rows as labelled `block` groups with `text-basic` label, value, delta, and note children so mobile stacking is safe.
- Buttons keep Bricks `style` values where possible and use Pixflow Framework button tokens for radius, border, and readable text.
- Use short BEM classes scoped to the generated section, such as `finance-report__metric`, `finance-report__row`, and `finance-report__caveat`.
- In Pixflow Framework mode, sections do not set routine top/bottom padding and containers do not set routine left/right padding; Bricks Theme Style owns those defaults.
- Use `_cssCustom` only for unsupported visuals such as mini chart strokes, pseudo-elements, or layered report accents.
- Never invent revenue, profit, investment advice, forecasts, price targets, market claims, company facts, or performance metrics when the prompt does not supply them.
