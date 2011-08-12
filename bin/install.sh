#!/bin/sh

# TODO: Update git submodules

# Check if files need to be replaced
for f in *
do
	if [ `grep $f .ignore` ]
	then
		echo "Ignoring $f"
	else
		if [ -e ~/.$f ]
		then
			echo "Replacing \"~/.$f\""
			diff ~/.$f $f
			rm ~/.$f
		fi

		ln -s `pwd`/$f ~/.$f
	fi
done

