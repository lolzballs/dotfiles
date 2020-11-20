function fish_right_prompt
    set -g __fish_git_prompt_showcolorhints 'yes'
    set -g __fish_git_prompt_showdirtystate 'yes'
    echo -n (fish_git_prompt)
end
