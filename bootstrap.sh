#!/bin/sh

# cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
    # symlink the configuration files
    ln -s ./.curlrc ~/.curlrc
    ln -s ./.editorconfig ~/.editorconfig
    ln -s ./.gitconfig ~/.gitconfig
    ln -s ./.gitignore ~/.gitignore
    ln -s ./.gvimrc ~/.gvimrc
    ln -s ./.vimrc ~/.vimrc
    ln -s ./.wgetrc ~/.wgetrc
    ln -s ./.vim ~/.vim
    
    # install software used frequently
    sh brew.sh

    # Install node and dependencies
    sh npm.sh

    # Configure vscode
    sh ./vscode/config.sh
    
    # Configure iterm
    sh iterm2.sh

    # Install and configure oh-my-zsh
    sh ./oh-my-zsh/config.sh
    
    source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;

# Create custom folders
mkdir -p code # general code
mkdir -p projects # Personal Projects
