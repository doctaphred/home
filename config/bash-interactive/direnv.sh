direnv-python() {
    echo 'layout python' >> .envrc
    direnv allow
}

direnv-python3() {
    echo 'layout python3' >> .envrc
    direnv allow
}

direnv-usevenv() {
    echo 'source venv/bin/activate' >> .envrc
    direnv allow
}
