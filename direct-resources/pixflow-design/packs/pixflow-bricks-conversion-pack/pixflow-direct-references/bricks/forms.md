# Bricks Forms

- Every form field needs a stable `id`. Email placeholders and submission data use this id.
- Do not assume field ids are generated from labels.
- Forms should include clear labels, purposeful placeholders, and expectation-setting copy nearby.
- Actions can include email, webhook, integrations, login/registration, create-post, custom code, and save-submission depending on site setup.
- Do not invent recipients, phone numbers, addresses, privacy statements, or opening hours.
- Contact and booking pages should plan success, error, loading, and validation states even if the first compiler output is static.
- Use Pixflow field radius and border tokens in Pixflow Framework mode: `var(--radius--btn)` and `var(--border--btn)`.
