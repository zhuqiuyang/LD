### 1. root

apt-get update

apt-get upgrade

apt-get install sudo vim


##2.  add user

useradd ace

mkdir /home/ace

chown ace:ace /home/ace -R

usermod -d /home/ace ace

passwd ace

vim /etc/sudoers

### 3. switch user
su ace


### 4. zsh

sudo apt-get intall git

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sed -i 's/(git)/(git )/' /home/ace/.zshrc

###

service ssh restart