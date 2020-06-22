# LD
LinuxDist

```sh

#排列中国镜像速度，选择一个
sudo pacman-mirrors -i -c China -m rank

# 添加清华源（假设上面选的是清华源）
[archlinuxcn]
SigLevel= TrustedOnly
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch

# 安装archlinuxcn-keyring
sudo pacman -S archlinuxcn-keyring

# 更新系统
sudo pacman -Syyu

sudo pacman -S yay

# AUR
yay --save --aururl aur.tuna.tsinghua.edu.cn
```

### git,zsh,vim

```sh
sudo pacman -S git vim

sudo pacman -S zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s /bin/zsha
```
