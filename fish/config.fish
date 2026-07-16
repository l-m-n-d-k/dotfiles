if status is-interactive
    # --- Настройка визуализации Git (лучше вынести в начало) ---
    set -g __fish_git_prompt_showdirtystate 1           # Показывать '*' если есть изменения
    set -g __fish_git_prompt_showuntrackedfiles 1      # Показывать '%' если есть новые файлы
    set -g __fish_git_prompt_showstashstate 1           # Показывать '$' если есть заначка (stash)
    set -g __fish_git_prompt_color_branch yellow        # Цвет ветки — желтый
    set -g __fish_git_prompt_color_upstream_ahead green # Цвет если мы опережаем origin
    set -g __fish_git_prompt_char_dirty_state ' ✗'      # Красивый крестик для изменений
    set -g __fish_git_prompt_char_clean_state ' ✓'     # Галочка, если всё закоммичено
end
starship init fish | source

# opencode
fish_add_path /home/lmndk/.opencode/bin
