###############################################################################
##############################CUSTOM ALIASES###################################
###############################################################################

# general aliases
alias apt='aptitude'
alias cb='cd $OLDPWD'
alias cu='cd ..'
alias dat='date +%a\ %b\ %d,\ %I:%M\ %p'
alias extract='tar -xf'
alias sourcebash='source ~/.bashrc'
alias update='sudo aptitude update; sudo aptitude safe-upgrade'

# git aliases
alias gitaddall='git add .; git add -u' #git add -A not available on scs
alias gitpush='git push origin master'
alias gitpull='git pull origin master'

# rc shortcuts
alias aliases='vim ~/.bash_aliases'
alias awesomerc='vim ~/.config/awesome/rc.lua'
alias bashrc='vim ~/.bashrc'
alias dwmconfig='vim ~/dwm/config.h'
alias vimrc='vim ~/.vimrc'
alias xsession='vim ~/.xsession'

# Function to change the current working directory (cwd) across multiple shell
# windows. 
function cwd()
{
    if [ $# -eq 1 ] ; then
        cd $1
        export CWD="$PWD"
        #echo $PWD > ~/.cwd
    elif [ $# -eq 0 ] ; then
        cd $CWD
        #cd $(cat ~/.cwd)
    else
        echo "Error: Too many arguments. Did you accidentally add a space somewhere?" > /dev/stderr
    fi
}
