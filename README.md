# Initial Setups

This is my ManjaroLinux installation set.


# Pacman and prerequisities
```zsh
sudo pacman -S base-devel
sudo pacman -S git
pacman -Syyu
pacman -S yay
```

# Update/optimize pacman mirrors
```zsh
sudo pacman-mirrors -g
sudo pacman -Syyu
```

# ZSH
```zsh
sudo pacman -Syu zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
> Please use this link for detailed configurations : https://gist.github.com/yovko/becf16eecd3a1f69a4e320a95689249e


# Neofetch and Cpufetch 
```zsh
sudo pacman -S neofetch
yay -S cpufetch
```

# Sdkman
```zsh
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
```

# Signal
```zsh
sudo snap install signal-desktop
```

# Programming Editors
```zsh
sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install atom --classic
sudo snap install notepad-plus-plus

sudo snap install datagrip --classic
sudo snap install goland --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install webstorm --classic
```

# Figlet
```zsh
sudo snap install figlet
```

# Docker
```zsh
sudo snap install docker
#sudo systemctl enable docker.service
#sudo systemctl enable containerd.service
#sudo groupadd docker
#sudo usermod -aG docker $USER
```
# Programming Languages
### NodeJs
```zsh
sudo pacman -S nodejs npm
node -v
npm -v
```

### Golang
```zsh
sudo pacman -S go
```

### Java 8 & 11
```zsh
sdk list java
sdk install java 8.0.292.j9-adpt
sdk install java 11.0.10.j9-adpt
```

# TeamViewer
```zsh
pamac build teamviewer
sudo teamviewer --daemon enable
```

# Rdp Client
```zsh
sudo snap install remmina
```

# GEFORCE Gpu App
```zsh
sudo snap install geforcenow
```

# Ssh Client
```zsh
sudo snap install termius-app
```

# Postman
```zsh
sudo snap install postman
```


# Kubernetes Cli
```zsh
sudo snap install kubectl --classic
```

# Mobile Development
### Android Studio
```zsh
sudo snap install android-studio --classic
```

### Flutter
```zsh
sudo snap install flutter --classic
flutter doctor
```

# Compare Tool
```zsh
sudo snap install kompare
```

# Todo App
```zsh
sudo snap install todolist
```

# Note Tool
```zsh
sudo snap install notion-snap
```

# Android File Transfer
```zsh
sudo snap install android-file-transfer-linux
```

# Microsoft Teams
```zsh
sudo snap install teams
```

# Office
```zsh
sudo snap install libreoffice
```

# Chrome
```zsh
yay -S google-chrome
```

# Htop
```zsh
sudo snap install htop --edge
sudo snap connect htop:hardware-observe
sudo snap connect htop:mount-observe
sudo snap connect htop:network-control
```

# Some Resource Tools
### Resolution Manager
```zsh
sudo snap install custom-screen-resolution
```

### Power Management
```zsh
pamac install tlp
sudo systemctl enable tlp --now
sudo pamac install tlpui
sudo pamac install laptop-mode-tools
sudo systemctl enable --now laptop-mode.service
sudo pamac install powertop
```

### System Monitor
```zsh
sudo snap install gnome-system-monitor
```

# Drawing Tool
```zsh
sudo snap install krita
```

# Password Store
```zsh
sudo pamac install keepass
```

# Sftp Tool
```zsh
sudo snap install sftpclient
```

# Aliases & RC file content

figlet \"be cool, work hard, keep calm\"
alias editrc='sudo nano ~/.zshrc'
alias docker='sudo docker'
alias loadrc='source ~/.zshrc && clear & clear'
alias powerrpt='sudo powertop --html'
alias open='nautilus'


