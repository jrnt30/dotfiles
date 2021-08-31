# Git State
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
alias gitCron='git branch --sort=-committerdate'
gch() {
 git checkout "$(git branch --all | fzf| tr -d '[:space:]')"
}