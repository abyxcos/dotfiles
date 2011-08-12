xrdb ~/.Xresources

urxvtd -q -f &		# Start urxvtd
scmpc &				# Start scrobbler
xbindkeys -n &		# Make media keys work

exec /usr/bin/scrotwm
