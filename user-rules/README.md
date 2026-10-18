# User Rules (Cursor Settings)

**Режим «только User»:** см. `docs/USER-RULES-ONLY.md` — вставка `PASTE-INTO-CURSOR-USER-RULES.md`, project `.mdc` в архив.

**User Rules** = единственный policy на **все** репозитории. Не дублировать с Team / `.cursor/rules` / DSH.

## Класть в User Rules (типично 3–5 блоков)

| Файл | Зачем |
|------|--------|
| `integrity-core-immutable.md` | harm + awareness (POST), всегда |
| Операторский короткий блок | «ты», не мета в deliverable, commit по просьбе — **свой** один `.md`, не DSH L0 |
| `cursor-chat-inbox.md` | только если пользуешься `INBOX:` / `WORK:` |

Опционально глобально (если не хочешь sync в каждый репо): `git-logical-commits.md`.

## Не класть в User Rules (только project `.mdc`)

Roslyn, python-mcp, dotnet-debug, python-debug — они в `rules/stack/` и попадают в репо через sync. Иначе **двойная** нагрузка + расхождение версий.

## Не класть никогда

- `dsh-habitat` / `~/.dsh/AGENTS.md`
- Team bundle «AGENTS» × N
- Полные CDP/harness playbooks (только `.cursor/rules` с globs в PCF)

## Team Rules (casa-dev)

Для соло-работы — **пусто**. Team > Project > User: team дубли ломают монорепо и LaTeX-чаты.
