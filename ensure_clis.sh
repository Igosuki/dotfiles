
function ensure() {
    if ! [ -x "$(command -v $1)" ]; then
    echo "Error: $1 is not installed." >&2
    exit 1
    fi
}

# see https://switowski.com/blog/favorite-cli-tools
for program in "z" "fzf" "fd" "rg" "htop" "glances" "asciinema" "ctop" "lazydocker" "colordiff" "bat" "httpie" "tldr" "exa" "litecli" "pgcli" "ncdu" "navi" "xsv" "hyperfine" "bandwhich" "ffsend" "tokei" "pastel" 
do
    ensure $program
done

