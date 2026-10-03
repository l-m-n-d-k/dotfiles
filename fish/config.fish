if status is-interactive
    if not set -q TMUX
        exec tmux new-session -A -s main
    end
end
starship init fish | source
alias ls="eza --icons"
