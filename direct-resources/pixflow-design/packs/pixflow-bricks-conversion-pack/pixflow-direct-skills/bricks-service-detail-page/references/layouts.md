# Bricks Service Detail Layout References

## Default Rhythm

1. `service_detail_proof_hero` - hero for one service only.
2. `service_detail_fit_panel` - who it is for and what changes.
3. `service_detail_editorial_split` - what is included or why it works.
4. `service_detail_process` - numbered expectations.
5. `service_detail_objections` - decision support.
6. `service_detail_final_cta` - specific enquiry close.

## Layout Rules

- Use one hero, one fit/outcome panel, one detail split, one process, and one conversion close.
- Do not list the same benefits twice in different card grids.
- If there is no real media, build a proof/process panel rather than a fake stock image.

## Bricks Section Spec Example

```json
{
  "id": "fit",
  "section_type": "feature_grid",
  "layout_pattern": "service_detail_fit_panel",
  "visual_role": "fit and outcome panel",
  "required_components": ["heading", "intro", "fit_items", "outcome_items"],
  "bem_block": "fit"
}
```
