param(
  [string]$Version = "1.0.0"
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$tag = "v$Version"
$releaseDir = Join-Path $root "release\$tag"
$packsDir = Join-Path $root "packs"

New-Item -ItemType Directory -Force -Path $releaseDir | Out-Null

$packs = @(
  @{
    id = "pixflow-direct-bricks-pack"
    label = "Pixflow Direct Bricks Pack"
    kind = "bricks"
    description = "Bricks Builder skills, Pixflow Direct skills, skeleton contracts, reference payloads, and compatibility rules."
  },
  @{
    id = "pixflow-direct-design-pack"
    label = "Pixflow Direct Design Pack"
    kind = "design"
    description = "Open Design-inspired workflow prompts, craft references, visual directions, anti-slop rules, and QA checklists."
  },
  @{
    id = "pixflow-direct-design-systems-pack"
    label = "Pixflow Direct Design Systems Pack"
    kind = "design-systems"
    description = "Optional design-system examples used as references without overriding the active site tokens."
  }
)

$manifestPacks = @()
$checksums = @()

foreach ($pack in $packs) {
  $packRoot = Join-Path $packsDir $pack.id
  if (!(Test-Path $packRoot)) {
    throw "Missing pack folder: $packRoot"
  }

  $zipPath = Join-Path $releaseDir "$($pack.id).zip"
  if (Test-Path $zipPath) {
    Remove-Item -LiteralPath $zipPath -Force
  }

  Compress-Archive -Path (Join-Path $packRoot "*") -DestinationPath $zipPath -CompressionLevel Optimal
  $hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $zipPath).Hash.ToLowerInvariant()
  $size = (Get-Item -LiteralPath $zipPath).Length
  $checksums += "$hash  $($pack.id).zip"

  $manifestPacks += [ordered]@{
    id = $pack.id
    version = $Version
    label = $pack.label
    kind = $pack.kind
    description = $pack.description
    archive = [ordered]@{
      url = "https://raw.githubusercontent.com/pixflowdev/pixflowdev/main/direct-resources/release/$tag/$($pack.id).zip"
      sha256 = $hash
      size = $size
    }
    parts = @()
  }
}

$manifest = [ordered]@{
  type = "pixflow_direct_intelligence_manifest"
  version = 1
  generatedAt = (Get-Date).ToUniversalTime().ToString("o")
  distribution = [ordered]@{
    primary = "github_raw_repository"
    repository = "pixflowdev/pixflowdev"
    tag = $tag
  }
  packs = $manifestPacks
}

$manifestPath = Join-Path $releaseDir "manifest.json"
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($manifestPath, ($manifest | ConvertTo-Json -Depth 10) + "`n", $utf8NoBom)
[System.IO.File]::WriteAllText((Join-Path $releaseDir "checksums.sha256"), ($checksums -join "`n") + "`n", [System.Text.Encoding]::ASCII)

Write-Output "Built Direct Intelligence resource-pack release in $releaseDir"
