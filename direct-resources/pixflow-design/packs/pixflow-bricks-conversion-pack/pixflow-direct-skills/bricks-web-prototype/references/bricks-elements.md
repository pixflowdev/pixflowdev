# Bricks Web Prototype Element Contract

Use the Bricks Builder skill rules for page JSON.

## Allowed Elements

- `section`, `container`, `block`, `div`
- `heading`, `text-basic`, `text`, `button`, `image`, `icon`, `svg`
- `nav-menu`, `divider`, `video`

## Required Bricks Discipline

- `section > container > content` hierarchy.
- Flat responsive override keys.
- In Pixflow Stage B, `bricks-baseline-result.json` is the first-pass Bricks payload when present. Refine it instead of rebuilding the page from scratch.
- Preserve baseline element ids, class ids, `_attributes`, responsive keys, image refs, page settings, and header/footer split unless source comparison or local QA identifies a concrete error.
- Generated global-class IDs in `_cssGlobalClasses`.
- `_cssGlobalClasses` is a flat array of class ID strings. Do not put objects in this array.
- Short BEM names.
- Preserve runtime `data-*`, `aria-*`, and source anchor `id` attributes with Bricks `_attributes` arrays.
- Do not set Bricks `_cssId` in Pixflow Stage B. Source anchor IDs belong in `_attributes`.
- Put source-level JavaScript in Bricks page settings (`page_settings` and `stage_b_page_settings`), preferably `customScriptsBodyFooter`, as a complete `<script>...</script>` block. Do not use Bricks `code` elements for Stage B JavaScript.
- No raw HTML, script tags, imported CSS, or unsupported Bricks elements.

## Pixflow Stage B Baseline Cleanup

- Start from `bricks-baseline-result.json`, `bricks-baseline-payload.json`, `bricks-baseline-header-payload.json`, `bricks-baseline-footer-payload.json`, and `bricks-baseline-global-classes.json` when they exist.
- Read `stage-b-baseline-report.md` before editing; it explains what the clean-room compiler preserved and what remains risky.
- Cleanup should target semantic Bricks improvements, sidecar synchronization, route/theme-style compliance, header/footer template correctness, responsive fidelity, icons, radius, row flex controls, marquee rhythm, and stat-ring structure.
- Do not translate every CSS selector into Bricks settings. Keep `_cssCustom` for source-only effects, reveal behavior, keyframes, collage details, and other behavior Bricks controls cannot express.
- Rebuild visible pseudo-element details such as label rules, timeline lines, and small dividers as editable Bricks child elements when practical. Use `%root%::before`/`%root%::after` only for non-structural source effects that cannot be expressed safely in Bricks elements, and never for token buckets or page-wide overlays.
- Do not delete responsive suffixed keys such as `_gridTemplateColumns:tablet_portrait`, `_display:mobile_landscape`, or `_padding:mobile_portrait` unless they contradict Stage A.

## Bricks Value Shapes

- Use underscore controls: `_display`, `_direction`, `_flexWrap`, `_alignItems`, `_justifyContent`, `_columnGap`, `_rowGap`, `_gridTemplateColumns`, `_background`, `_typography`, `_border`, `_padding`, `_margin`, `_width`, `_widthMin`, `_widthMax`, `_height`, `_heightMin`, `_heightMax`, `_aspectRatio`, and `_objectFit`.
- Do not emit unprefixed style keys such as `display`, `direction`, `fontSize`, `background`, `padding`, or `border`.
- Number/unit controls are scalar strings such as `"24px"` or `"clamp(24px, 4vw, 64px)"`, not `{ "value": 24, "unit": "px" }` objects.
- Typography belongs under `_typography`; root font/color keys are unsafe.
- Font families belong under `_typography["font-family"]`. Preserve source font roles from `stage-b-font-system.json`; do not load fonts through `<link>`, CSS `@import`, `fonts.googleapis.com`, `fonts.gstatic.com`, or `@font-face` in Bricks payloads.
- Icon controls use Pixflow Tabler SVG placeholders from `stage-b-icon-system.json`; do not use Bricks Font Awesome page icons for Stage B conversion.
- Custom SVG icon styling uses nested `settings.icon` style controls on a global class, not `iconSize` or `iconColor`.
- Flex-only controls such as `_direction` and `_flexWrap` require `_display: "flex"` or `_display: "inline-flex"` on the same element/class.
- Grid controls such as `_gridTemplateColumns` require `_display: "grid"` on the same element/class.
- Plain external links use `{ "type": "external", "url": "https://..." }`; do not use `type: "url"`.
- `_cssCustom` must contain complete selector blocks. Bare declarations are dropped by Bricks.

## Attribute Contract

Use `_attributes` on the target Bricks element:

```json
{
  "_attributes": [
    { "id": "abcxyz", "name": "data-reveal" },
    { "id": "defuvw", "name": "data-second", "value": "false" }
  ]
}
```

Do not include copied-element metadata such as `source`, `sourceUrl`, or `version`.

## Page Script Contract

Use Bricks page settings for safe source JavaScript:

```json
{
  "page_settings": {
    "customScriptsBodyFooter": "<script>console.log()</script>"
  },
  "stage_b_page_settings": {
    "customScriptsBodyFooter": "<script>console.log()</script>"
  }
}
```

Do not use Bricks `code` elements for Pixflow Stage B JavaScript.

## Icon Contract

- Copy `stage-b-icon-system.json` into `bricks-result.json.stage_b_icon_system` when present and any sidecar icon is used.
- Use `tabler-outline` by default. Use `tabler-filled` only when the source icon is clearly filled.
- Pixflow rewrites placeholders to Bricks custom SVG icon controls during insertion, for example:

```json
{
  "library": "custom_pixflow-icon-set-tabler-outline",
  "svg": {
    "id": 63534,
    "icon_id": "icon_tabler_outline_heart",
    "url": "https://example.com/wp-content/uploads/pixflow-ai/icon-sets/tabler-outline/outline/heart.svg"
  }
}
```

- Button icons belong on the button element:

```json
{
  "name": "button",
  "settings": {
    "text": "Start a run",
    "icon": { "library": "pixflowSvg", "icon": "pixflow:tabler-outline:arrow-up-right" },
    "iconPosition": "right"
  },
  "children": []
}
```

- Standalone source markers use the Bricks `icon` element:

```json
{
  "name": "icon",
  "settings": {
    "icon": { "library": "pixflowSvg", "icon": "pixflow:tabler-outline:sparkles" },
    "_cssGlobalClasses": ["gc_marker_icon"]
  },
  "children": []
}
```

- Style standalone SVG icons through a global class with nested `settings.icon`:

```json
{
  "id": "gc_marker_icon",
  "name": "marker-icon",
  "settings": {
    "icon": {
      "height": "2rem",
      "width": "2rem",
      "stroke": { "raw": "var(--accent)", "light": "#ef6b4d" },
      "strokeWidth": "2"
    }
  }
}
```

- Filled icons use `fill` instead of `stroke`; deliberate special cases may use both `stroke` and `fill`.
- Do not use `iconSize` or `iconColor` for Pixflow SVG icons. Those controls are for regular font icons.
- Use the Bricks `svg` element only for an SVG media/control element, with `source: "iconSet"` and `iconSet` using the same Pixflow placeholder.
- Do not paste raw `<svg>` icon markup into `code`, `text`, or `_cssCustom`.

## Header/Footer Template Contract

- Bricks headers and footers are separate `bricks_template` posts, not normal page content.
- Header templates use `_bricks_template_type = "header"` and their element tree belongs in the Bricks header area.
- Footer templates use `_bricks_template_type = "footer"` and their element tree belongs in the Bricks footer area.
- Template assignment conditions live in `_bricks_template_settings.templateConditions`.
- Entire website condition: `[{ "main": "any" }]`.
- Current-page-only condition: `[{ "main": "ids", "ids": [pageId], "idsIncludeChildren": false }]`.
- Exclusions use the same shape with `"exclude": true`.
- Writing header/footer elements to a regular page has no visible effect; create a template and conditions instead.
- For Pixflow Stage B, keep approved header elements separate from page content in `stage_b_header.content`; Pixflow creates the Bricks template and conditions during insertion.
- If Stage A has a distinct footer, apply the same flow immediately after header: keep approved footer elements separate from page content in `stage_b_footer.content`; Pixflow creates the Bricks footer template and conditions during insertion.
- Header/footer template root sections must set source-accurate top/bottom padding explicitly on the element or a global class. Do not let generic page section theme styles inflate compact topbar, nav, or footer template bands.
- Header inner wrappers must use explicit Bricks flex settings on the element itself, not only class CSS: `_display: "flex"`, `_direction: "row"`, `_alignItems`, `_justifyContent`, `_columnGap`, and `_rowGap`.
- Use `nav-menu` for real Bricks/WordPress navigation menus when a menu source is available.
- Keep CTA actions as `button` elements.
- Fallback header nav/action blocks must use explicit Bricks flex settings on the element itself: `_display: "flex"`, `_direction: "row"`, `_flexWrap: "wrap"`, `_alignItems`, `_justifyContent`, `_columnGap`, and `_rowGap`.
- Add responsive suffixed layout keys where the header changes direction on smaller viewports, for example `_direction:mobile_portrait`.
- Multi-column Bricks grids must use responsive `_gridTemplateColumns:tablet_portrait` or `_gridTemplateColumns:mobile_portrait` keys for column collapse. Do not rely only on `_cssCustom` media queries for responsive grid behavior.

## Color And Class Contract

- Reuse staged variables, color palettes, and global classes before creating new ones.
- Bricks element/class color settings may use `{ "raw": "var(--token)" }`.
- Native Bricks palette entries for Stage B design systems should use token-backed rows: `raw: "var(--token)"`, token `name`, and literal `light` fallback color.
- Do not create `.od-root`, `*-root`, or token bucket classes whose purpose is to declare `--od-*` variables.
- Components and theme styles are not first-pass Stage B tools unless the user explicitly asks; they have wider site effects.

## Font Contract

- Copy `stage-b-font-system.json` into `bricks-result.json.stage_b_font_system` when present.
- Pixflow installs Google Fonts into Bricks custom fonts before insertion; the model must not import or declare font files itself.
- Keep display, body, mono, and serif emphasis roles distinct when Stage A used distinct families.
- Use scoped `%root% em` or span CSS for inline serif/italic emphasis in otherwise sans headings.

## Placeholder Discipline

- Wireframe mode: grey labelled blocks.
- High-fidelity mode: polished editable Bricks surfaces.
- Real screenshot requested as media: use `image` with supplied attachment.
- Product UI requested: use editable Bricks blocks first.
