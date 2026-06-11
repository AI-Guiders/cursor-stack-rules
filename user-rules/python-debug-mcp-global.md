# Python-debug-mcp (глобально)

Если подключён MCP **python-debug** (`python-debug-mcp`):

- **Запуск:** `debug_launch_script` → `job_id`, `port` (по умолчанию `wait_for_client=true`).
- **Attach + breakpoints + run:** `debug_continue` (`job_id`, опционально `breakpoints: [{file_path, line}]`).
- **Завершение сессии:** `debug_stop` (`job_id`) — всегда в конце, даже если что-то пошло не так.
- **Не убивать** процесс debugpy снаружи (taskkill) — MCP может уйти в Error; при зависании — `debug_stop`.

Типичный цикл: `debug_launch_script` → `debug_continue` → (работа) → `debug_stop`.

Диагностики и навигация — **python-mcp** (`python_get_diagnostics`, `python_find_usages` и т.д.), не debug-mcp.
