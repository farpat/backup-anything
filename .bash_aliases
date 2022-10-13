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
function d() {
    ( cd ~/www/docker && $* )
}
