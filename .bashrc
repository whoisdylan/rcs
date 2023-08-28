# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

get_virtualenv_prompt() {
  if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
    if [ "$VIRTUAL_ENV" != "" ]; then
      echo "(`basename \"$VIRTUAL_ENV\"`) "
    fi
  fi
}

export PS1
if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PROMPT_COMMAND='GIT_PS1_SHOWCOLORHINTS=true GIT_PS1_SHOWDIRTYSTATE=true __git_ps1 "${debian_chroot:+($debian_chroot)}\[\033[0;35m\]$(get_virtualenv_prompt)\[\e[0m\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" "\\\$ "'
else
    # PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    PROMPT_COMMAND='GIT_PS1_SHOWDIRTYSTATE=true __git_ps1 "${debian_chroot:+($debian_chroot)}$(get_virtualenv_prompt)\u@\h:\w" "\\\$ "'
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### end of default .bashrc
export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH
export EDITOR=vim

eval "$(scmpuff init -s)"

# solarized dircolors
eval `dircolors ~/.dir_colors/dircolors`

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias viv='vim ~/.vimrc'
alias vib='vim ~/.bashrc'
alias sob='source ~/.bashrc'
alias vit='vim ~/.todo.txt'
alias vij='vim -O ~/Documents/journal/`date +%Y-%m`{,-overview}.txt'
alias sshdo='ssh root@198.199.67.45'
alias gc='git commit'
alias gcm='git commit --amend'
alias gg='git grep'
alias gb='git branch'
alias gco='git checkout'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias vpn='openvpn3 session-start --config ~/Downloads/profile-960.ovpn'
alias cdc='cd ~/gits/shasta'

# brt aliases
alias sshch='ssh dylan@cornhub'
# ssh xavier
alias sshx='ssh -A dylan@10.10.15.74'
# ssh funzone (desktop)
alias sshf='ssh -A dylan@10.10.14.6'
alias tf='terraform'
alias tg='terragrunt'
alias gpm='git push origin HEAD:refs/for/master'
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda/bin:$PATH
export PATH=/home/dylan/scripts:$PATH
export PYTHONPATH=/home/dylan/scripts:$PYTHONPATH
export MI_HOME=~/Programs/Aptina_Imaging
# export AWS_PROFILE=shasta_dev_engineer-831342142039
# export AWS_PROFILE=shasta_prod_engineer-759721480024
# alias go='go1.18.2'
export DHOME=/data2/dylan.koenig
alias svim='sudo vim'
alias gsp='go tool pprof -http 10.10.15.30:8333'
alias sc='screen -r code'
alias sb='screen -r build'
alias sr='screen -r'
alias ss='screen -S'
alias asd='aws sso login --profile brt_aws_shasta_dev'
alias asp='aws sso login --profile brt_aws_shasta_prod'
alias br='bazel run -c opt'
alias bb='bazel build -c opt'
alias bt='bazel test -c opt'
alias svs='cdc; br //brt/vpu/simulations/local:simulate_vpu_services'
alias sws='cdc; br //brt/vpu/simulations/local:simulate_wacker'
alias swc='cdc; br //brt/vpu/simulations/local:simulate_wacker_client'
alias ssvs='cdc; screen -dmS svs bazel run -c opt //brt/vpu/simulations/local:simulate_vpu_services'
alias ssws='cdc; screen -dmS sws bazel run -c opt //brt/vpu/simulations/local:simulate_wacker'
alias sswc='cdc; screen -dmS swc bazel run -c opt //brt/vpu/simulations/local:simulate_wacker_client'
alias sall='ssvs && ssws && sswc'
# provide a label in quotes, eg: bbcfv "my_special_image_1_2023-01-01
alias bbcfv='bb --config=aarch64 //brt/vpu/release:complete_flash_vpu --stamp --embed_label'
# alias svs2='cdc; bazel run //brt/vpu/simulations/local:simulate_db15_vpu0_0a_gen4_vpu_services'
# alias sws2='cdc; bazel run //brt/vpu/simulations/local:simulate_db15_vpu0_0a_gen4_wacker'
# alias swc2='cdc; bazel run //brt/vpu/simulations/local:simulate_db15_vpu0_0a_gen4_wacker_client'

complete -C /usr/bin/terraform terraform
