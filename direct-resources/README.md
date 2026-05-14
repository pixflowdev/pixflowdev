# Pixflow Direct Resources

Optional resource packs for Pixflow Direct Generation.

The Pixflow plugin keeps a small built-in baseline so page generation still works without these packs. These resources provide the larger Open Design-inspired references, Bricks Builder knowledge, craft checklists, visual directions, and design-system examples without increasing the main plugin ZIP size.

## Packs

- `pixflow-direct-bricks-pack`: Bricks Builder skills, Pixflow Direct skill files, Bricks JSON references, and compatibility guidance.
- `pixflow-direct-design-pack`: Open Design-inspired workflow prompts, design-template skills, craft references, anti-slop rules, visual-direction source references, and skill files.
- `pixflow-direct-design-systems-pack`: Design-system examples used as optional generation references.

## Release Layout

Each release should include:

- `manifest.json`
- `pixflow-direct-bricks-pack.zip`
- `pixflow-direct-design-pack.zip`
- `pixflow-direct-design-systems-pack.zip`
- `checksums.sha256`

The plugin reads:

```text
https://raw.githubusercontent.com/pixflowdev/pixflowdev/main/direct-resources/manifest.json
```

## Publishing

1. Run `powershell -ExecutionPolicy Bypass -File scripts/build-release.ps1`.
2. Commit `direct-resources/manifest.json` and the generated `direct-resources/release/v1.0.0` files to `pixflowdev/pixflowdev`.
3. The plugin downloads the public raw GitHub files directly and verifies ZIP checksums before activation.

This repository is intended to be public. The main Pixflow plugin repository can remain private.
