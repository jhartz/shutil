# Add the various "bin" directories to our PATH

THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for BIN_DIR in "$THIS_DIR"/bin*; do
    PATH="$PATH:$BIN_DIR"
done
export PATH

unset BIN_DIR
unset THIS_DIR

