#!/bin/sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install imagemagick --with-webp

brew install zopfli
brew install pigz

# Other tools
brew install git-extras
brew install direnv
brew install fd
brew install HTTPie
brew install nvm
brew install zsh-completions

# Cask Apps tools
brew cask install iterm2
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install sourcetree
brew cask install slack
brew cask install omnifocus
brew cask install daisydisk
brew cask install spotify
brew cask install omnifocus
brew cask install rectangle

# Remove outdated versions from the cellar.
brew cleanup