# ~/.bashrc
# The individual per-interactive-shell startup file

# From bash(1):
# When an interactive shell that is not a login shell is started, bash reads
# and executes commands from ~/.bashrc, if that file exists. This may be
# inhibited by using the --norc option. The --rcfile file option will force
# bash to read and execute commands from file instead of ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


### History ###

# Don't add to the history either duplicated commands, or those startin with a
# space. Erase duplicates from the history.
HISTCONTROL="ignoreboth:erasedups"
# Use a large history size.
HISTSIZE=20000
HISTFILESIZE=20000

# The timestamp format for history entries
HISTTIMEFORMAT="[%F @ %I:%M:%S%P] "

# Commands here are automatically excluded from history.
HISTIGNORE="ls:cd"

# Append to the history file; don't overwrite it for setting history length.
# See HISTSIZE and HISTFILESIZE in bash(1)
shopt -s histappend

# Save all lines of a multi-line command in the same entry
shopt -s cmdhist

# Write history to disk, and then immediately reload it. This allows history to
# be common to all open shells, and shareable between each other
function reload_history() {
  # Append history lines from this session to the history fil
  history -a
  # Clear the history list by deleting all of the entries
  history -c
  # Read the history file and append the contents to the history list
  history -r
}


### General Shell Options ###

# Update the values of LINES and COLUMNS after each command.
shopt -s checkwinsize

# If set, and readline is being used, bash will not attempt to search the PATH
# for possible completions when completion is attempted on an empty line.
shopt -s no_empty_cmd_completion

# Use "**" in pathname expansion, eg /foo/**/bar
shopt -s globstar
# Case-insensitive pathname expansion
shopt -s nocaseglob


### Shell Prompt ###
function _set_ps1() {
  # Capture the exit code before executing the reload_history function, which
  # has its own exit code.
  local exit_code="$?"
  reload_history

  # Standard ANSI Colour Codes
  local blue='\[\033[00;34m\]'
  local cyan='\[\033[00;36m\]'
  local green='\[\033[00;32m\]'
  local purple='\[\033[00;35m\]'
  local red='\[\033[00;31m\]'
  local white='\[\033[01;37m\]'
  local yellow='\[\033[00;33m\]'

  # light ansi colour codes
  local l_blue='\[\033[01;34m\]'
  local l_cyan='\[\033[01;36m\]'
  local l_gray='\[\033[00;37m\]'
  local l_green='\[\033[01;32m\]'
  local l_purple='\[\033[01;35m\]'
  local l_red='\[\033[01;31m\]'
  local l_yellow='\[\033[01;33m\]'

  # the "end of colour" code
  local end='\[\033[0m\]'

  local exit_code_string
  if [[ "${exit_code}" == "0" ]]; then
    exit_code_string="[?: ${green}${exit_code}${end}]"
  else
    exit_code_string="[?: ${red}${exit_code}${end}]"
  fi

  # Line 1 Format:
  # <Date>: [J: <Job Count>] [C/H: <Command #>/<History #>] [?: <exit_code>]
  local line_1="${l_gray}\d \T: [J: \j] [C/H: \#/\!]${end} ${exit_code_string}"

  # Line 2 Format:
  # <User>@<Host>:<Working Dir><Prompt Char (#/$)>
  local line_2="${green}\u${end}${l_gray}@${cyan}\h${l_gray}:${yellow}\w${end}\$"

  # Adding a space after the newline gives a space between the bash vi mode
  # string and the second line of the prompt.
  export PS1="${line_1}\n ${line_2} "
}

# Execute a command before printing the value of PS1. Allows for things like
# outputting the exit code of the last run command.
export PROMPT_COMMAND="_set_ps1"


### Bash Completion ###

# In /etc
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Completion in /usr/share
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


### Aliases ###

# RC Shortcuts
alias bashrc='vim ~/.bashrc'
alias inputrc='vim ~/.inputrc'
alias ssh-config='vim ~/.ssh/config'
alias vimrc='vim ~/.vimrc'
alias xsession='vim ~/.xsession'

# Quick Reloading
alias reload-bashrc='. ~/.bashrc'
alias reload-bash-profile='. ~/.profile'
alias reload-inputrc='bind -f ~/.inputrc'
alias reload-profile='. ~/.profile'

# Initialize environments
alias init-agent='eval "$(ssh-agent -s)"'
alias init-rbenv='eval "$(rbenv init -)"'

# History
alias histag='history | ag'
alias histgrep='history | grep'
alias histrg='history | rg'

# Aliases for ls
alias ll='ls -l'
alias lh='ls -lh'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

### Other Files ###

# Include machine-local configuration, if needed. For configuration I would not
# want to version in this git repository.
if [ -f "$HOME/.bashrc_local" ]; then
  . "$HOME/.bashrc_local"
fi
