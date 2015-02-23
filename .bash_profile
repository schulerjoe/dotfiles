# bash related
#
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ll='ls -al'
alias v='vim '

alias rmr='rm -Rf'

alias h="history"

# git related
#
alias gs='git status'
alias ga='git add .'
alias gc='git commit -a'
alias gp='git push origin master'
alias gd='git diff'

# brew related
#
echo export PATH='/usr/local/sbin:$PATH'

# tmux related
#
alias tmux='tmux -2'
alias tmuxls='tmux list-sessions'
alias tmuxa='tmux attach'

# svn related
#
alias svs="/usr/bin/svn status -u"
alias svu="/usr/bin/svn update"
alias svc="/usr/bin/svn commit"
