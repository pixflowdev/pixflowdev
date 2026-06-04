# Bricks Local Service Layout References

Use this pack for clinics, studios, practices, trades, appointments, consultations, and local service businesses.

## Default Rhythm

1. `local_service_proof_led` - local trust hero with booking action.
2. `local_service_overview` - differentiated services or appointment paths.
3. `local_process_timeline` - calm expectation-setting process.
4. `local_testimonial_panel` - quote, review summary, or honest placeholder.
5. `local_contact_split` - enquiry or booking close.

## Layout Rules

- Lead with local/service specificity.
- Avoid SaaS/product UI language.
- Do not invent addresses, ratings, reviews, phone numbers, opening hours, or credentials.
- If a map or location is requested but not supplied, use a labelled placeholder panel.
- Use proof or reassurance near the enquiry action.

## Bricks Section Spec Example

```json
{
  "id": "contact",
  "section_type": "contact",
  "layout_pattern": "local_contact_split",
  "visual_role": "booking path and expectation setting",
  "required_components": ["heading", "intro", "contact_panel", "reassurance"],
  "bem_block": "contact"
}
```
