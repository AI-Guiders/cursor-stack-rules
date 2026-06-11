# Roslyn MCP в C# проекте

Если в Cursor подключён MCP **roslyn** (user-roslyn или иначе), использовать его вместо угадывания и разбора логов.

**Когда использовать:**
- Ошибки компиляции / предупреждения — `roslyn_get_diagnostics` (solution/project, опционально file_path). Не парсить вывод `dotnet build`.
- Исправление по диагностике — взять file:line:column из ответа get_diagnostics → `roslyn_get_code_actions` по этой позиции → `roslyn_apply_code_action` с нужным action_index (и при необходимости fix_all_scope). Не писать патч вручную, если есть применимый code action.
- Навигация «где объявлен тип/метод» — `roslyn_go_to_definition` (solution, file, line, column).
- Структура файла (классы, методы, строки) — `roslyn_get_document_symbols` (file_path).
- Символ под позицией — `roslyn_get_symbol_at_position` (file_path, line, column; solution — для Qualified).
- Все вхождения символа — `roslyn_find_usages`.
- Переименование — `roslyn_rename` (solution, file, line, column, new_name; apply: true для записи).

Параметры solution/project — путь к .sln или .csproj этого проекта. Строки и столбцы — 1-based.
