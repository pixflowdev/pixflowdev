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
