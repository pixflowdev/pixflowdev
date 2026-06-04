# Bricks Visual Craft Recipes

This reference is mandatory for every Bricks Direct Generation skill. It translates Pixflow Design-style visual taste into editable Bricks structures.

## Core Rule

Do not stop at "nice layout". Extract the distinctive visual motif from the prompt or screenshot, name the Bricks recipe, then build it with elements and global-class settings. Use `_cssCustom` only for details Bricks cannot express, such as pseudo-elements, masks, repeating gradients, or selector-specific states.

## Settings-First Styling

Use Bricks/global-class settings for normal styling:

- `_background` for section bands, cards, product packs, app panels, dividers, and media frames.
- `_typography` for headings, labels, captions, UI chrome, badges, and product pack text.
- `_border` for radii, strokes, pills, media frames, card edges, and browser chrome.
- `_padding`, `_margin`, `_display`, `_direction`, `_gridTemplateColumns`, `_columnGap`, `_rowGap`, `_alignItems`, and `_justifyContent` for composition.
- `_position`, `_overflow`, `_aspectRatio`, `_objectFit`, `_width`, `_height`, and `_transform` for mockups, product packs, crops, overlaps, and stable responsive layouts.

## Reusable Recipes

- `striped-divider`: one shallow divider block placed between sections, not inside either section. Draw the stripes with a shared global class and `::before`/`repeating-linear-gradient`; do not build repeated child stripe segment blocks. Use for candy, FMCG, playful retail, and screenshots with visible red/yellow or multicolour divider bands.
- `product-pack-lineup`: editable pack/card blocks with label, product title, colour zones, shadow, small top stripe, and staggered rotation. Use this instead of embedding a reference screenshot.
- `browser-mockup`: block-based browser chrome, URL/status row, app canvas, side rail, panels, cards, and proof chips. Use for SaaS/plugin screenshots.
- `screenshot-collage`: replaceable image slots or labelled placeholders in overlapping frames, with stable aspect ratios and captions only when useful.
- `editorial-proof-panel`: asymmetric surface with quote/stat/detail cards, varied weights, and one dominant proof item.
- `edge-treatment`: stripe rail, colour bar, scallop, wave, offset slab, or clipped media edge used as a section transition. Keep it editable where possible.
- `floating-badge`: a small absolute/relative badge attached to a mockup, product pack, media frame, or proof panel.

## Screenshot Contract

When the screenshot contract includes visual motifs, section beats, media roles, or layout rhythm, map each meaningful item to a recipe in `visualCraftRecipes`, `decorativeMotifs`, `sectionTransitions`, `mediaSlots`, or `styleTargets`.

High-fidelity screenshot-led pages should include at least two reference-specific micro details when the reference contains them. Examples: Sumi-style red/yellow striped dividers, candy pack top stripes, carousel dots, product shelf shadows, browser status pills, template-library tabs, or offset editorial labels.

Reference screenshots are analysis inputs. Do not place a full-page reference screenshot into a Bricks image element unless the media policy explicitly marks it as a content asset.
