# Add the various "bin" directories to our PATH

if [ "$BASH_SOURCE" ]; then
    REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

    for BIN_DIR in "$REPO_ROOT"/bin*; do
        if [ -d "$BIN_DIR" ]; then
            PATH="$PATH:$BIN_DIR"
        fi
    done
    export PATH

    unset BIN_DIR
    unset REPO_ROOT
fi
