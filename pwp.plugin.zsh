## show parents directory list
function pwp {
    local -i depth=0;
    currentDir=$(pwd);
    echo -e "$fg_bold[red]*: $currentDir$reset";

    while : ; do
       depth+=1;
       currentDir=$(dirname $currentDir);
       if [ $(( $depth%2 )) -eq 1 ]
       then
          echo -e "$fg[green]$depth: $currentDir$reset";
       else
          echo -e "$fg[yellow]$depth: $currentDir$reset";
       fi
       [[ $currentDir != "/" ]] || break;
    done
}

## easy moving through directories
function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}

alias ..='cd_up'

## interactive directory selection using pwp
function cdp() {
    local parents=()
    while IFS= read -r line; do
        parents+=("$line")
    done < <(pwp | awk -F': ' '/[0-9]+:/ {print $2}')

    local selected=$(printf "%s\n" "${parents[@]}" | fzf --reverse --prompt="Select directory > ")

    if [[ -n "$selected" ]]; then
        cd "$selected" || echo "Failed to change directory to $selected"
    fi
}