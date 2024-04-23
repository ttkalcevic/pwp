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