# Python-debug MCP (в .py файлах)

Если подключён MCP **python-debug** (`python-debug-mcp`):

1. **debug_launch_script** — `script_path`, `cwd`; по умолчанию `wait_for_client=true`.
2. **debug_continue** — `job_id`, опционально `breakpoints: [{file_path, line}]`.
3. Работа под отладчиком, затем **debug_stop** (`job_id`).

Глобальные правила сессии (не kill debugpy, всегда `debug_stop`) — в `rules/global/python-debug-mcp-global.mdc`.

Статика и тесты — **python-mcp**, не debug-mcp.
