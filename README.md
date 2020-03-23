# Some basics
```bash
sudo apt -y install wget tree curl vim snapd snapd-xdg-open ffmpeg htop terminator
#For webcam I must think to switch the activation with `fn+F6`
```

# SSH
```bash
ssh-keygen -t rsa -b 4096 -C "<email>"

ssh-add "private key" (if it's necessary)

cat ~/.ssh/id_rsa.pub
```
Add this key in gitlab and github (delete the old key if necessary)

# GIT
```bash
sudo apt install -y git git-flow
git config --global user.email "<email>"
git config --global user.name "<name>"
git config --global alias.st status
git config --global alias.co checkout
git config --global core.editor vim
```

# ZSH
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
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
#use " disco " if " eoan " doesn't work 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo groupadd docker
sudo gpasswd -a $USER docker
```

# Node && NPM
```bash
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm i -g laravel-echo-server npm-check-updates
```

# PHP && Composer
```bash
sudo add-apt-repository ppa:ondrej/php
sudo apt install php7.4 php7.4-{json,mbstring,sqlite3,xml}

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
```

# Other installations
```bash
sudo snap install phpstorm --classic
sudo snap install code --classic
sudo snap install spotify --classic
sudo snap install libreoffice
sudo snap install vlc
sudo snap install discord
sudo snap install skype
sudo snap install chromium
sudo snap install caprine
```