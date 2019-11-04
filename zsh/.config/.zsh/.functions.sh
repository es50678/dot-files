debugObsidian(){
  while :
  do
    echo "Restarting..."
    gemstone restart obsidian
    docker attach gemstone-microservices_obsidian_1
  done
}

debugSapphire(){
  while :
  do
    echo "Restarting..."
    gemstone restart sapphire
    docker attach gemstone-microservices_sapphire_1
  done
}

loadNvm(){
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

loadVolta(){
  export VOLTA_HOME="$HOME/.volta"
  [ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

  export PATH="$VOLTA_HOME/bin:$PATH"
}

## Main prompt
build_prompt() {
 RETVAL=$?
 prompt_status
 prompt_virtualenv
 prompt_aws
 prompt_context
 prompt_dir
 prompt_bzr
 prompt_hg
 prompt_end
}

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m %{$reset_color%}'
    local user_symbol='$'
fi

PROMPT="╭─%{%f%b%k%}$(build_prompt)
╰─%B${user_symbol}%b "