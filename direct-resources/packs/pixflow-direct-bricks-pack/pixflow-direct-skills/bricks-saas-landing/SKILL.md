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
