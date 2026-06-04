# Bricks SaaS Landing Layout References

Use these Bricks-aware adaptations of the Pixflow Design `saas-landing` and `web-prototype` layout method. Pick layout skeletons first, then write copy and style specs.

## Default Rhythm

1. `saas_sticky_header` - compact SaaS nav with product name, links, and one CTA.
2. `hero_centered_browser_mockup` - centered product thesis with browser/editor mockup underneath.
3. `testimonial_centered_proof` - one credible proof block or honest labelled placeholder.
4. `feature_collage_split` - left value card, right editable product collage.
5. `template_library_preview_grid` - preview grid with real labels and thumbnail structures.
6. `feature_matrix` - bento or matrix of product capabilities.
7. `final_contrast_cta` - distinct closing section.

## Product Mockup Rules

- Build browser chrome, URL bars, side panels, builder canvases, cards, structure trees, token chips, and code snippets as editable Bricks blocks.
- Use an image element only when the user supplied a real screenshot/photo or explicitly requested generated bitmap media.
- For wireframe mode, use stable grey blocks with labels. For high fidelity, add hierarchy, depth, and realistic UI density through Bricks blocks.
- Do not recreate a screenshot pixel-by-pixel as decorative CSS. Recreate the product concept with editable elements.

## Bricks Section Spec Example

```json
{
  "id": "hero",
  "section_type": "hero",
  "layout_pattern": "hero_centered_browser_mockup",
  "visual_role": "product thesis plus editable browser mockup",
  "background_scheme": "background",
  "density": "spacious",
  "required_components": ["badge", "heading", "intro", "actions", "browser_mockup", "structure_sidebar"],
  "bem_block": "hero"
}
```

## Style Spec Example

```json
{
  "class_name": "hero__browser",
  "target": "global_class",
  "declarations": [
    { "property": "background-color", "value": "var(--foreground)" },
    { "property": "border", "value": "var(--border--surface) solid var(--border)" },
    { "property": "border-radius", "value": "var(--radius--surface)" },
    { "property": "overflow", "value": "hidden" },
    { "property": "box-shadow", "value": "0 24px 80px rgba(15, 23, 42, 0.12)" }
  ]
}
```
