# ~/.bash_profile
#
# Author:   Joe Schuler <josefschuler at gmail dot com>
# Source:   https://github.com/schulerjoe/dotfiles
#
# Sections:
#           -> GENERAL
#           -> GIT
#           -> SVN
#           -> TMXU
#           -> BREW

#######################################################
# GENERAL
#######################################################
# source .bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# source .bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# show message when logging in
echo
echo ".bash_profile loaded..."
echo

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm*|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# create new files with user=rw,group=r,object=r
umask 022

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# handy ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# quicker navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias rmr='rm -Rf'

alias h="history"


#######################################################
# GIT
#######################################################
alias gs='git status'
alias ga='git add .'
alias gc='git commit -a'
alias gp='git push origin master'
alias gd='git diff'


#######################################################
# SVN
#######################################################
alias svs="/usr/bin/svn status -u"
alias svu="/usr/bin/svn update"
alias svc="/usr/bin/svn commit"

#######################################################
# TMUX
#######################################################
alias tmux='tmux -2'
alias tmuxls='tmux list-sessions'
alias tmuxa='tmux attach'

#######################################################
# Environmental Variables
#######################################################
export PATH=/usr/local/sbin:$PATH
export EDITOR=vim
