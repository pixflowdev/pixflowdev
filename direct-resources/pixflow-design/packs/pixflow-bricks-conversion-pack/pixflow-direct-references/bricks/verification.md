# Bricks Verification Recipes Adapted For Pixflow

- Verify saved Bricks data with `_bricks_page_content_2` and `bricks_global_classes`.
- Verify class ids by checking `_cssGlobalClasses` values against generated/global class entries.
- Verify Bricks panel values by opening the builder with Playwright and inspecting selected element controls.
- Verify responsive behavior by checking generated suffixed settings and screenshotting desktop, tablet, and mobile.
- Verify variables by confirming color objects use `{ "raw": "var(--token)" }` and scalar values use valid CSS strings.
- Verify live data with WP/PHP/SSH access when available; do not depend on model memory for installed plugin dynamic tags, forms, or query providers.
