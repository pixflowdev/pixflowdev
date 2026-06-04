---
key: bricks-product-brand-landing
extends: product-brand-landing
label: Bricks Product Brand Landing
hardened: true
---

# Bricks Product Brand Landing Skill

Use this pack for consumer product brands, FMCG, food, beverage, sweets, candy, packaged goods, product-range homepages, and screenshot-led product-brand redesigns.

The page must feel like a product brand, not a SaaS page, local service page, or generic agency landing page. Lead with a product/packaging hero, preserve supplied brand facts, then move through heritage/story, flavour or mood discovery, product categories, popular products, quality/trust, and a warm closing CTA.

Use uploaded screenshots as visual references for colour, type mood, spacing, product packaging, section order, and product browsing rhythm. If images are supplied, plan real image/media roles for hero, heritage, category, and product showcase sections. If a specific product image cannot be reused, build editable Bricks product-card or packaging-placeholder structures with honest labels.

When Pixflow Framework is active, translate the reference brand into Pixflow Framework intent rather than raw variables. For red/yellow candy or FMCG brands, propose the accent/button yellow as source palette colour 1 and the brand red as source palette colour 2; use neutral tint and ramp stops for white, cream, off-white, and dark sections. The expected scheme rhythm is usually: default neutral white, base red hero/story, base yellow category/product band, light yellow-tint editorial/quality band, and dark neutral mood/CTA band.

Apply Pixflow colour schemes to section/container bands and let scheme tokens set `--heading` and `--text`. Do not colour normal heading/body elements with `--foreground`; `--foreground` is only for card, panel, media-frame, and elevated-surface backgrounds.

Never invent prices, certifications, awards, distribution claims, reviews, dates, or founder facts. Preserve explicit dates and brand facts from the prompt or reference markdown.

Prefer skeletons from `layouts.json` over freeform equal-card grids. The compiler owns BEM class names and Pixflow token object shapes.

Read `shared/bricks-visual-craft.md` before planning. Every screenshot-led product brand needs named `visualCraftRecipes` for its distinctive motifs and Bricks-native recipes for them. For Sumi-like red/yellow candy references, preserve small authored details such as striped section dividers, candy pack top stripes, carousel dots, product shelf shadows, flavour colour chips, and offset heritage badges as editable Bricks structures.

## Screenshot-Led Product Media

When a product-brand screenshot is attached, produce a Pixflow Design-style artifact with `referenceBeats`, `mediaSlots`, `visualCraftRecipes`, `decorativeMotifs`, `sectionTransitions`, `componentTreeIntent`, `styleTargets`, and responsive notes before Bricks compilation. Typical media slots are hero packaging lineup, heritage image/panel, flavour/category cards, popular product cards, quality badge row, and final CTA product accent. If the source screenshot is reference-only, describe the slot and build editable product/card placeholders instead of embedding the screenshot.

## Bricks Styling Rules

- Use Bricks settings first: `_background` for section bands/cards, `_typography` for selective text treatment, `_border` for product cards/media frames, `_padding` for card internals, `_display` and `_gridTemplateColumns` for product/category grids, `_overflow` for clipped packaging frames, `_aspectRatio` for product cards, and `_objectFit` for allowed content images.
- Use `_cssCustom` only after Bricks settings cannot express the detail. Do not place all visual styling in custom CSS. Striped dividers should usually be real Bricks child blocks with alternating `_background` settings; only use a repeating gradient when an element recipe is too heavy.
- Keep product-brand classes short and semantic, such as `brand-hero`, `brand-hero__pack`, `product-grid`, `product-card`, `quality-panel`, and `brand-cta`.
