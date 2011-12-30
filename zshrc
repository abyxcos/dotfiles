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
set -o vi

# Useful Aliases
#alias ls='ls -F --si --color'
alias ls='ls -F -G'
alias screen='screen -U'

# Colors
export CLICOLOR="true"

# Pretty Prompt
setopt prompt_subst
autoload -U colors && colors

PROMPT='
%{$fg_bold[blue]%}%n@%{$fg_bold[black]%}%m%{$fg_bold[blue]%}:%{$fg_bold[green]%}%~%{$reset_color%}
%{$fg_bold[blue]%}$%{$reset_color%} '

# Completion
autoload -Uz compinit
compinit -C
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'l:|=* r:|=*'

