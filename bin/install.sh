#!/bin/sh

# Update git submodules

# Check if files need to be replaced
for f in *
do
	if [ -e ~/.$f ]
	then
		echo "Replacing \"~/.$f\""
	fi

	rm -i ~/.$f
	ln -s `pwd`/$f ~/.$f
done

