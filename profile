# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# This sets the backspace key.  If it doesn't work, try "stty erase ^?"
#stty erase 
stty erase 

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Include machine-local configuration, if needed. For configuration I would not
# want to version in this git repository.
if [ -f "$HOME/.profile_local" ]; then
  . "$HOME/.profile_local"
fi
