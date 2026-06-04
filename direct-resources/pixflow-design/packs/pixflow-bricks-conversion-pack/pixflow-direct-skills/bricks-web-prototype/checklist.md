# Bricks Web Prototype Checklist

## P0

- [ ] The output is Bricks section/style specs, not raw HTML as the final target.
- [ ] If Pixflow Stage B `bricks-baseline-*` files exist, the final payload starts from that baseline and only applies targeted corrections; it is not regenerated from scratch.
- [ ] A section rhythm is chosen before copy.
- [ ] The page does not use the same layout family twice in a row.
- [ ] No invented metrics, testimonials, logos, or fake product claims.
- [ ] Pixflow tokens and Bricks object shapes are used.
- [ ] `_cssGlobalClasses` contains class ID strings only.
- [ ] Flex/grid controls have the required `_display` value on the same element or class.
- [ ] No copied-element metadata (`source`, `sourceUrl`, `version`) is present in model output.
- [ ] Stage B design-system palette rows use `raw: "var(--token)"`, token names, and literal `light` fallbacks.
- [ ] If `stage-b-font-system.json` exists, it is copied into `bricks-result.json.stage_b_font_system` and no Google font imports, font URL injections, or ad hoc `@font-face` rules are emitted.
- [ ] If `stage-b-icon-system.json` exists, it is copied into `bricks-result.json.stage_b_icon_system`; source/action icons use Pixflow Tabler SVG placeholders, not Font Awesome classes or raw SVG code.
- [ ] Pixflow SVG icon styling uses nested global-class `settings.icon` controls (`height`, `width`, `stroke`/`fill`, optional `strokeWidth`), not `iconSize` or `iconColor`.
- [ ] Header/footer content is separated into template payloads when requested, with template conditions handled by Pixflow insertion.
- [ ] Header/footer template root sections explicitly set source-accurate top/bottom padding so page section theme styles cannot inflate template bands.
- [ ] Multi-column Bricks grids use responsive `_gridTemplateColumns:*` keys for tablet/mobile collapse, not only `_cssCustom` media queries.
- [ ] Baseline ids, class ids, `_attributes`, responsive breakpoint settings, image refs, page settings, and header/footer split are preserved unless source comparison or local QA proves a concrete error.
- [ ] No Bricks `code` elements or `_cssId` values are emitted in Pixflow Stage B output; safe source JavaScript is stored in `page_settings` and `stage_b_page_settings`.

## P1

- [ ] The first screen has one strong visual thesis.
- [ ] Reference screenshots influence hierarchy and spacing without being copied as fragile decorative CSS.
- [ ] Media placeholders are honest and labelled.
- [ ] If a real navigation menu is available, header navigation uses `nav-menu`; CTA actions remain buttons.
- [ ] Stage A `data-*` attributes and safe motion scripts are preserved through `_attributes` plus Bricks page settings.
- [ ] Stage A font roles are preserved: display/heading, body, mono/code, and serif/italic emphasis remain distinct when the source used distinct families.
- [ ] Source border radius, horizontal row wrappers, button icons, card/proof icons, and marquee rhythm are preserved where present.

## P2

- [ ] Mobile order is clear and readable.
- [ ] `_cssCustom` is limited to selectors/effects Bricks controls cannot express.
