if which brew >/dev/null 2>&1 ; then
    [ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion
fi

export PATH=$HOME/bin:$PATH
