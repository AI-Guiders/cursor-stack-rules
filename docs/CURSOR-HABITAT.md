# Cursor habitat vs DSH vs Team Rules

| Слой | Где | В Cursor? |
|------|-----|-----------|
| Stack | `cursor-stack-rules` → `.cursor/rules/` (sync script) | да |
| Product | `.cursor/rules/` (cdp, casa, …) с **globs** | да, по файлам |
| Root `AGENTS.md` | workspace root | короткий указатель, не L0 из DSH |
| DSH L0 | `dsh-habitat` / `~/.dsh/AGENTS.md` | **нет** |
| Team Rules | Customize → Team | минимум; без 4× AGENTS |
| User Rules | Settings | **3–5 блоков** на все репо (`user-rules/README.md`); не roslyn/dotnet stack |
| Vendor | `**/vendor/**/AGENTS.md` | не policy; только если правишь vendor |

Precedence (Cursor): Team > Project > User. Лишние team rules ломают монорепо — держи team пустым или один integrity-блок.

Multi-root: root `AGENTS.md` **каждой** папки workspace может подтекать во все чаты — либо один root, либо только `.mdc` + globs.

Third-party import (`CLAUDE.md` и т.д.): Settings → отключить «Include Third-Party Plugins…», если тянет чужие конфиги.
