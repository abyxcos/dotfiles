# ksh login profile

# History Options
HISTFILE=~/.histfile
HISTCMD=1000
HISTSIZE=1000

# Editing mode
set -o vi
set -o vi-tabcomplete

# Aliases
alias screen='screen -U'
alias ls='ls -F --si --color'

# Colors
. ~/.colors

HOST=`uname -n`

# Only works on ksh93, not pdksh
#PS1='
#$bold_blue${USER}@$bold_black${HOST%%.*}$bold_blue:$bold_green${PWD/$HOME/\~}
#$bold_blue\$$reset_color '

PS1='
$bold_blue${USER}@$bold_black${HOST%%.*}$bold_blue:$bold_green${PWD}
$bold_blue\$$reset_color '

