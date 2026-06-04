---
key: bricks-saas-landing
extends: saas-landing
label: Bricks SaaS Landing
hardened: true
---

# Bricks SaaS Landing Skill

Use this pack for software, plugin, WordPress, Bricks Builder, app, dashboard, and SaaS landing pages.

The page must feel like a real product page, not a generic service page. Lead with a strong product thesis, show an editable product/browser mockup early, add proof directly under the hero, then vary the middle sections with a product collage, template/library preview, bento or feature matrix, and a final high-contrast CTA.

Do not replace requested product UI with stock photography. Use editable Bricks blocks for browser chrome, side panels, cards, feature lists, structure trees, template previews, dashboard panels, design-token cards, font installer panels, icon installer panels, and BEM/code snippets unless the user supplied a specific image to use.

For SaaS/plugin prompts, the default product media grammar is:

- `browser_frame`: browser chrome, URL/status row, and a contained product workspace.
- `pixflow_ai_panel`: prompt box, selected context, design-system state, and action rows.
- `builder_canvas`: editable page preview with hero/card/CTA-like structures.
- `bricks_structure_sidebar`: labelled tree for Header, Hero, Proof, Templates, Features, and CTA.
- `design_system_token_cards`: token chips for background, foreground, accent, border, radius, and type.
- `font_installer_panel`: installed font rows or typography selector UI.
- `icon_installer_panel`: small editable icon grid, never emoji filler.
- `code_class_snippet`: short BEM/class or token snippet that shows real product value.

Prefer skeletons from `layouts.json` over freeform card-grid sections. The compiler owns BEM class names and Pixflow token object shapes.

Read `shared/bricks-visual-craft.md` before planning. SaaS/plugin pages should carry Pixflow Design-style product craft into Bricks: browser chrome, app side rails, product tabs, status pills, template previews, screenshot collage frames, floating proof badges, and code/token snippets must be editable structures, not decorative screenshots or generic cards.

## Screenshot-Led SaaS Media

When a SaaS/plugin screenshot is attached, preserve the product surface rhythm in the artifact before compilation. Include `referenceBeats`, `mediaSlots`, `visualCraftRecipes`, `decorativeMotifs`, `sectionTransitions`, `componentTreeIntent`, `styleTargets`, and responsive notes for browser mockups, dashboard panels, template libraries, feature matrices, code/BEM snippets, and CTA product proof. Reference-only screenshots should inform these editable structures rather than being embedded.

## Bricks Styling Rules

- Use Bricks element/global-class settings first: `_background` for app surfaces, `_typography` for product headings and UI labels, `_border` for browser frames and cards, `_padding` for panels, `_display` and `_gridTemplateColumns` for bento/feature/template grids, `_overflow` for app chrome, `_aspectRatio` for browser and screenshot frames, and `_objectFit` for allowed image assets.
- `_cssCustom` is only for selectors/effects that the supported Bricks settings cannot express. Do not use it as the main styling carrier.
- Keep classes short and semantic, such as `saas-hero`, `saas-hero__browser`, `proof-band`, `feature-collage`, `template-grid`, and `saas-cta`.
