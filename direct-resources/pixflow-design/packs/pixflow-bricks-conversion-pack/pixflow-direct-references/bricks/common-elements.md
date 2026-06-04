# Common Bricks Elements For Direct Generation

- `heading`: key controls are `text`, `tag`, `customTag`, `type`, `style`, `link`, and separator options.
- `text-basic`: key control is plain `text`.
- `text`: key control is rich editor `text`; use only when richer editor content is required.
- `button`: key controls are `text`, `tag`, `style`, `size`, `outline`, `block`, `link`, `icon`, `iconPosition`, and `iconGap`.
- `image`: key controls include `image`, `imageSize`, `tag`, `alt`, `caption`, `link`, `loading`, and responsive sources.
- `icon`: key controls include `icon`, `iconColor`, `iconSize`, and `link`.
- `list`: uses repeater `items` with text/icon/link.
- `testimonials`: use only when the data is real or provided; do not invent testimonial names or ratings.
- `accordion` or `accordion-nested` can support FAQ pages, but first-pass compiler may emit editable blocks until nested support is explicit.
- `form`: use only when form reference pack is active and field ids/actions are known.
- `map` and `map-leaflet`: use only when real address/location data exists.
