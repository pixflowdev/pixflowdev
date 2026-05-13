# Bricks Query Loops And Filters

- Query-backed elements use Bricks query settings, not manually invented loop rows.
- Posts/products/portfolio/archive/filter pages need a query contract before compilation.
- Filters need a target query id and compatible filter key.
- Pagination should be planned with query result summaries when relevant.
- For Direct Generation, do not fake dynamic lists as real CMS content unless the user has supplied entries.
- When exact query data is unavailable, use honest editable placeholder cards and label the intended dynamic data role.
- Dynamic product/blog/archive pages should load this pack plus dynamic-data and conditions when needed.
