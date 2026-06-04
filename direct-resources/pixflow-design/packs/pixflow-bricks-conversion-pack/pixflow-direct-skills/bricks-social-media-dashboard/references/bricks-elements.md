# Bricks Social Media Dashboard Element Contract

- Use `section`, `container`, `block`, `heading`, `text-basic`, `button`, and `image` only when each element has editable content or a clear dashboard role.
- Build channel overviews, content calendars, campaign rows, insight panels, status chips, chart placeholders, and workflow tables as editable Bricks blocks, not raw HTML tables or static screenshots.
- Keep dense dashboard rows as labelled `block` groups with `text-basic` channel, metric, status, date, and note children so mobile stacking is safe.
- Buttons keep Bricks `style` values where possible and use Pixflow Framework button tokens for radius, border, and readable text.
- Use short BEM classes scoped to the generated section, such as `social-dashboard__metric`, `social-dashboard__row`, and `social-dashboard__campaign`.
- In Pixflow Framework mode, sections do not set routine top/bottom padding and containers do not set routine left/right padding; Bricks Theme Style owns those defaults.
- Use `_cssCustom` only for unsupported visuals such as chart bars, pseudo-elements, or layered dashboard accents.
- Never invent real handles, comments, engagement metrics, platform connections, live data, client names, or campaign results when the prompt does not supply them.
