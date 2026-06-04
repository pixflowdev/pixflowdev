# Bricks Base Controls And Value Shapes

- Spacing uses four-side objects: `_padding` and `_margin` with `top`, `right`, `bottom`, `left`.
- Typography uses `_typography` with CSS-like keys such as `font-size`, `font-weight`, `line-height`, `letter-spacing`, `text-align`, `text-transform`, and `color`.
- Color values must be objects: `{ "hex": "#111111" }`, `{ "rgb": "rgba(...)" }`, or `{ "raw": "var(--token)" }`.
- Do not output `{ "hex": null }` as a placeholder. Omit the color or use a valid token object.
- Background color belongs under `_background.color`.
- Border uses `_border` with `width`, `style`, `color`, and `radius`.
- Border `width` should be a four-side object.
- Border `radius` should be a four-side object.
- Box shadow uses `_boxShadow.values` plus a color object.
- Sizing keys include `_width`, `_widthMin`, `_widthMax`, `_height`, `_heightMin`, `_heightMax`, and `_aspectRatio`.
- Overflow uses `_overflow`; media frames and images that crop should use `_overflow: hidden`.
- Custom classes use `_cssClasses` with no dot. Global classes use `_cssGlobalClasses` with class ids.
- `%root%` in `_cssCustom` resolves to the rendered Bricks element selector.
- Direct Generation must use Bricks settings first. Advanced CSS that Bricks cannot express, such as pseudo-elements, transforms, layered gradients, filters, or collage-specific effects, must be routed to scoped `_cssCustom` instead of being dropped.
- In Pixflow Framework mode, do not use `_cssCustom` or per-element settings for routine section Y padding, container inline gutters, default body type, default heading/text colour, or default button styling. Those belong to Bricks Theme Style / Pixflow Framework controls.
- Buttons should keep Bricks button `style` / type values where practical. Use scoped custom CSS only for one-off visual extras that Bricks button controls cannot express.
- Unsupported or unsafe CSS intent must be repaired before compile; generated output must not silently lose requested visual details.
