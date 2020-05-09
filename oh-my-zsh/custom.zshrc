DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  common-aliases
  direnv
  docker 
  docker-compose
  fd 
  git 
  gitfast 
  git-extras 
  git-auto-fetch 
  history-substring-search 
  httpie 
  jira 
  zsh-autosuggestions
)

source $(dirname "$0")/.zsh-completions.zsh
source $(dirname "$0")/.exports
source $(dirname "$0")/.functions
source $(dirname "$0")/.aliases.zsh
source $(dirname "$0")/.auto-load-nvm.zsh