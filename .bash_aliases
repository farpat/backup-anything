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
alias php="docker run --rm --interactive --tty --volume $PWD:/app -w /app --user $(id -u):$(id -g) php:8.4-cli php"
alias composer="docker run --rm --interactive --tty --volume $PWD:/app --user $(id -u):$(id -g) composer/composer"
alias ls="eza --icons"
alias cat="batcat --paging=never --theme=gruvbox-light"
alias rg="grep"
