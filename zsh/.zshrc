# Always loaded by zsh
[[ -s "$HOME/.zpreload.sh" ]] && source "$HOME/.zpreload.sh" # load ohmyzsh config
[[ -s "$HOME/.config/.zsh/.index.sh" ]] && source "$HOME/.config/.zsh/.index.sh" # load custom config

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

loadVolta

# loadNvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"