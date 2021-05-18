alias dc='docker-compose'
alias dcr='dc run --rm'
alias dce='dc exec'
alias open='xdg-open'
alias myip="curl http://ipecho.net/plain; echo"
function acp() {
        git add .
        git commit -m "$1"
        git push
}
alias uuaa='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean'
alias pbcopy='xclip -selection clipboard'
alias copy_my_public_key='pbcopy < ~/.ssh/id_rsa.pub'
