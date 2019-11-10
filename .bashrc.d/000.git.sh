# Git State
if which brew >/dev/null 2>&1 ; then
    [ -f $(brew --prefix)/share/gitprompt.sh ] && GIT_PROMPT_THEME=Default . $(brew --prefix)/share/gitprompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE=true
# Set PS1 for GIT status/branch info
green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)
PS1='\u@\[$green\]\h\[$reset\]:\w\[$blue\]$(__git_ps1)\[$reset\] \$ '

alias g='git'
alias ga='git add'
alias gap='git add --all --patch'
alias gA='git add --all'
alias gb='git branch'
alias gd='git diff'
alias gdw='git diff -w'
alias gdc='git diff --cached'
alias gfa='git fetch --all'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gp='git push'
alias gpo='git push origin'
alias gs='git status'
alias gu='git add --update'
alias gus='git unstage'
alias gl='git quicklog'
