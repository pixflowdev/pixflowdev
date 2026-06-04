# Bricks SaaS Landing Reference Checklist

## P0

- [ ] Read the skill, seed payload, layout references, component references, and at least one example before planning.
- [ ] Use Bricks-native element names only: section, container, block, div, heading, text-basic, image, and button for this skill.
- [ ] Save responsive overrides as flat Bricks keys such as `_padding:tablet_portrait`, never nested breakpoint objects.
- [ ] Use `_cssGlobalClasses` IDs for generated classes and keep class names short BEM names.
- [ ] Use Bricks color token objects with `raw` and `name` for Pixflow Framework variables.
- [ ] Use per-side `_border.radius` and `_border.width` objects for buttons, cards, images, and surface panels.
- [ ] Use `max(var(--border--btn), 1px)` where a visible divider/boundary must remain visible in flat mode.
- [ ] Build product visuals as editable Bricks blocks unless the user supplied a screenshot to use.
- [ ] Preserve requested SaaS sections: header, hero, proof, product highlight, templates, features, CTA.
- [ ] No empty wrappers, transparent GIF placeholders, raw code, raw SVG elements, or unsupported Bricks elements.

## P1

- [ ] The hero has one dominant headline and one realistic browser/product mockup.
- [ ] Proof appears immediately after the hero.
- [ ] Middle sections vary between collage, preview grid, matrix, and contrast CTA.
- [ ] Template preview cards include visual thumbnail structures, not only paragraphs.
- [ ] Feature matrix includes varied card weights and at least one visual slot.
- [ ] Copy names practical workflow outcomes instead of generic "all-in-one solution" phrasing.

## P2

- [ ] Product UI mockups include chrome, side panels, canvas panels, and structure-like details.
- [ ] Accent color is controlled and does not dominate every section.
- [ ] UI details remain editable enough for the user to inspect and change in Bricks.
- [ ] Mobile collapse preserves readable order: copy, actions, visual, proof.
