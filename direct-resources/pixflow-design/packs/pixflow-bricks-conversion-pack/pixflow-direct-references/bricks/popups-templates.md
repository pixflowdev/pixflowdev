# Bricks Popups And Templates

- Bricks templates are `bricks_template` posts with `_bricks_template_type`.
- Template settings and assignment conditions live in `_bricks_template_settings`.
- Popup behavior belongs in template settings and/or interactions, not random page wrappers.
- Direct page generation should not create site-wide headers, footers, archives, or popups unless the user asks for that mode.
- Header/footer/archive/single template generation must remain separate from regular page generation.
