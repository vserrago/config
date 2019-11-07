# Start with shell-agnositic profile
if [ -f "$HOME/.profile"]; then
  . "$HOME/.profile"
fi

# Include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
#
# Include machine-local configuration, if needed. For configuration I would not
# want to version in this git repository.
if [ -f "$HOME/.bash_profile_local" ]; then
  . "$HOME/.bash_profile_local"
fi
