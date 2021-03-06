#!/bin/bash

echo "Manjaro installations"

# Install pacman and prerequisities
sudo pacman -S base-devel
sudo pacman -S git
pacman -Syyu
pacman -S yay


# Update/optimize pacman mirrors
sudo pacman-mirrors -g
sudo pacman -Syyu

# TOOL : ZSH
sudo pacman -Syu zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# https://gist.github.com/yovko/becf16eecd3a1f69a4e320a95689249e


# TOOL : Install neofetch and cpu fetch 
sudo pacman -S neofetch
yay -S cpufetch



# TOOL : https://github.com/romkatv/powerlevel10k

# TOOL : SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# TOOL : SIGNAL
sudo snap install signal-desktop

# TOOL : EDITORS
sudo snap install sublime-text --classic
sudo snap install code --classic

# TOOL : JAVA 8 & 11
sdk list java
sdk install java 8.0.292.j9-adpt
sdk install java 11.0.10.j9-adpt


# TOOL : JETBRAINS
sudo snap install datagrip --classic
sudo snap install goland --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install webstorm --classic

# TOOL : FIGLET
sudo snap install figlet


# TOOL : DOCKER
sudo snap install docker
#sudo systemctl enable docker.service
#sudo systemctl enable containerd.service
#sudo groupadd docker
#sudo usermod -aG docker $USER

# TOOL : NODEJS
sudo pacman -S nodejs npm
node -v
npm -v

# TOOL : GOLANG
sudo pacman -S go


# TOOL : TEAMVIEWER
pamac build teamviewer
sudo teamviewer --daemon enable


# TOOL : RDP CLIENT
sudo snap install remmina

# GPU APP : GEFORCE
#sudo snap install geforcenow

# TOOL : SSH CLIENT
sudo snap install termius-app

# TOOL : POSTMAN
sudo snap install postman

# TOOL : ANDRIOD STUDIO
sudo snap install android-studio --classic

# TOOL : KUBERNETES CLI
sudo snap install kubectl --classic

# TOOL : ATOM
sudo snap install atom --classic

# TOOL : NOTEPAD++
sudo snap install notepad-plus-plus

# TOOL : MOBILE DEVELOPMENT
sudo snap install flutter --classic
flutter doctor

# TOOL : COMPARE TOOL
sudo snap install kompare

# TOOL : TODO APP
sudo snap install todolist

# TOOL : NOTE TOOL
sudo snap install notion-snap

# TOOL : Android File Transfer
sudo snap install android-file-transfer-linux

# TOOL : MS TEAMS
sudo snap install teams

# TOOL : OFFICE
sudo snap install libreoffice

# TOOL : CHROME
yay -S google-chrome

# TOOL : HTOP
sudo snap install htop --edge
sudo snap connect htop:hardware-observe
sudo snap connect htop:mount-observe
sudo snap connect htop:network-control

# TOOL : RESOLUTION MANAGER
sudo snap install custom-screen-resolution


# TOOL : POWER MANAGEMENT
pamac install tlp
sudo systemctl enable tlp --now
sudo pamac install tlpui
sudo pamac install laptop-mode-tools
sudo systemctl enable --now laptop-mode.service
sudo pamac install powertop



# TOOL : DRAWING EDITOR
sudo snap install krita

# TOOL : KEEPASS
sudo pamac install keepass

# TOOL : SYSTEM MONITOR FOR GNOME
sudo snap install gnome-system-monitor

# TOOL : SFTP
sudo snap install sftpclient

# TOOL : GESTURES
sudo gpasswd -a $USER input

echo "Add fallowing gesture definitions via Gesture manager app"

echo "#3 finger swipe down: xdotool key Super"
echo "#3 finger swipe up: xdotool key Super+a"
echo "#3 finger swipe right: xdotool key Alt+Left"
echo "#3 finger swipe left: xdotool key Alt+Right"
echo "#4 finger swipe up: xdotool key Ctrl+Alt+Down"
echo "#4 finger swipe down: xdotool key Ctrl+Alt+Up"
echo "#3 finger pinch in: xdotool key Super+h"
echo "#3 finger pinch out: xdotool key Alt+F10"

echo "please add these lines to your rc file

figlet \"be cool, work hard, keep calm\"
alias editrc='sudo nano ~/.zshrc'
alias loadrc='source ~/.zshrc && clear & clear'
alias powerrpt='sudo powertop --html'
alias open='nautilus'
"

