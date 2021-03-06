alias kl=kubectl
alias unhealthy-pods='kubectl get pods -o wide --all-namespaces | grep -v Running'
alias watch-events='kubectl get events --all-namespaces -w --watch-only'
alias kcc='kubectl config use-context'
alias kubeevents='kubectl get events --all-namespaces --sort-by='.metadata.creationTimestamp''

# Krew paths
export PATH=$HOME/.krew/bin:$PATH