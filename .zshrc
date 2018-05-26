# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
path+=('/usr/bin/')
path+=('~/.local/bin/')
path+=('/usr/lib/llvm-4.0/bin/')
path+=('~/.cargo/bin/')

fpath=(~/.zsh/completion $fpath)

export PATH="$HOME/.cargo/bin:$PATH"
PATH=$PATH:~/.local/bin

export "LD_LIBRARY_PATH=$HOME/.local/lib/dbg:$HOME/.local/lib/list:$HOME/.local/lib/chuck/darray:$HOME/.local/lib/bezier"
export EDITOR "vim"

# Path to your oh-my-zsh installation.
export ZSH=/home/chuck/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)
plugins+=(docker-machine)
plugins+=(vi-mode)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
killall xcape
source $HOME/.local/bin/keymap.sh

# User configuration
# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
    #export EDITOR='vim'
#else
    #export EDITOR='mvim'
#fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Vi mode helper
zle-keymap-select () {
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # the command mode for vi
            echo -ne "\e[2 q"
        else
            # the insert mode for vi
            echo -ne "\e[6 q"
        fi
    fi
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
echo -ne "\e[6 q"

# Spaceship prompt config
export SPACESHIP_CHAR_PREFIX=''
export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_VI_MODE_SHOW=false

# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=/home/chuck/.cfg/ --work-tree=/home/chuck'
alias nc='nvim ~/.config/nvim/init.vim'
alias zc='nvim ~/.zshrc'
alias xc='nvim ~/.Xresources'
alias tc='nvim ~/.tmux.conf'
alias ic='nvim ~/.config/i3/config'
alias cc='nvim ~/.config/compton.conf'
alias vim='nvim $1'
alias sc='source ~/.zshrc'
alias pc='nvim ~/.config/polybar/config'
alias ac='nvim ~/.config/alacritty/alacritty.yml'
alias spacegame='cd ~/Projects/spacegame/'
alias m='clear && make clean && make'
alias vless="nvim -u ~/.config/nvim/less.vim $1"
alias start="xdg-open $1"
alias fr-ui-patterns='cd ~/Projects/forgerock/web/ui-patterns'
alias fr-ui-react-admin='cd ~/Projects/forgerock/web/ui-react-admin'
alias fr-ui-styles='cd ~/Projects/forgerock/web/ui-styles'
alias clang-format='clang-format-6.0'

# autoload
autoload -Uz compinit && compinit -i

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
