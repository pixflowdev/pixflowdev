# Bricks Product Spec Element Contract

- Use `section`, `container`, `block`, `heading`, `text-basic`, `button`, and `image` only when each element has editable content or a clear product-spec role.
- Build PRD summaries, requirement groups, roadmap rows, decision logs, user-story panels, scope tables, and risk notes as editable Bricks blocks, not raw HTML tables or static screenshots.
- Keep dense requirement rows as labelled `block` groups with `text-basic` label, status, owner, priority, and note children so mobile stacking is safe.
- Buttons keep Bricks `style` values where possible and use Pixflow Framework button tokens for radius, border, and readable text.
- Use short BEM classes scoped to the generated section, such as `pm-spec__summary`, `pm-spec__requirement`, and `pm-spec__decision`.
- In Pixflow Framework mode, sections do not set routine top/bottom padding and containers do not set routine left/right padding; Bricks Theme Style owns those defaults.
- Use `_cssCustom` only for unsupported visuals such as pseudo-elements, flow connectors, or layered document accents.
- Never invent product decisions, delivery dates, engineering commitments, user research, owners, names, or roadmap facts when the prompt does not supply them.
