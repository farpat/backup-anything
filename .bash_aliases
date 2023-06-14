alias open='xdg-open'
alias myip="curl http://ipecho.net/plain; echo"
function ac() {
    git add .
    git commit -m "$1"
}
function acp() {
    ac $1
    git push
}
alias uuaa='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean && sudo snap refresh'
alias pbcopy='xclip -selection clipboard'
alias copy_my_public_key='pbcopy < ~/.ssh/id_rsa.pub'
function dk() {
    ( cd ~/www/docker && $* )
}
cleanup_branches() {
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    LIGHT_BLUE='\033[0;94m'
    BOLD='\033[1m'
    NO_COLOR='\033[0m' 

    echo -e "${LIGHT_BLUE}Pruning and cleaning branches${NO_COLOR}"
    git fetch --prune
    git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d 2> /dev/null
    echo -e "${GREEN}Branches pruned and cleaned${NO_COLOR}"
}

USER_ID=$(id -u)
export USER_ID
GROUP_ID=$(id -g)
export GROUP_ID
