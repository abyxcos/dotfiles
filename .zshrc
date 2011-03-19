# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt hist_ignore_all_dups

setopt autocd

# Key Bindings
bindkey -e
#stty erase 
bindkey "[3~" delete-char
alias screen='screen -U'

# Colors
export CLICOLOR="true"
#alias ls='ls --color'

# Pretty Prompt
autoload -U colors && colors
PS1_fg=$fg[magenta]
if [ `hostname -s` = "quicksilver" ]; then PS1_fg=$fg[blue]; fi
if [ `hostname -s` = "kiwi" ]; then PS1_fg=$fg[green]; fi
export PS1="%{$PS1_fg%}[%m] %~ $%{$reset_color%} "

# Completion
autoload -Uz compinit
compinit -C
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'l:|=* r:|=*'

