if status is-interactive
    # --- Автозапуск tmux ---
    if not set -q TMUX
        exec tmux new-session -A -s main
    end
end
starship init fish | source
