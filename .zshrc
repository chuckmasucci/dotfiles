# Enviornmental variables
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export DESKTOP_SESSION="i3"
export XDG_DATA_HOME="$HOME/.local/share"

# Path
path+=('/home/chuck/.local/bin')
path+=('/usr/lib/w3m')

# Plugins
plugins=(git vi-mode colorize cp tmux fzf)

# Theme
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# User configuration
# Key bindings
bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Aliases
alias i3config="$EDITOR ~/.config/i3/config"
# alias list-fonts="kitty + list-fonts --psnames"
alias lf="fc-list : family | sort | uniq"
alias nvimconfig="cd ~/.config/lvim/ && $EDITOR config.lua"
alias nvim="lvim"
alias picomconfig="$EDITOR ~/.config/picom/picom.conf"
alias tmuxconfig="$EDITOR ~/.tmux.conf.local"
alias zshconfig="$EDITOR ~/.zshrc"

# Vi mode
function zle-keymap-select zle-line-init zle-line-finish {
  case $KEYMAP in
      vicmd)      print -n '\033[0 q';; # block cursor
      viins|main) print -n '\033[6 q';; # line cursor
  esac
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
