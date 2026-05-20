set -gx EDITOR "{{ editor }}"

if status is-interactive
    set -g fish_greeting

    starship init fish | source
    fzf --fish | source
    fbtoggl completions fish | source
    mcfly init fish | source
    fnm env --use-on-cd --shell fish | source
    nanite shell init fish | source
end
