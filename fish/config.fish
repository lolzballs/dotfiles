set -gx EDITOR "nvim"
set -gx BROWSER "firefox"

set -gx QT_QPA_PLATFORMTHEME "qt5ct"
set -gx CARGO_TARGET_DIR "$HOME/.cache/cargo"
set -gx RUSTFLAGS "-C target-cpu=native"
set -gx LESS "-F -g -i -M -R -S -w -X -z-4"
set -gx GOPATH $HOME/.cache/go

set -gx PATH $HOME/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.npm-global/bin $PATH
set -gx PATH $HOME/.local/bin $PATH

abbr -a vi 'nvim'
abbr -a vim 'nvim'

alias rm 'rm -i'
alias mv 'mv -i'

setenv FZF_DEFAULT_COMMAND "rg --files"

if test "$TERM" = "xterm-termite"
    setenv TERM "xterm-256color"
end

set fish_greeting

if test -f $HOME/.config/fish/local_(hostname).fish
    source $HOME/.config/fish/local_(hostname).fish
end

if test -d $HOME/opt/miniconda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/bcheng/opt/miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
end

