### 1. root

apt update && apt upgrade

#### base app

apt install sudo git vim \
  build-essential gcc nvim ranger

### 2.add user

useradd ace

mkdir /home/ace

chown ace:ace /home/ace -R

usermod -d /home/ace ace

passwd ace

echo 'ace     ALL=(ALL:ALL) ALL' >> /etc/sudoers

### 3. switch user

su ace

cd /home/ace

### 4. zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sed -i 's/(git)/(git )/' /home/ace/.zshrc

cat ./home/deb.zshrc >> ~/.zshrc

### 5. ssr

#### mannual install
#### ssr config

### 6. spacevim

curl -sLf https://spacevim.org/install.sh | bash

# service ssh restart
