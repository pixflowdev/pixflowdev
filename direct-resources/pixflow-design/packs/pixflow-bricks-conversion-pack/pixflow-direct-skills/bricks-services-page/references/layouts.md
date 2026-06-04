# Bricks Services Page Layout References

Use this pack when the page explains services, packages, offers, or "what we do".

## Default Rhythm

1. `services_hero_split` - service promise with meaningful service visual or proof panel.
2. `services_showcase` - differentiated service paths.
3. `services_featured_split` - one stronger featured service or signature offer.
4. `services_process_timeline` - what happens next.
5. `services_objection_stack` - FAQ or buying concerns.
6. `services_contact_cta` - enquiry path with reassurance.

## Layout Rules

- Do not repeat the same services list in multiple sections.
- Differentiate by audience, outcome, scope, project type, or next step.
- Give one service a stronger editorial or split treatment.
- Use objection handling before the final CTA when the service is considered or high-value.

## Bricks Section Spec Example

```json
{
  "id": "services",
  "section_type": "service_overview",
  "layout_pattern": "services_showcase",
  "visual_role": "differentiate service paths",
  "required_components": ["section_header", "service_cards", "fit_or_outcome_rows"],
  "bem_block": "services"
}
```
