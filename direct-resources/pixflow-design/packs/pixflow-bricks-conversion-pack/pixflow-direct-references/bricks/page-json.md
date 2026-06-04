# Bricks Page JSON And Storage

- A Bricks page body is a flat ordered array stored in `_bricks_page_content_2`.
- Each element object must have `id`, `name`, `parent`, `children`, and `settings`.
- Top-level sections use `parent` as an empty string or `0`; nested elements reference the parent element id.
- `children` contains child element ids only. Every child id must exist in the same content array.
- Bricks global classes are stored separately in `bricks_global_classes`; elements reference global class ids in `settings._cssGlobalClasses`.
- Do not invent per-element database rows. Bricks stores the whole element tree as one serialized post-meta array.
- Programmatic writes must keep valid parent and children references, then regenerate Bricks CSS in the live site path.
- Never compile raw `code` or `svg` elements from model output in Direct Generation unless a later pass explicitly allows them.
