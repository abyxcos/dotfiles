# Environment variables
export PATH=$HOME/bin:$PATH

export EDITOR=vim

export NETHACKOPTIONS="DECgraphics,time,hilite_pet,noautopickup,showexp,color"
export WINEARCH=win32

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

# Useful Aliases
alias ls='ls -F --si --color'

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

