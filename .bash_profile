bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# virtualenvwrapper things
export WORKON_HOME=$HOME/environments
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

#homebrew tab completion
source `brew --repository`/Library/Contributions/brew_bash_completion.sh

alias ppython=`which ppython`

alias gad='git add -u'
alias gcom='git commit -m '
alias gph='git push'
alias gpl='git pull'
alias gstat='git status'
alias vit='vim ~/.todo.txt'
alias sshdo='ssh root@198.199.67.45'
