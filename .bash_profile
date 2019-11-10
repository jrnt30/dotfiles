#!/bin/bash
# Source all the common files
for FN in $HOME/.bashrc.d/*.sh; do
  source "$FN"
done

# Allow private file syncing for some systems
for FN in $HOME/Dropbox/sync/.bashrc.d/*.sh; do
    [[ -f $FN ]] && source "$FN"
done

# Python
export PATH=$HOME/.local/bin:$PATH

function tmuxSshMasters() {
  for i in $(kubectl get nodes -l kubernetes.io/role=master -o jsonpath='{.items[*].metadata.name}'); do
    tmux split-window "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no admin@$i "
  done
}

alias f1="awk '{print \$1}'"
alias f2="awk '{print \$2}'"
alias gpgdecrypt='gpg --decrypt-files'
alias gpge='gpg --edit-key'
alias gpgencrypt='gpg --default-recipient-self --armor --encrypt-files'
alias gpgrk='gpg --recv-keys'

alias k='tree'
alias l="ls -lh"
alias ll="l -a"
alias ltr='ls -ltr'

alias scp='scp -C -p'
alias tmux="TERM=screen-256color-bce tmux"
alias tree="tree -F -A -I CVS"

alias vi='vim'

ulimit -c 0
