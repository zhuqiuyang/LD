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

chsh -s /usr/bin/zsh

#### base app

##
# dnsutils: nsloopup dig;
# x11utils: setxkbmap .. 
# tcpdump: test tcp connection
##

$PKG install sudo git vim \
  build-essential gcc nvim ranger \
  dnsutils tmux htop \
  tcpdump

### 2. add host

# add domain to hosts, to install oh-my-zsh

cat ./etc/hosts >> /etc/hosts

### 3. useradd

useradd -m -s /usr/bin/zsh

# passwd

# if [ $(grep "$NU" /etc/sudoers | wc -l) -lt 1 ]; then
#  echo "$NU ALL=(ALL:ALL) ALL" >> /etc/sudoers
# fi

