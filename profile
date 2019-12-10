# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# This sets the backspace key.  If it doesn't work, try "stty erase ^?"
#stty erase 
stty erase 

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Default Environment Variables
export EDITOR="vim"
export BROWSER="firefox"

# Include machine-local configuration, if needed. For configuration I would not
# want to version in this git repository.
if [ -f "$HOME/.profile_local" ]; then
  . "$HOME/.profile_local"
fi
