#!/bin/sh

# TODO: Update git submodules
git submodule sync
git submodule update

# Check if files need to be replaced
for f in *
do
	if [ `grep $f .ignore` ]; then
		echo "Ignoring $f"
	elif [ "`grep ^$f .relink`" ]; then
		g=`sed -r -n 's/^'$f' ~~ (.*)/\1/p' < .relink`
		echo "Linking \".$f\" to \"~/$g\""
		if [ -e ~/$g ]
		then
			echo "Replacing \"~/$g\""
			diff ~/$g $f
			rm ~/$g
		fi

		ln -s `pwd`/$f ~/$g
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

