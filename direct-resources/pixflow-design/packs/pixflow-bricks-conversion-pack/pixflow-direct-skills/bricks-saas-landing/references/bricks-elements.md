# Bricks SaaS Landing Element Contract

This pack uses the Bricks Builder skill guidance as the Bricks control source of truth.

## Allowed Elements For This Skill

- `section` for top-level page slices.
- `container` for constrained inner wrappers.
- `block` and `div` for product UI, cards, toolbar rows, sidebars, template thumbnails, and bento cells.
- `heading` for h1/h2/h3 text.
- `text-basic` for paragraphs, labels, badges, meta rows, testimonial copy, and code-like short snippets.
- `button` for CTAs.
- `image` only for supplied media, uploaded screenshots, generated bitmap media, or honest placeholders that must remain replaceable.

## Bricks JSON Rules

- Use `section > container > block/div/content` as the default hierarchy.
- `parent` and `children` must be consistent. Do not create orphaned children or empty wrappers.
- Responsive values use flat suffix keys such as `_padding:tablet_portrait`, never nested breakpoint objects.
- `_cssGlobalClasses` stores generated global class IDs, not class names.
- Element text keys are element-specific: `heading.text`, `text-basic.text`, and `button.text`.
- Button links use Bricks link objects: `{ "type": "external", "url": "#pricing" }`.

## Product UI Component Recipes

- Browser mockup: `block` frame -> toolbar row -> canvas and side panel blocks.
- Pixflow AI panel: `block` surface -> small heading rows -> prompt field mockup -> action buttons.
- Bricks structure sidebar: nested `text-basic` rows with indentation blocks, not raw HTML lists.
- Template thumbnail: surface block -> grey preview rows/cards -> title/meta row.
- Code/BEM snippet: `text-basic` content inside a surface block; use scoped `_cssCustom` for monospace if needed.

## Values That Must Stay Editable

- Use actual Bricks blocks for interface chrome, cards, tabs, sidebars, filter pills, and stats.
- Do not flatten the whole product UI into one image.
- Do not output raw HTML, SVG, script tags, or unsupported custom elements.
