
if status is-interactive
    set -g fish_greeting ""

    abbr -a g git
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit
    abbr -a gp git push
    abbr -a gl git log --oneline --graph --decorate
    abbr -a dc docker compose
    abbr -a .. cd ..
    abbr -a ... cd ../..

    alias ll "ls -lah"
    alias la "ls -A"
    alias grep "grep --color=auto"

    if type -q zoxide
        zoxide init fish | source
    end
    if type -q fzf
        fzf --fish | source
    end
    if type -q starship
        starship init fish | source
    end
    if type -q direnv
        direnv hook fish | source
    end
end
