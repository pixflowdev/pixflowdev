# Pixflow Public Resources

Public update channels for Pixflow AI and Pixflow Design.

The Pixflow plugin keeps a small built-in baseline so generation still works without these packs. These resources provide larger Pixflow Design references, Bricks Builder knowledge, craft checklists, visual directions, design-system examples, and bridge installers without increasing the main plugin ZIP size.

## Channels

- `pixflow-design/manifest.json`: Pixflow Design resource packs, skills, templates, design systems, plugin references, and Bricks conversion guidance.
- `pixflow-bridge/installers/`: Pixflow Bridge installer and updater downloads.

## Pixflow Design Release Layout

Each Pixflow Design release includes:

- `pixflow-design/manifest.json`
- `pixflow-design/inventory.json`
- `pixflow-design/packs/...`
- `pixflow-design/release/v<version>/*.zip`

The plugin reads:

```text
https://raw.githubusercontent.com/pixflowdev/pixflowdev/main/direct-resources/pixflow-design/manifest.json
```

## Publishing

1. Build Pixflow Design packs from the Pixflow AI plugin workspace.
2. Write the generated output to `direct-resources/pixflow-design`.
3. Commit and push the changed manifest, inventory, pack folders, and release ZIPs to `pixflowdev/pixflowdev`.
4. The plugin downloads the public raw GitHub files directly and verifies ZIP checksums before activation.

This repository is intended to be public. The main Pixflow plugin repository can remain private.
