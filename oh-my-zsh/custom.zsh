DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_THEME="powerlevel10k/powerlevel10k"

source $(dirname "$0")/.brew-paths.zsh
source $(dirname "$0")/.zsh-completions.zsh
source $(dirname "$0")/.exports
source $(dirname "$0")/.functions
source $(dirname "$0")/.aliases.zsh
source $(dirname "$0")/.nvm.zsh
source $(dirname "$0")/.perl.zsh

[ -f $HOME/.extra.zsh ] && source $HOME/.extra.zsh