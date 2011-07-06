xrdb ~/.Xresources

urxvtd -q -f &		# Start urxvtd
scmpc &				# Start scrobbler
xbindkeys -n &		# Start mpdscribble

exec /usr/bin/scrotwm
