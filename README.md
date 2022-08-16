# Some basics
```bash
sudo apt -y install wget tree curl vim snapd snapd-xdg-open ffmpeg htop terminator xclip xsel
```

# SSH
```bash
ssh-keygen -t rsa -b 4096 -C <email>

ssh-add "private key" #if it's necessary

pbcopy < ~/.ssh/id_rsa.pub
```
Add this key in gitlab and github (delete the old key if necessary)

# GIT
```bash
sudo apt install -y git git-flow
git config --global user.email <email>
git config --global user.name <name>
git config --global alias.st status
git config --global alias.co checkout
git config --global pull.rebase false
git config --global core.editor vim
```

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
Follow instructions for docker-compose:https://docs.docker.com/desktop/install/ubuntu/

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

# Other installations
```bash
sudo snap install phpstorm
sudo snap install code
sudo snap install spotify
sudo snap install libreoffice
sudo snap install vlc
sudo snap install discord
```
