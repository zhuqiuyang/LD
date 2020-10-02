# 1.func
start_proxy() {
	export http_proxy=socks5://127.0.0.1:1080
	export https_proxy=socks5://127.0.0.1:1080
}
stop_proxy() {
	unset http_proxy
	unset https_proxy
}

# 2.alias
alias la="ls -a"
alias ll="ls -al"
alias r="ranger"
alias ga="git add ."
alias gc="git commit -m"
alias docker_rm_all_c='docker container rm $(docker container ls -a -q)'
# tmux
alias t="tmux"
alias ta="tmux a"

if $(which nvim 2> /dev/null)
  then alias vim="vim" && echo "nvim is install"
fi

# export LANG=en_US.UTF-8
export LANG=zh_CN.UTF-8
