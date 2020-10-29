### zsh

export ZSH="/usr/local/share/.oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/(git)/(debian docker git nmap tmux sudo)/' $HOME/.zshrc

echo "$HOME/LD/dot/add.zshrc" >> ~/.zshrc

