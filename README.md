# cursor-stack-rules

Public **Cursor rules** for the [AI-Guiders](https://github.com/AI-Guiders) agent stack: Roslyn, python-mcp, dotnet-debug, python-debug, git workflow, integrity POST.

**Not here:** product rules (CASA dialogue gates, HCI cards, etc.) — keep those in the product repo or workspace.

## Layout

| Path | Purpose |
|------|---------|
| `rules/global/` | `alwaysApply: true` — debug session hygiene, git, integrity |
| `rules/stack/` | Language/tool rules (`globs`) — Roslyn, python-mcp, … |
| `user-rules/` | Same content **without** `.mdc` frontmatter — paste into **Cursor → User Rules** |
| `workspace-snippets/` | Pointers only; product-specific rules stay elsewhere |
| `MANIFEST.md` | MCP server id ↔ rule file ↔ upstream repo |

## Install

### Workspace (`.cursor/rules/`)

Copy or symlink files from `rules/global/` and `rules/stack/` into your project `.cursor/rules/`.

```powershell
# example: from repo root
$dest = "D:\path\to\workspace\.cursor\rules"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item rules\global\*.mdc, rules\stack\*.mdc $dest
```

Optional: add this repo as a git submodule under `Financial/software/open/cursor-stack-rules` and run the copy after `git pull`.

### User Rules (global in Cursor)

Copy bodies from `user-rules/*.md` into **Settings → Rules → User Rules**. Cursor does not subscribe to git for user rules — re-copy when this repo tags a release.

## Sync with MCP repos

Each MCP repo may ship `docs/cursor-rule.md` linking to the canonical file here. **Edit rules here first**, then bump pointers in MCP repos if tool names change.

## License

[CC BY-SA 4.0](LICENSE) — rules and docs are **text**, not code; ShareAlike keeps forks aligned with the stack canon. MCP **code** repos (python-mcp, RoslynMcp, …) stay on MIT separately.
