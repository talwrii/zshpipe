# Zshpipe

Zsh functions to interact with pipe lines.

# Using

```
source zshpipe.zsh
bindkey '\ef' zshpipe-delete-pipe
bindkey '\eh' zshpipe-prev-pipe
bindkey '\el' zshpipe-next-pipe

```

M-f to delete a pipe
M-h and M-l to move forward and backward pipe lines components.

# Alternatives and prior work

A more general approach is to use vi mode (set -o vi) and then use vi's extended motions `dF|`, `F|` and `f|` respectively.
Even as a vim user I find modeful editing at the shell gets in my way. This can be partly alleviated by using  vi selectively by using emacs mode and having a binding for vi mode `bindkey '\ev' vi-cmd-mode`.

# Caveats

This does not handle quoted pipe characters well.

