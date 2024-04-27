set -gx EDITOR "nvim"
set -gx BROWSER "firefox"

set -gx QT_STYLE_OVERRIDE "adwaita-dark"
set -gx CARGO_TARGET_DIR "$HOME/.cache/cargo"
set -gx RUSTFLAGS "-C target-cpu=native"
set -gx LESS "-F -g -i -M -R -S -w -X -z-4"
set -gx GOPATH $HOME/.cache/go
set -gx GHCUP_USE_XDG_DIRS 1

abbr -a vi 'nvim'
abbr -a vim 'nvim'

alias rm 'rm -i'
alias mv 'mv -i'

setenv FZF_DEFAULT_COMMAND "rg --files"

set fish_greeting

if test -f $HOME/.config/fish/local_(hostname).fish
    source $HOME/.config/fish/local_(hostname).fish
end
