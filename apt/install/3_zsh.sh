### zsh

export ZSH="/usr/local/share/.oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i 's/(git)/(debian docker git nmap tmux sudo zsh-autosuggestions)/' $HOME/.zshrc

echo "$HOME/LD/dot/add.zshrc" >> ~/.zshrc

