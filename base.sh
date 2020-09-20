### 0. PKG Detect
PKG=""

if [ -n "$(which yum 2> /dev/null)" ]
  then PKG="yum"
elif [ -n "$(which apt-get 2> /dev/null)" ]
  then PKG="apt"
fi

echo "PKG use ${PKG}"

### 1. root

$PKG update && $PKG upgrade

#### base app

##
# dnsutils: nsloopup dig;
# x11utils: setxkbmap .. 
##

$PKG install sudo git vim \
  build-essential gcc nvim ranger \
  dnsutils tmux htop

### 2.add user

useradd ace

mkdir /home/ace

chown ace:ace /home/ace -R

usermod -d /home/ace ace

passwd ace

echo 'ace     ALL=(ALL:ALL) ALL' >> /etc/sudoers

### 3. switch user

// add domain to hosts, to install oh-my-zsh

cat ./etc/hosts >> /etc/hosts


su ace

cd /home/ace

### 4. zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sed -i 's/(git)/(git )/' /home/ace/.zshrc

# copy root dir
# cat ./home/deb.zshrc >> ~/.zshrc

### 5. ssr

#### mannual install
#### ssr config

### 6. spacevim

curl -sLf https://spacevim.org/install.sh | bash

# service ssh restart

### 7. tmux
cp ./home/.tmux.conf /home/ace/.tmux.conf
