# Bricks Homepage Layout References

Use this pack for full homepages where the type of business may vary. The goal is a polished page with clear rhythm, not a generic hero plus repeated cards.

## Default Rhythm

1. `homepage_proof_led_hero` - hero with a specific offer and meaningful visual.
2. `homepage_proof_strip` - compact proof, testimonial, stat, credential, or honest placeholder.
3. `homepage_bento_overview` - overview with one larger card and varied card weights.
4. `homepage_story_split` - editorial split for point of view, method, or differentiator.
5. `homepage_final_cta` - visually distinct close.

## Layout Rules

- Pick a section list before writing copy.
- Do not place two equal-card grids next to each other.
- Do not center every section heading. Mix editorial split, proof row, bento overview, and contrast CTA.
- If no real media exists, use a proof panel or labelled placeholder rather than fake photography.

## Bricks Section Spec Example

```json
{
  "id": "overview",
  "section_type": "overview",
  "layout_pattern": "homepage_bento_overview",
  "visual_role": "scannable overview with one dominant card",
  "required_components": ["heading", "intro", "large_feature", "supporting_cards"],
  "bem_block": "overview"
}
```
