#!/bin/bash

distro_id=$(grep '^ID=' /etc/os-release | cut -d'=' -f2 | tr -d '"')

if [[ "$distro_id" == "debian" || "$distro_id" == "ubuntu" || "$distro_id" == "linuxmint" ]]; then
    sudo apt install git zsh curl wget -y
    
elif [[ "$distro_id" == "arch" || "$distro_id" == "manjaro" || "$distro_id" == "endeavouros" ]]; then
    sudo pacman -Sy zsh git curl wget --noconfirm
    
elif [[ "$distro_id" == "fedora" || "$distro_id" == "rocky" || "$distro_id" == "almalinux" ]]; then
    sudo dnf install git zsh curl wget
else
    echo "???: $distro_id"
fi


echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing nerdfont - MesloLGS NF Regular"
sudo wget -O "/usr/share/fonts/MesloLGS NF Regular.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"


echo "Coping files"
cp .zshrc ~
cp .p10k.zsh ~
