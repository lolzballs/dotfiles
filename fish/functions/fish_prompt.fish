function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)" $USER"(set_color white)'@'(set_color yellow)(prompt_hostname)
    end

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)' # '
    else
        echo -n (set_color blue)' ❯ '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color normal
end
