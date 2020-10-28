curl -sSL https://get.daocloud.io/docker | sh

sudo apt-get remove docker docker-engine docker.io containerd runc

usermod -aG docker ace

# install docker-compose
wget https://github.com/docker/compose/releases/download/1.27.4/docker-compose-Linux-x86_64
