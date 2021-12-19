# Create variable for custom bin
export CBIN="/Users/raenton/cbin"
# Add my own c (custom) bin to PATH
export PATH="$PATH:$CBIN"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
