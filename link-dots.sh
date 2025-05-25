#/usr/bin/env

git submodule update --init --recursive

# Get the absolute path to the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Loop through all subdirectories in the script directory
for dir in "$SCRIPT_DIR"/*/; do
    # Remove trailing slash and get directory name
    dir="${dir%/}"
    name="$(basename "$dir")"

    target="$HOME/.config/$name"

    # Skip if target already exists (optional: force overwrite if you want)
    if [ -e "$target" ]; then
        echo "Skipping '$name' – already exists at $target"
    else
        echo "Linking $name -> $target"
        ln -s "$dir" "$target"
    fi
done

