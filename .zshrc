export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=()

source $HOME/.bash_aliases
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-ctrl-r/fzf-zsh-plugin.plugin.zsh

function preexec() {
  timer=$(($(date +%s%0N)*0.000000001))
}

function precmd() {
  if [ $timer ]; then
    now=$(($(date +%s%0N)*0.000000001))
    elapsed=$(echo $(($now-$timer)) | awk '{printf "%.3f", $1}')

    export RPROMPT="%F{cyan}${elapsed}s %{$reset_color%}"
    unset timer
  fi
}

export PATH="$PATH:/home/farrugia/.local/bin"
