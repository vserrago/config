# ~/.bashrc
# The individual per-interactive-shell startup file

# From bash(1):
# When an interactive shell that is not a login shell is started, bash reads
# and executes commands from ~/.bashrc, if that file exists. This may be
# inhibited by using the --norc option. The --rcfile file option will force
# bash to read and execute commands from file instead of ~/.bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


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

# Shell Prompts
PS1='\u@\h:\W\$ '

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
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

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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
