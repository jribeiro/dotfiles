#!/usr/bin/env zsh
# cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
    # symlink the configuration files
    ln -nsf $PWD/.curlrc $HOME/.curlrc
    ln -nsf $PWD/.editorconfig $HOME/.editorconfig
    ln -nsf $PWD/.gitconfig $HOME/.gitconfig
    ln -nsf $PWD/.gitignore $HOME/.gitignore
    ln -nsf $PWD/.gvimrc $HOME/.gvimrc
    ln -nsf $PWD/.vimrc $HOME/.vimrc
    ln -nsf $PWD/.wgetrc $HOME/.wgetrc
    ln -nsf $PWD/.vim $HOME/.vim
    
    # install software used frequently
    source brew.sh

    # Install and configure oh-my-zsh
    source ./oh-my-zsh/config.sh

    # Install node and dependencies
    source npm.sh

    # Configure vscode
    source ./vscode/config.sh
    
    # Configure iterm
    source iterm2.sh

    source ./macos

    echo "Open iTerm2 to continue the setup"
}
doIt
unset doIt;

# Create custom folders
mkdir -p ~/code # general code
