# Bricks Globals, Classes, Variables, Theme Styles, And Palettes

- `_cssGlobalClasses` references global class ids from `bricks_global_classes`, not readable class names.
- A global class entry has `id`, `name`, optional `category`, and `settings`.
- Bricks renders global class ids as `.brxe-{globalClassId}`.
- CSS variables live in `bricks_global_variables` and can be used as raw values.
- For color fields, CSS variables must use `{ "raw": "var(--token)" }`.
- For spacing, radius, width, grid, and type values, CSS variables can be plain strings such as `var(--space--m)`.
- Theme styles and Pixflow Framework route context provide defaults, but Direct Generation should still emit explicit generated global classes where needed for editable output.
- Pixflow Framework mode requires semantic token discipline: section backgrounds use `var(--background)`, surface panels use `var(--foreground)`, neutral borders use `var(--border)`.
- Pixflow Framework mode is route-specific. These strict framework rules do not apply to vanilla/native Bricks mode.
- In Pixflow Framework mode, Bricks Theme Style owns routine section top/bottom padding and routine container left/right page gutters. Do not restate those defaults on generated sections/containers.
- In Pixflow Framework mode, Bricks Theme Style owns body font size, body line height, default heading/text colours, and default button styles. Propose approved design-system/theme changes instead of duplicating those values on every element.
- In native Bricks mode, the model may propose Bricks Theme Style values or explicit Bricks settings when no active Pixflow Framework token owns that decision.
- Buttons, badges, and fields use `var(--radius--btn)` and `var(--border--btn)`.
- Cards, surface wrappers, and images use `var(--radius--surface)` and `var(--border--surface)`.
- Visible dividers or required borders that must not disappear use `max(var(--border--btn), 1px)` where button-border flat mode may be zero.
- Do not hardcode raw hex values in Pixflow Framework output unless explicitly in vanilla mode.
