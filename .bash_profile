bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

#put /usr/local/bin ahead of usr/bin for homebrew
export PATH="/usr/local/bin:${PATH}"

# virtualenvwrapper things
#export WORKON_HOME=$HOME/environments
#source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

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
alias sshastro='ssh dylan.koenig@192.168.2.15'
alias sob='source ~/.bash_profile'
alias vib='vim ~/.bash_profile'
alias sshd='ssh dylan@dev100.meraki.com'
alias viv='vim ~/.vimrc'
# Meraki ssh aliases
alias ssh100='ssh dylan@dev100.meraki.com'
alias ssh105='ssh dylan@dev105.meraki.com'
alias sshvm='ssh dylan@10.3.15.168'

export CLICOLOR=1
#LSCOLORS='no=38;5;244:rs=0:di=38;5;33:ln=38;5;33:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=38;5;64:*.tar=38;5;61:*.tgz=38;5;61:*.arj=38;5;61:*.taz=38;5;61:*.lzh=38;5;61:*.lzma=38;5;61:*.tlz=38;5;61:*.txz=38;5;61:*.zip=38;5;61:*.z=38;5;61:*.Z=38;5;61:*.dz=38;5;61:*.gz=38;5;61:*.lz=38;5;61:*.xz=38;5;61:*.bz2=38;5;61:*.bz=38;5;61:*.tbz=38;5;61:*.tbz2=38;5;61:*.tz=38;5;61:*.deb=38;5;61:*.rpm=38;5;61:*.jar=38;5;61:*.rar=38;5;61:*.ace=38;5;61:*.zoo=38;5;61:*.cpio=38;5;61:*.7z=38;5;61:*.rz=38;5;61:*.apk=38;5;61:*.jpg=38;5;136:*.JPG=38;5;136:*.jpeg=38;5;136:*.gif=38;5;136:*.bmp=38;5;136:*.pbm=38;5;136:*.pgm=38;5;136:*.ppm=38;5;136:*.tga=38;5;136:*.xbm=38;5;136:*.xpm=38;5;136:*.tif=38;5;136:*.tiff=38;5;136:*.png=38;5;136:*.svg=38;5;136:*.svgz=38;5;136:*.mng=38;5;136:*.pcx=38;5;136:*.dl=38;5;136:*.xcf=38;5;136:*.xwd=38;5;136:*.yuv=38;5;136:*.cgm=38;5;136:*.emf=38;5;136:*.eps=38;5;136:*.pdf=38;5;245:*.tex=38;5;245:*.rdf=38;5;245:*.owl=38;5;245:*.n3=38;5;245:*.tt=38;5;245:*.nt=38;5;245:*.log=38;5;240:*.bak=38;5;240:*.aux=38;5;240:*.bbl=38;5;240:*.blg=38;5;240:*.aac=38;5;166:*.au=38;5;166:*.flac=38;5;166:*.mid=38;5;166:*.midi=38;5;166:*.mka=38;5;166:*.mp3=38;5;166:*.mpc=38;5;166:*.ogg=38;5;166:*.ra=38;5;166:*.wav=38;5;166:*.axa=38;5;166:*.oga=38;5;166:*.spx=38;5;166:*.xspf=38;5;166:*.mov=38;5;166:*.mpg=38;5;166:*.mpeg=38;5;166:*.m2v=38;5;166:*.mkv=38;5;166:*.ogm=38;5;166:*.mp4=38;5;166:*.m4v=38;5;166:*.mp4v=38;5;166:*.vob=38;5;166:*.qt=38;5;166:*.nuv=38;5;166:*.wmv=38;5;166:*.asf=38;5;166:*.rm=38;5;166:*.rmvb=38;5;166:*.flc=38;5;166:*.avi=38;5;166:*.fli=38;5;166:*.flv=38;5;166:*.gl=38;5;166:*.axv=38;5;166:*.anx=38;5;166:*.ogv=38;5;166:*.ogx=38;5;166:';
#export LSCOLORS
