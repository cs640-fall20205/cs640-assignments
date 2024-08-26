reuse() {
    if ! which pipx
    then
        brew install pipx
    fi
    pipx run reuse "$@"
}
