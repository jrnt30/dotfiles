if which brew >/dev/null 2>&1 ; then
    eval "$($(brew --prefix)/bin/starship init bash)"
fi