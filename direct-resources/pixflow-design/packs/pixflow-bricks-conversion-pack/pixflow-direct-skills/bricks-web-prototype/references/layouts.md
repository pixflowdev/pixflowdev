# Bricks Web Prototype Layout References

This is the Bricks adaptation of Pixflow Design's general `web-prototype` skill.

## Workflow

1. Read the brief, uploaded files, screenshot summary, brand spec, design system, and active tokens.
2. Pick a section rhythm before writing copy.
3. Use the closest approved Bricks skeleton from `layouts.json`.
4. Write Bricks section specs and style specs.
5. Self-check P0 before final compile.

## Default Rhythms

- Landing: centered or split hero -> features -> proof or quote -> split detail -> CTA.
- Editorial: centered hero -> log/list or story split -> proof -> CTA.
- Product: hero with visual -> product/feature split -> proof -> CTA.

## Bricks Section Spec Example

```json
{
  "id": "feature",
  "section_type": "features",
  "layout_pattern": "prototype_feature_triplet",
  "visual_role": "three practical value points",
  "required_components": ["section_header", "feature_items"],
  "bem_block": "features"
}
```
