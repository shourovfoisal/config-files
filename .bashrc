# My Custom Configurations #

# Paths -----------------------------------------

# Java
JAVA_HOME=/home/shourov/Documents/softwares/java/openjdk/21
# JAVA_HOME=/home/shourov/Documents/softwares/java/oracle/21.0.3
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH

# Gradle
GRADLE_PATH=/home/shourov/Documents/softwares/gradle/gradle-8.13/bin
PATH=$PATH:$GRADLE_PATH
export PATH

# Variables -------------------------------------
export DOCKER_CONFIG="$HOME/.docker"

# Aliases ---------------------------------------
alias gadd='git add .'
alias swap='git switch -'
alias yd='yarn dev'
alias gpull='git pull'
alias gpush='git push'
alias dcd='docker compose down'
alias dcu='docker compose up -d'
alias com="$HOME/Documents/scripts/com.sh"
alias shortcuts="cat $HOME/Documents/scripts/shortcuts.txt"

alias vwiz="source $HOME/manage_venvs.sh"
alias cartup="$HOME/Documents/scripts/cartup.sh"
alias redis-dev="$HOME/Documents/scripts/redis-dev.sh"

alias df='sudo ufw disable'

# Functions -------------------------------------
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

function gbranch() {
  if [ -z "$1" ]; then
    git branch;
    return 1;
  else
    git checkout -b "$1";
  fi
}