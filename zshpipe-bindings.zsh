


filename="(%):-%N"
here=$(dirname "$filename")

source "$here/zshpipe.zsh"

bindkey '\ef' zshpipe-delete-pipe
bindkey '\eh' zshpipe-prev-pipe
bindkey '\el' zshpipe-next-pipe
