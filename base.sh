### 0. PKG Detect
PKG=""

if [ -n "$(which yum 2> /dev/null)" ]
  then PKG="yum"
elif [ -n "$(which apt-get 2> /dev/null)" ]
  then PKG="apt"
fi

echo "PKG use ${PKG}"

### 1. root config

$PKG update && $PKG upgrade

#### base app

##
# dnsutils: nsloopup dig;
# x11utils: setxkbmap .. 
# tcpdump: test tcp connection
##

$PKG install sudo git vim \
  build-essential gcc nvim ranger \
  dnsutils tmux htop \
  tcpdum

### 2. add host

# add domain to hosts, to install oh-my-zsh

cat ./etc/hosts >> /etc/hosts

### 3. zsh(root & NU)

export ZSH="/usr/local/share/.oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/(git)/(debian docker git nmap tmux sudo)/' .zshrc

# copy root dir
if [ $(grep "ZSHRC_APPEND_START" deb.zshrc | wc -l) -lt 1 ];
  then
  cat ./home/deb.zshrc >> ~/.zshrc
fi

### 3.add user

echo -n "Enter New UserName:"
read NU

useradd –d /home/$NU -m $NU

passwd $NU

echo "$NU     ALL=(ALL:ALL) ALL" >> /etc/sudoers

echo "$NU CREATE OK."

ln .zshrc /home/$NU/.zshrc
chown $NU:$NU /home/$NU/.zshrc
su - $NU

### 5. ssr

#### mannual install
#### ssr config

### 6. spacevim

curl -sLf https://spacevim.org/install.sh | bash

# service ssh restart

### 7. tmux
# cp ./home/.tmux.conf /home/$NU/.tmux.conf

