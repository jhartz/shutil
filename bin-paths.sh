# Add the various "bin" directories to our PATH

THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for BIN_DIR in "$THIS_DIR"/bin*; do
    export PATH="$PATH:$BIN_DIR"
done

unset BIN_DIR
unset THIS_DIR

