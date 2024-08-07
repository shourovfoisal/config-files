# The following code needs to be appended after all the codes in the .bashrc file.

# My Variables
export DOCKER_CONFIG="$HOME/.docker"

# My Aliases
alias gpp='git pull && git push'
alias gadd='git add .'
alias gsm='git switch main'
alias swap='git switch -'
alias yd='yarn dev'
alias gpull='git pull'
alias gpush='git push'

alias df='sudo ufw disable'

# My Functions
# Function that performs a commit
function gcm() {
  if [ -z "$1" ] && [ -z "$2" ]; then
    echo "No message given!";
    return 1;
  elif [ -n "$1" ] && [ -z "$2" ]; then
    git commit -m "$1";
    return 1;
  elif [ -z "$1" ] && [ -n "$2" ]; then
    echo "Invalid message format";
    return 1;
  else
    git commit -m "$1" -m "$2";
  fi
}

# Function that creates a new branch
function gbranch() {
  if [ -z "$1" ]; then
    git branch;
    return 1;
  else
    git checkout -b "$1";
  fi
}