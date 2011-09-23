xrdb ~/.Xresources

urxvtd -q -f &		# Start urxvtd
scmpc &				# Start scrobbler
# Make media keys work
xbindkeys -n > /dev/null &
# Start message system
dunst -nb '#1793D1' -nf '#222222' -geometry 0x3-30+60 -to 10 > /dev/null &

exec /usr/local/bin/scrotwm
