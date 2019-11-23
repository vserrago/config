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

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL="erasedups;ignoreboth"
# set history size by lines
HISTSIZE=20000



### General Shell Options ###

# append to the history file, don't overwrite it
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
shopt -s histappend

# Save all lines of a multi-line command in the same entry
shopt -s cmdhist

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
function set_ps1() {
  # Standard ANSI Colour Codes
  local blue='\[\033[00;34m\]'
  local cyan='\[\033[00;36m\]'
  local green='\[\033[00;32m\]'
  local purple='\[\033[00;35m\]'
  local red='\[\033[00;31m\]'
  local white='\[\033[01;37m\]'
  local yellow='\[\033[00;33m\]'

  # Light ANSI Colour Codes
  local l_blue='\[\033[01;34m\]'
  local l_cyan='\[\033[01;36m\]'
  local l_gray='\[\033[00;37m\]'
  local l_green='\[\033[01;32m\]'
  local l_purple='\[\033[01;35m\]'
  local l_red='\[\033[01;31m\]'
  local l_yellow='\[\033[01;33m\]'

  # The "end of colour" code
  local end='\[\033[0m\]'

  # Line 1 Format:
  # <Date>: [J: <Job Count>] [C/H: <Command #>/<History #>]
  local line_1="${l_gray}\d \T: [J: \j] [C/H: \#/\!]${end}"

  # Line 2 Format:
  # <User>@<Host>:<Working Dir><Prompt Char (#/$)>
  local line_2="${green}\u${end}${l_gray}@${cyan}\h${l_gray}:${yellow}\w${end}\$"

  # Adding a space after the newline gives a space between the bash vi mode
  # string and the second line of the prompt.
  echo -n "${line_1}\n ${line_2}"
}

PS1="$(set_ps1)"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

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
