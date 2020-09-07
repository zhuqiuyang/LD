curl -sSL https://get.daocloud.io/docker | sh

sudo apt-get remove docker docker-engine docker.io containerd runc

usermod -aG docker ace
