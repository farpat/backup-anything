alias cleandk='docker rm -f $(docker ps -aq)'
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
alias cleanbranches="git fetch -ap --progress 2>&1 | command grep -E '\\[deleted\\]' | awk '{print \$NF}' | sed 's|origin/||' | while read -r branch; do \
    if [ \"\$(git branch --show-current)\" != \"\$branch\" ]; then \
        git branch -D \"\$branch\" 2>/dev/null || true; \
    else \
        echo \"Skipping currently checked out branch: \$branch\"; \
    fi; \
done"
alias ls="eza --icons auto"
alias cat="batcat --paging=never --theme=gruvbox-light"
alias grep="rg"
