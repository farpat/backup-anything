# Some basics
```bash
sudo apt -y install wget tree curl vim snapd snapd-xdg-open ffmpeg htop terminator xclip xsel flameshot pipx
```

# SSH
```bash
ssh-keygen -t rsa -b 4096 -C <email>

ssh-add "private key" #if it's necessary

pbcopy < ~/.ssh/id_rsa.pub
```
Add this key in gitlab and github (delete the old key if necessary)

# GIT / PRETTY GIT DIFF
```bash
sudo apt install -y git git-flow
git config --global user.email <email>
git config --global user.name <name>
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.lg "log --graph --abbrev-commit --pretty=tformat:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%an %ad)%Creset'"
git config --global pull.rebase false
git config --global core.editor vim
```

Follow instructions for pretty git diff: https://delicious-insights.com/fr/articles/git-protip-diff-so-fancy/

# ZSH (and oh-my-zsh with plugins)
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases
chsh -s $(which zsh)
```

# Docker && Docker compose
Follow instructions for docker: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
Follow instructions 
Follow instructions for docker-compose: https://docs.docker.com/compose/install/compose-plugin/#install-the-plugin-manually

# Node && NPM
Follow instructions: https://github.com/nodesource/distributions/blob/master/README.md#debinstall

# PHP && Composer
```bash
# For PHP 
sudo apt purge --auto-remove ^php
LC_ALL=C.UTF-8 sudo add-apt-repository ppa:ondrej/php 
sudo apt install php8.1 php8.1-{mbstring,sqlite3,xml,curl}

# For composer, follow instructions: https://getcomposer.org/download/
```

# Google Drive
```
# Install Google Drive (google-drive-ocamlfuse)
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse
google-drive-ocamlfuse
mkdir ~/google-drive
google-drive-ocamlfuse ~/google-drive

vim ~/.config/autostart/google-drive.desktop
```

```
# Add google drive on start
# ~/.config/autostart/google-drive.desktop
[Desktop Entry]
Type=Application
Exec=google-drive-ocamlfuse /home/farrugia/google-drive
X-GNOME-Autostart-enabled=true
Name=Google Drive
Comment[fr_FR]=Montage du dossier distant Google Drive
```

# Flameshot 
- Paramètres >
- Clavier >
- Voir et personnaliser les raccourcis > 
- Raccourcis personnalisés > 
- " + " > 
```
Nom : Flameshot
Commande : flameshot gui 
Raccourci : <Touche Impr>
``` 

# Rich (rich print)
```bash 
pipx install rich-cli
```

# Other installations
```bash
sudo snap install phpstorm
sudo snap install code
sudo snap install spotify
sudo snap install libreoffice
sudo snap install vlc
sudo snap install discord
```

# Other precisions 
- To add DNS server :
``` 
echo 'nameserver 192.168.11.254' | sudo tee -a /etc/resolv.conf && cat /etc/resolv.conf 
``` 
- To map `"square keyboard touch"` to `"` : 
```
xmodmap -e "keycode 49 = dead_grave"
``` 
- To config SSH servers via an example : 
https://linuxize.com/post/using-the-ssh-config-file/#ssh-config-file-example
- Repair Ubuntu store : 
```
sudo snap remove snap-store && sudo snap install snap-store
```
