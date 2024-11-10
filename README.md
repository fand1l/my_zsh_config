# My zsh config

Dependencies:
```
zsh
ohmyzsh
zsh-syntax-highlighting
powerlevel10k
nerdfont
```

## Install (with my script)
```sh
git clone https://github.com/fand1l/my_zsh_config
cd my_zsh_config
chmod +x install.sh
./install.sh
```


## Install dependencies (manual)
### zsh
Install from your package manager:
ArchLinux - `pacman -Sy zsh`
Debian/Ubuntu - `apt install zsh`
Fedora - `dnf install zsh`

### ohmyzsh
Git - https://github.com/ohmyzsh/ohmyzsh

Install:
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### zsh-syntax-highlighting
Git - https://github.com/zsh-users/zsh-syntax-highlighting

Install:
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### powerlevel10k
Git - https://github.com/romkatv/powerlevel10k

Install:
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### nerdfont
Go to https://www.nerdfonts.com/font-downloads and download the font you like
Install the font and select it in the terminal settings (or configuration)
I use MesloLGS Nerd Font from https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts


## Install config
```sh
git clone https://github.com/fand1l/my_zsh_config
cd my_zsh_config
cp .zshrc ~
cp .p10k.zsh ~
```
