export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:/usr/local/Cellar/gems/1.8/bin:$PATH

if [ -f /usr/local/bin/brew ]; then export GEM_HOME="$(brew --prefix)/Cellar/gems/1.8"; fi
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export NETHACKOPTIONS="DECgraphics,time,hilite_pet,noautopickup,showexp,color"

