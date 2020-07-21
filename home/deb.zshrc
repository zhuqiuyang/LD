DEFAULT_USER="$USER"

start_proxy() {
	export http_proxy=socks://127.0.0.1:1080
	export https_proxy=socks://127.0.0.1:1080
}
stop_proxy() {
	unset http_proxy
	unset https_proxy
}

alias la="ls -a"
alias ll="ls -l"
alias vim="nvim"
alias ga="git add ."
alias gc="git commit -m"
alias docker_rm_all_c='docker container rm $(docker container ls -a -q)'
