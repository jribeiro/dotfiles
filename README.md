# Joao's dotfiles

This collection of dotfiles is based on [Mathia's dotfiles](https://github.com/mathiasbynens/dotfiles) and extends them to use zsh with oh-my-zsh and all the plugins I frequently use, a collection of aliases, functions, vscode configuration and common software I use.

## Installation

### Dependencies

To clone this repo, you'll need `xcode-select`

```sh
xcode-select --install
```

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`. The bootstrapper script will pull in the latest version and symlink the required files.

```bash
git clone https://github.com/jribeiro/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Post Install

Remember to set your global git config.

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Your Name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="your.name@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
