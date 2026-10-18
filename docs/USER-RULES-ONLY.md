# Режим «только User Rules»

Cursor **не имеет** переключателя «user only». Пока живы Team или `.cursor/rules`, они **подмешиваются** (Team > Project > User).

## Шаги

1. **Customize → Team Rules** — удалить всё (или выключить optional; enforced — снять в dashboard).
2. **Customize → User Rules** — вставить `user-rules/PASTE-INTO-CURSOR-USER-RULES.md` (ниже `---`) + свои операторские строки.
3. **Project rules off** — в workspace не должно остаться `*.mdc` в `.cursor/rules/`:
   - PCF: правила лежат в `tools/cursor-project-rules-archived/` (восстановление: скопировать обратно в `.cursor/rules/`).
4. Удалить или не использовать корневой `AGENTS.md` (или одна строка «см. User Rules»).
5. **Reload Window**, новый Agent-чат.

## Версионирование

Канон текста для User Rules — `user-rules/` в `cursor-stack-rules`. Project `.mdc` — опциональный режим per-repo (sync script); в режиме user-only не активны.
