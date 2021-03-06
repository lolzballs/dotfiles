zmodload zsh/complist

autoload -U complist compinit colors vcs_info
colors
compinit

# Keep a lot of history
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY
# Also remember command start time and duration
setopt EXTENDED_HISTORY
# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS
# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE
# Enable autocompletion
zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':vcs_info:*' stagedstr '%F{green}●%f '
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f '
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f %u%c"

_setup_ps1() {
    vcs_info
    GLYPH="❯"
    [ "x$KEYMAP" = "xvicmd" ] && GLYPH="❮"
    PS1=" %(?.%F{blue}.%F{red})$GLYPH%f %(1j.%F{cyan}[%j]%f .)%F{blue}%~%f %(!.%F{red}#%f .)"
    RPROMPT="$vcs_info_msg_0_"
}
_setup_ps1

chpwd() {
    [[ -t 1 ]] || return
    case $TERM in
        sun-cmd) print -Pn "\e]l%~\e\\"
            ;;
        *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
            ;;
    esac
}

chpwd

# Vi mode
zle-keymap-select () {
    _setup_ps1
    zle reset-prompt
}
zle -N zle-keymap-select
zle-line-init () {
    zle -K viins
}
zle -N zle-line-init
bindkey -v

#
# Browser
#

export BROWSER=firefox


eval $( dircolors )

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# Common emacs bindings for vi mode
bindkey '\e[3~'   delete-char
bindkey '^A'      beginning-of-line
bindkey '^E'      end-of-line
bindkey '^R'      history-incremental-pattern-search-backward
# Tmux home/end
bindkey '\e[1~'      beginning-of-line
bindkey '\e[4~'      end-of-line
# Urxvt
bindkey '\e[7~'      beginning-of-line
bindkey '\e[8~' end-of-line

export TERM=xterm-256color

export LESS='-F -g -i -M -R -S -w -X -z-4'

export FZF_DEFAULT_COMMAND='rg --files'

# Customize to your needs...
alias vi=nvim
alias vim=nvim
alias xc="xclip -selection clipboard"
alias ls='ls --color=auto'
alias rm='rm -i'
alias mv='mv -i'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

