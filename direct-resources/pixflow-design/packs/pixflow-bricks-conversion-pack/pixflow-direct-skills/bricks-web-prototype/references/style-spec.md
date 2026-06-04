# Bricks Web Prototype Style Spec Contract

## Bricks Settings First

Prefer Bricks settings for spacing, layout, type, background, border, radius, and sizing.

In Pixflow Stage B, the clean-room `bricks-baseline-*` files are the initial payload when present. Style work should refine that baseline by moving only high-value routine controls into Bricks settings and preserving source-specific `_cssCustom` for effects or selectors Bricks cannot express.

Use this ownership order:

1. Existing Bricks theme styles for defaults.
2. Existing global classes via `_cssGlobalClasses`.
3. Existing variables in Bricks color objects, for example `{ "raw": "var(--background)" }`.
4. New Pixflow Stage B variables, literal Bricks palette colors, and global classes when the source design needs them.
5. Raw one-off values only for non-systemic details such as a single transform, animation duration, or clip-path.
6. `_cssCustom` only when Bricks controls cannot express the design.

## Scoped Custom CSS

Use `_cssCustom` with `%root%` only for:

- simple transforms
- overlap/collage detail
- non-structural local pseudo-elements that cannot be represented as Bricks children
- clipping/masks
- advanced but safe backgrounds
- attribute-driven interaction styling, such as `[data-reveal]` and `[data-revealed="true"]`, when Stage A used those attributes

Do not remove baseline `_cssCustom` that preserves reveal behavior, marquee keyframes, collage detail, or source-only effects unless the equivalent Bricks settings or editable child elements are explicitly authored and verified.

Visible pseudo-element marks, including label rules, timeline lines, and decorative dividers, should become Bricks child elements where practical. Avoid `%root%::before` and `%root%::after` in final output except for genuinely unsupported non-structural effects, and never use them for token buckets or page-wide wrappers.

## Baseline Responsive Cleanup

- Preserve responsive suffixed Bricks keys generated from Stage A media queries, such as `_gridTemplateColumns:tablet_portrait`, `_gridTemplateColumns:mobile_landscape`, `_display:mobile_portrait`, and `_padding:mobile_portrait`.
- If a responsive baseline setting is wrong, correct the suffixed Bricks key directly instead of burying the fix only inside `_cssCustom`.
- Keep multi-column grid collapse, hidden nav rows, mobile gutters, and compact header/footer behavior visible in Bricks settings so local QA and the builder can inspect them.

## Interaction Preservation

- If Stage A uses `data-reveal`, preserve that attribute through Bricks `_attributes`.
- Add the reveal CSS through scoped `_cssCustom` on the owning section/global class.
- Put source-level JavaScript in Bricks page settings: `customScriptsHeader`, `customScriptsBodyHeader`, or preferably `customScriptsBodyFooter`.
- Do not use Bricks `code` elements for Pixflow Stage B JavaScript. Copy page scripts into `bricks-result.json.page_settings` and `bricks-result.json.stage_b_page_settings`.
- Include reduced-motion fallback when preserving entry animation behavior.
- Use Bricks interactions for native builder behaviors such as click, hover, enter-view, show/hide, scroll-to, and start-animation when the interaction schema is known. Do not guess unknown interaction event/action keys.

## Font Preservation

- Treat Stage A font imports and font role tokens as source evidence, not decorative suggestions.
- When `stage-b-font-system.json` exists, copy it into `bricks-result.json.stage_b_font_system` so Pixflow can install Google fonts through its Bricks custom font manager before insertion.
- Preserve distinct font roles: display/heading, body, mono/code, and serif/italic emphasis. Do not collapse them into one theme font when Stage A used separate families.
- Preserve source body and tag-level typography inheritance from the baseline. Do not remove Bricks `_typography` controls that were projected from Stage A `body`, heading, paragraph, link, or button selectors unless a source comparison proves the baseline is wrong.
- Use Bricks `_typography["font-family"]` on elements/global classes for visible font overrides. Use the installed Bricks custom font id when Pixflow supplies one; otherwise use the exact family name from the Stage A font system.
- Do not add Google Fonts `<link>`, CSS `@import`, `fonts.googleapis.com`, `fonts.gstatic.com`, or ad hoc `@font-face` in Bricks payloads. Pixflow/Bricks owns font loading.
- For mixed display headlines, keep editable heading/text content and style inline `em` or span emphasis with scoped `%root%` CSS using the installed family name.
- If a source font is proprietary or unavailable in Google/Bricks custom fonts, record the fallback in `conversion-report.md`; do not silently substitute a generic system stack.

## Icon Preservation

- Treat Stage A SVGs, CTA arrows, download/GitHub actions, card markers, proof markers, and navigation affordances as source evidence.
- When `stage-b-icon-system.json` exists, copy it into `bricks-result.json.stage_b_icon_system` so Pixflow can build/install the Tabler SVG subset through Bricks custom icon sets before insertion.
- Use `tabler-outline` by default and `tabler-filled` only for clearly filled source icons.
- Use button `settings.icon`, `iconPosition`, and optional `iconGap` for CTA/action icons. Use standalone Bricks `icon` elements for source markers. Use the Bricks `svg` element only when an SVG media/control element is needed.
- Bricks styles custom SVG icons differently from regular font icons. Style standalone SVG icon elements with global class `settings.icon` controls: `height`, `width`, `stroke`, optional `strokeWidth`, and `fill` for filled icons or special fill/stroke cases.
- Do not use `iconSize` or `iconColor` for Pixflow SVG icons; those regular icon controls can fail to style custom SVG icons on the frontend.
- Do not use Bricks Font Awesome font icon classes for Stage B page icons, and do not paste raw `<svg>` icon markup into Bricks code/text/custom CSS.

## Header/Footer Preservation

- If Stage A has a distinct header and the user chooses to include it, keep it out of page `content` and output it as `stage_b_header.content`.
- Use `stage_b_header.scope = "sitewide"` for entire website headers and `stage_b_header.scope = "current_page"` for headers attached only to the inserted page.
- If Stage A has a distinct footer, ask the same include/scope question immediately after the header questions. If included, keep it out of page `content` and output it as `stage_b_footer.content`.
- Use `stage_b_footer.scope = "sitewide"` for entire website footers and `stage_b_footer.scope = "current_page"` for footers attached only to the inserted page.
- Do not write header/footer areas to regular pages; Bricks renders those areas from `bricks_template` posts with template conditions.
- Use the dedicated Bricks `nav-menu` element for real navigation menus when a menu source is available.
- Keep header CTA actions as editable `button` elements.
- Header/footer template root sections must explicitly set source-accurate top/bottom padding on the element or a global class; page-section theme style padding is for page sections and can create large blank template bands.
- Multi-column layout classes must include Bricks responsive `_gridTemplateColumns:tablet_portrait` or `_gridTemplateColumns:mobile_portrait` overrides. CSS media queries in `_cssCustom` are only a fallback for selectors/effects, not the primary mobile layout contract.

## Shape And Motion Fidelity

- Preserve source corner rhythm. Rounded buttons, cards, media frames, pills, badges, and panels need `_border.radius`, a Pixflow radius variable, or a source-scoped class setting.
- Horizontal source wrappers need Bricks row controls on the same element/class: `_display: "flex"` or `"inline-flex"` plus `_direction: "row"`, alignment, justification, and gaps.
- Marquee rows should remain repeated editable items/tracks with matching direction, spacing, and rhythm. Do not flatten them into malformed text or unrelated static lists.

## Token Rules

- `var(--background)` for sections.
- `var(--foreground)` for surfaces.
- `var(--border)` for neutral borders.
- `var(--radius--surface)` and `var(--border--surface)` for cards/images.
- `var(--radius--btn)` and `var(--border--btn)` for buttons, badges, and fields.
- `var(--section-padding)` for normal section vertical padding when the route
  exposes Pixflow Framework variables.
- `var(--container-padding)` and `var(--container-padding--min)` for container
  inline padding.
- `var(--container-gap)` for large layout gaps and `var(--card-gap)` for card
  group gaps.
- `var(--space--*)` for padding, gaps, and local rhythm.
- `var(--grid--*)` for Bricks grid template columns.
- `var(--heading--*)` and `var(--text--*)` for font sizes.
- `var(--shadow--*)` for reusable elevation; use `var(--shadow--2xl)` only for
  large hero/product-stage depth.
- `var(--timing--*)` and `var(--bounce--*)` for scoped transitions or preserved
  source interactions.

## Native Palette Rules

- Keep the selected design system, such as Atelier Zero, as a real Bricks color scheme/palette.
- Stage B design-system palette rows should use `raw: "var(--token)"`, a matching token `name`, and a literal `light` fallback such as `#efe7d2`.
- Variables must mirror Stage A token names and values so Bricks can label the palette by token while resolving the frontend color through the literal fallback and saved variable.

## Not First-Pass Tools

- Do not create or mutate Bricks theme styles for a single Stage B page unless the user explicitly asks; they can affect the whole site.
- Do not use Bricks components in first-pass Pixflow Design parity conversion unless reuse is an explicit requirement; component edits propagate to every instance.
- Do not use catch-all raw HTML/code blocks for source markup. Map source intent into editable Bricks elements.
