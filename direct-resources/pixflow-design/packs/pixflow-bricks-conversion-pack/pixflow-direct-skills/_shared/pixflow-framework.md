# Pixflow Framework Operating Layer

This reference is mandatory for every Bricks Direct Generation skill. It is not a page type. It is the styling and build contract used when the active route is Pixflow Framework.

## Source Of Truth

- The Pixflow Framework Design System and Bricks Style Manager tokens are the styling authority.
- Uploaded screenshots, DESIGN.md files, Figma files, and prompts can influence visual direction, spacing taste, and composition, but must not override Pixflow Framework tokens.
- Do not invent framework variables, class IDs, colour IDs, or CSS variable fallback values.
- Do not hardcode hex colours in Pixflow Framework mode except when recording observed brand-spec evidence; final Bricks output must use semantic Pixflow variables.

## Required Token Roles

- Sections and major bands use `var(--background)` through Bricks `_background.color`.
- Cards, panels, mockup frames, forms, media frames, and elevated surfaces use `var(--foreground)`.
- Neutral borders use `var(--border)`.
- Headings use `var(--heading)`, body copy uses `var(--text)`, and primary emphasis uses `var(--accent)`.
- Primary button text should use `var(--btn-text)` when available.

## Radius And Border Rules

- Buttons, badges, pills, inputs, and form fields use `var(--radius--btn)` and `var(--border--btn)`.
- Secondary buttons, outline buttons, visible pills, dividers, and any boundary that must survive flat mode use `max(var(--border--btn), 1px)` for border width.
- Cards, images, media frames, product mockups, forms, and surface wrappers use `var(--radius--surface)` and `var(--border--surface)`.
- Border radius and width must be Bricks four-side objects, not plain strings, when written into element settings.

## Colour Scheme Rhythm

- Use Pixflow colour schemes at section or large-band level, not random per-card colouring.
- Main/default scheme should carry roughly 60 percent of the page.
- Supporting neutral/surface schemes should carry roughly 30 percent of the page.
- Accent or contrast moments should carry roughly 10 percent of the page.
- Do not repeat the same white card grid section rhythm when a contrast band, split, bento, editorial proof, or product mockup section would better serve the page.
- Treat the source palette as seed colours only. Do not add white, black, cream, off-white, or charcoal as source palette colours unless they are true brand colours.
- Use neutral tint and generated ramp stops for white/cream/off-white/dark surfaces. Pixflow calculates the ramp values; the model chooses intent.
- For red/yellow product brands, the usual Pixflow Framework source palette order is accent/button yellow first, brand red second. Then create schemes such as default neutral white, base red hero/story, base yellow product band, yellow-light editorial band, and neutral-dark contrast band.
- After schemes are generated, choose section `backgroundScheme` roles from what the schemes actually mean. For the Sumi pattern: hero uses the red scheme, product categories use the yellow scheme, heritage/quality use the light editorial scheme, and mood/CTA contrast sections use the dark neutral scheme.
- Headings and text should normally inherit `var(--heading)` and `var(--text)` from the active colour scheme. Do not colour normal text with `var(--foreground)`; `var(--foreground)` is for cards, panels, media frames, and elevated surfaces.

## Bricks Setting Versus Custom CSS

- Prefer Bricks global-class settings for layout, spacing, typography, background, border, radius, and responsive values.
- Use scoped `_cssCustom` with `%root%` only for styling Bricks controls cannot expose: subtle transforms, local pseudo-detail, collage overlap, masking, or tiny product-mockup chrome details.
- Never use global selectors, external imports, scripts, fixed-position overlays, or raw HTML/SVG as a shortcut.

## Editable Build Discipline

- Generated elements must use short semantic BEM classes such as `hero`, `hero__media`, `templates__card`, and `features__grid`.
- The compiler owns class IDs. The model should plan class names and roles, not fabricate Bricks global class IDs.
- Product UI/browser mockups should be editable Bricks structures unless the user explicitly asks to use a supplied image.
- Images should use purposeful media, uploaded/generated assets, or honest grey placeholders in wireframe mode. Do not build fake stock-photo scenes out of nested cards.
- Avoid empty wrappers, dashed placeholders, transparent GIFs, placeholder text left on the page, or decorative structure that does not add visual or semantic value.

## Pixflow Framework P0 Gates

- Read this Pixflow Framework operating layer before planning any Bricks Direct Generation page.
- Preserve Pixflow Framework token authority through design director, rhythm planning, craft plan, compiler, QA, and repair.
- Use no CSS variable fallbacks like `var(--background, #fff)`.
- Use no blank Bricks colour objects such as `{ "hex": null }`.
- Use Bricks token object shapes for colours, border colour, border width, and border radius.
- Use short BEM class names and keep style settings attached to generated global classes.
- If a requested effect cannot be represented through Bricks settings, route only that local effect to scoped `_cssCustom`.
