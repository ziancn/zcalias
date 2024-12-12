# Start of zcalias

# Faster ls
alias l="ls -l"
alias ltr="ls -ltr"

# Grep a CSV with table head
function csvgrep() {
    local pattern="$1"
    local file="$2"
    {
        sed 's/\r$//; s/\r/\n/g' "$file" | head -1
        sed 's/\r$//; s/\r/\n/g' "$file" | grep "$pattern"
    } | column -ts,
}
