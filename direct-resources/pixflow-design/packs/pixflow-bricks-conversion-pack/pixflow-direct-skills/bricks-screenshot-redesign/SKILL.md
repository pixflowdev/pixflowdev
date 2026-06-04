---
key: bricks-screenshot-redesign
extends: screenshot-redesign
label: Bricks Screenshot Redesign
---

# Bricks Screenshot Redesign Skill

Use this pack when uploaded screenshots, mockups, wireframes, or reference images should guide the page.

Analyze the reference for hierarchy, section rhythm, spacing, visual language, and content intent, then rebuild as editable Bricks JSON. Do not paste the screenshot into the final layout as a shortcut.

## Reference-Led Workflow

- Treat uploaded screenshots as the strongest available design evidence. Read them for section order, visual rhythm, image roles, colour emphasis, product/story moments, typography posture, and interaction expectations.
- Preserve the recognizable concept and page architecture, but improve spacing, hierarchy, responsiveness, polish, and content clarity. The result should feel like a high-quality redesign, not a rough clone.
- If multiple screenshots are attached, synthesize them into one coherent direction. Use the homepage/full-page capture for structure and the cropped screenshots for product, component, and brand detail.
- Never output a flattened screenshot as the page. Build editable Bricks sections with headings, text, buttons, images/media slots, cards, badges, and layout containers.
- Do not let current-site context override an explicit screenshot prompt. The direct prompt and included media define the active brief.
- Read `shared/bricks-visual-craft.md` and name the Bricks recipes needed to rebuild the reference. Use `visualCraftRecipes`, `decorativeMotifs`, and `sectionTransitions` in the artifact for distinctive details such as striped dividers, edge rails, product shelves, browser chrome, collage frames, badges, tabs, and offset labels.

## Product / FMCG / Retail References

For candy, food, beverage, packaged goods, product brands, ecommerce, retail, or similar FMCG references:

- Use a product-led section rhythm: brand header, bold product hero, heritage/story split, flavour or mood discovery, product category cards, popular product showcase, quality/trust reassurance, and final brand CTA.
- Use uploaded product or packaging references for media direction. Include packaging lineups, category thumbnails, product cards, flavour visuals, heritage image panels, badges, and trust markers where the source supports them.
- Keep the page playful and tactile while still structured. Rounded product cards, pills, badges, soft product shadows, colour fields, and varied section backgrounds are expected.
- Do not turn the page into a SaaS, agency, or local-service layout. Avoid browser mockups, dashboards, generic bento grids, and corporate stock-photo sections unless the prompt explicitly asks for them.
- Do not invent unsupported certifications, dates, metrics, or product claims. Use user-provided copy and visual cues; keep uncertain facts generic.

## Bricks Output Contract

- Final output must compile into editable Bricks JSON. Use short BEM-style classes and Pixflow Framework variables/tokens when that route is active.
- Use real Bricks elements for structure. Media may be represented as editable image elements or clearly labelled media placeholders, not CSS-only blobs that cannot be edited.
- Avoid raw colour values in Pixflow Framework mode unless the compiler explicitly maps them to variables; reference colours guide token choices, not final hardcoded CSS.
- Build responsive structure intentionally: stack product/category grids cleanly on mobile, keep hero media in view, and prevent text from overflowing buttons or cards.

## Bricks Styling Rules

- Style through Bricks element/global-class settings first. Use `_cssCustom` only for effects or selectors that Bricks settings cannot express.
- Put routine layout and visual treatment in settings such as `_background`, `_typography`, `_border`, `_padding`, `_display`, `_direction`, `_gridTemplateColumns`, `_columnGap`, `_rowGap`, `_overflow`, `_aspectRatio`, and `_objectFit`.
- Screenshot-derived media should become editable structures: product packs, browser frames, image grids, labelled placeholders, or deliberate content-asset image elements. Do not flatten a screenshot into a single image element.
- High-fidelity screenshot runs need first-viewport impact, product/mockup realism, mobile layout quality, design-system consistency, and at least two reference-specific micro details when visible in the reference. Wireframe mode may reduce decoration but must preserve section order, media slots, and mobile stacking.
