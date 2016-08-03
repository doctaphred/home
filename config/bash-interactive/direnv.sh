mkvenv() {
    echo 'layout python' >> .envrc
    direnv allow
}

mkvenv3() {
    echo 'layout python3' >> .envrc
    direnv allow
}

usevenv() {
    echo 'source venv/bin/activate' >> .envrc
    direnv allow
}
