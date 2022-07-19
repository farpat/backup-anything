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

# ZSH
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases
chsh -s $(which zsh)
```

# Docker
```bash
sudo apt remove -y docker docker-engine docker.io containerd runc
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo groupadd docker
sudo gpasswd -a $USER docker
```

# Node && NPM
```bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g npm-check-updates
```

# PHP && Composer
```bash
sudo apt purge --auto-remove ^php
sudo add-apt-repository ppa:ondrej/php
sudo apt install php8.0 php8.0-{mbstring,sqlite3,xml,curl}

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
```

# Google Drive
```
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse
google-drive-ocamlfuse
mkdir ~/google-drive
google-drive-ocamlfuse ~/google-drive

vim ~/.config/autostart/google-drive.desktop
```

```
# google-drive.desktop
[Desktop Entry]
Type=Application
Exec=google-drive-ocamlfuse /home/farrugia/google-drive
X-GNOME-Autostart-enabled=true
Name=Google Drive
Comment[fr_FR]=Montage du dossier distant Google Drive
```

# Other installations
```bash
sudo snap install phpstorm --classic
sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install libreoffice
sudo snap install vlc
sudo snap install discord
sudo snap install chromium
```
