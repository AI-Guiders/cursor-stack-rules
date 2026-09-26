#!/usr/bin/env pwsh
# Copy stack rules from cursor-stack-rules into a workspace .cursor/rules/
param(
    [Parameter(Mandatory = $false)]
    [string]$WorkspaceRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
)

$ErrorActionPreference = 'Stop'
$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$srcGlobal = Join-Path $repoRoot 'rules\global'
$srcStack = Join-Path $repoRoot 'rules\stack'
$dest = Join-Path $WorkspaceRoot '.cursor\rules'

if (-not (Test-Path $srcGlobal)) { throw "Missing $srcGlobal" }
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$files = @(
    (Get-ChildItem $srcGlobal -Filter '*.mdc')
    (Get-ChildItem $srcStack -Filter '*.mdc')
) | ForEach-Object { $_ }

foreach ($f in $files) {
    Copy-Item -LiteralPath $f.FullName -Destination (Join-Path $dest $f.Name) -Force
    Write-Host "stack -> $($f.Name)"
}

Write-Host "Done. Workspace product rules (casa/cdp/...) are NOT overwritten — see .cursor/README.md"
