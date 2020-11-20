abbr -a vi 'nvim'
abbr -a vim 'nvim'

alias rm 'rm -i'
alias mv 'mv -i'

setenv FZF_DEFAULT_COMMAND "rg --files"

if test "$TERM" = "xterm-termite"
    setenv TERM "xterm-256color"
end

set fish_greeting

if test -d $HOME/opt/miniconda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/bcheng/opt/miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
end

