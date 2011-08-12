#!/bin/sh

# Update git submodules

# Check if files need to be replaced
for f in *
do
	if [ -e ~/.$f ]
	then
		echo "Replacing \"~/.$f\""
		rm -i ~/.$f
		ln -s $f ~/.$f
	fi
done

