export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=()

source $HOME/.bash_aliases
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-ctrl-r/fzf-zsh-plugin.plugin.zsh

export PATH="$PATH:/home/farrugia/.local/bin"
