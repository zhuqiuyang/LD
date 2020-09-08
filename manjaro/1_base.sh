# Manjaro

$HOME=/home/$USER
$PWD=$(pwd)


# 1. mirror
sudo pacman-mirrors -i -c China -m rank


# 2. Syy
sudo pacman -Syyu

# 3. yay
sudo pacman -S yay

# AUR
yay --save --aururl aur.tuna.tsinghua.edu.cn

# 4. hosts

cat $PWD/etc/host >> /etc/hosts

# 5. zsh

yay -S zsh

chsh -s /bin/zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 6. base app

yay -S git vim neovim ranger redshift
pacman -S visual-studio-code-bin # vscode

curl -sLf https://spacevim.org/cn/install.sh | bash

# 7. rime

pacman -S fcitx  fcitx-im  fcitx-configtool fcitx-rime
