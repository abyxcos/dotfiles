# ksh login profile

# History Options
HISTFILE=~/.histfile
#HISTCMD=1000
HISTSIZE=1000

# Key Bindings
#bindkey -e
#bindkey "[3~" delete-char

# Aliases
alias screen='screen -U'
alias ls='ls -F --si --color'

# Colors
. ~/.colors

HOST=`hostname -s`
PS1='
$bold_blue${USER}@$bold_black${HOST}$bold_blue:$bold_green${PWD/$HOME/\~}
$bold_blue\$$reset_color '
PS2='$bold_blue>$reset_color '
PS3='$bold_blue#?$reset_color '
