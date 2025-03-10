alias cleandk='docker rm $(docker ps -a -q) -f'
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
alias composer="docker run --rm --interactive --tty --volume $PWD:/app --user $(id -u):$(id -g) composer/composer"
alias ls="eza --icons auto"
alias cat="batcat --paging=never --theme=gruvbox-light"
alias grep="rg"
