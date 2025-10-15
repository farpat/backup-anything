# Some basics
```bash
sudo apt -y install wget tree curl vim snapd \
snapd-xdg-open ffmpeg htop xclip xsel flameshot \
eza bat rg
```

# Gnome extensions 
Installed extensions : 
- Dash to Panel bu charlesg99
- Docker by stickman_0x00
- Emoji Copy by FelipeFTN
- Places Status Indicator by fmuellner

# Eza
Fonts for icons: https://www.nerdfonts.com/font-downloads (or 0xProto.zip)


# Vim
```
sudo vim /etc/vim/vimrc.local

# vimrc.local
set whichwrap+=<,>,h,l

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
sudo apt install -y git
git config --global init.defaultBranch main
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
git clone https://github.com/unixorn/fzf-zsh-plugin.git ~/.zsh/zsh-ctrl-r

cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases
chsh -s $(which zsh)
```

# Docker && Docker compose
Follow instructions: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

To avoid being "sudoer" when using docker:
```
sudo gpasswd -a $USER docker
```

# Flameshot 
- Settings >
- Keyboard >
- View and Customize Shortcuts > 
- Custom Shortcuts > 
- " + " > 
```
Name : Flameshot
Command : flameshot gui 
Shortcut : <Touche Impr>
```

# Mouse shortcuts
- Install logiops via git clone : https://github.com/PixlOne/logiops 
- Follow building instructions
- Copy `/etc/logid.cfg`


For disable gnome screenshot tool: https://askubuntu.com/a/1426942

# DNSMasq
```bash
sudo apt install -y dnsmasq
sudo systemctl disable systemd-resolved
sudo systemctl start dnsmasq
sudo systemctl enable dnsmasq
```
```
# /etc/dnsmasq.conf

# DNS servers (Cloudflare)
server=1.1.1.1
server=1.0.0.1

# DNS server used when connected to the VPN
server=172.31.0.2

# Redirect all *.loc to 127.0.0.1
address=/.loc/127.0.0.1
```

# Other installations
```bash
sudo snap install spotify
sudo snap install vlc
sudo snap install postman
sudo snap install gemini-desktop
sudo snap install chatgpt-desktop
sudo snap install onlyoffice-desktopeditors
```

# Tips
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
- Bookmark with prompt : 
```
javascript:(
function() {
	var ticketId = window.prompt('Jira Ticket ID ?');
	if (ticketId) {
		window.open('https://any_url/' + ticketId);
	}
})();
```
- Repair font issue with Postman: [https://github.com/postmanlabs/postman-app-support/issues/10449#issuecomment-208310685](https://github.com/postmanlabs/postman-app-support/issues/10551#issuecomment-1012899546)
