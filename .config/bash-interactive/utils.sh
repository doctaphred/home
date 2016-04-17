trim-whitespace () {
    # Remove trailing whitespace of all files recursively.
    # Ignores .git and .svn folders and their contents.
    # http://stackoverflow.com/a/5130044/1752050
    export LANG=C
    find . -not \( -name .svn -prune -o -name .git -prune \) -type f -print0 | xargs -0 sed -i '' -E "s/[[:space:]]*$//"
    # find dir -type f -exec sed -i 's/ *$//' '{}' ';'
}

setmic () {
    osascript -e "tell application \"System Events\" to set volume input volume $1"
}

# Mute microphone
alias mm='setmic 0'
# Unmute microphone
alias umm='setmic 50'

# Copy working directory to clipboard
cpwd () {
    echo $PWD | pbcopy
}

# NOTE: the built-in `open` program handles URLs!

# Open Google Chrome
chrome () {
    open -a "Google Chrome" $@
}

# Open Firefox
firefox () {
    open -a Firefox $@
}

# Open Safari
safari () {
    open -a Safari $@
}

path () {
    echo $PATH | tr -s ":" "\n"
}
