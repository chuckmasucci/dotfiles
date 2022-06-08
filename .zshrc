# environment vars
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

# path
path+=('/home/chuck/.local/bin')

# plugins
plugins=(git vi-mode colorize cp tmux)

# zsh config
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking

# key bindings
bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

# vi mode
function zle-keymap-select zle-line-init zle-line-finish {
	case $KEYMAP in
		vicmd)		print -n '\033[0 q';; # block cursor
		viins|main) 	print -n '\033[6 q';; # line cursor
	esac
}
zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# load zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
