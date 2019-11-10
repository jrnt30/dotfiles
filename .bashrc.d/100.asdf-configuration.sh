if which brew >/dev/null 2>&1 ; then
    export ASDF_DIR=$(brew --prefix asdf)
fi

source $(brew --prefix asdf)/asdf.sh