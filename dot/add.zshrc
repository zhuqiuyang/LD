# -----------ZSHRC_APPEND_START----------------- 
#
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
alias gd="git diff"
alias gc="git commit -m"
alias gp="git push origin master"
alias docker_rm_all_c='docker container rm $(docker container ls -a -q)'

# tmux
alias t="tmux"
alias ta="tmux a"

# vim
export EDITOR=vim
export VISUAL=nvim

alias vi=vim
alias nano=vim

if [[ "$(which nvim 2> /dev/null)" ]]
 then
   alias vim="nvim"
fi


#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# Lang
export LANG=en_US.UTF-8
# export LANG=zh_CN.UTF-8

# go
export GOPATH=~/gopath

# add sbin make hx editor <SPC> f work ok!
PATH=$PATH:$HOME/.cargo/bin:/usr/sbin

## Function
# -----------------ZSHRC_APPEND_END---------------
