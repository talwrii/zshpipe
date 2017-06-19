


die() {
    echo >&2 "$*";
}

_zshpipe-delete() {
    echo "$*" | sed -E 's/\|[^|]+$//'
}

_zshpipe-test() {
    result=$(_zshpipe-delete "echo hello | tac | rev")
    [ "$result" '==' "echo hello | tac " ]  || die "assertion failed: $result"

}


zshpipe-delete-pipe() {
    BUFFER=$(_zshpipe-delete "$BUFFER")
}
zle -N zshpipe-delete-pipe

zshpipe-prev-pipe() {
    local first_char
    zle backward-char
    while [ -n "$LBUFFER" ]; do
        first_char=$(echo "$RBUFFER" | cut -b 1)
        if [ "$first_char" '=' "|" ]; then
            break
        fi;
        zle backward-char
    done;
}
zle -N zshpipe-prev-pipe

zshpipe-next-pipe() {
    local first_char
    zle forward-char
    while [ -n "$LBUFFER" ]; do
        first_char=$(echo "$RBUFFER" | cut -b 1)
        if [ "$first_char" '=' "|" ]; then
            break
        fi;
        zle forward-char
    done;
}
zle -N zshpipe-next-pipe




